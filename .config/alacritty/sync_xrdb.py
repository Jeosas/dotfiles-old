#!/bin/env python

import os
from ruamel.yaml import YAML
import subprocess

FILE = f"{os.getenv('HOME')}/.config/alacritty/alacritty.yml"

def get_color(color: str) -> str:
    return subprocess.run(
        f'xrdb -query | grep "{color}\\b" | cut -f 2', 
        shell=True, 
        stdout=subprocess.PIPE
    ).stdout.decode().strip('\n').replace('#', '0x')

yaml = YAML()

with open(FILE, 'r') as file:
    setup = yaml.load(file)

idx = 0
for type in ['normal', 'bright']:
    for color in ['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white']:
        setup["colors"][type][color] = get_color(f"color{idx}")
        idx += 1
setup["colors"]["primary"]["background"] = get_color("background")
setup["colors"]["primary"]["foreground"] = get_color("foreground")

with open(FILE, 'w') as file:
    yaml.dump(setup, file)

print("All done")
