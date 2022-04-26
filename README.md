# Dotfiles

> This is an in progress i3 "DE" creation. Use at your own risk ;)

Here are the dotfiles I use across my compulters. They are managed using [YADM](https://yadm.io).

## Install

- Install [YADM](https://yadm.io/docs/install)
- Clone this repository: `yadm clone https://github.com/Jeosas/dotfiles.git`

You're good to go !

## Features
- vscode's dark plus theme across the whole setup
- i3-gaps setup
- i3lock
- polybar
- rofi menus: apps and power menu
- dunst notifications

## KeyMapping

> This keymap is AZERTY optimized

### Session

|  Shortcut  					|  Action  																			|
|:--------------------|:----------------------------------------------|
| `Super + Shift + d` | lock the session (i3lock) 										|
| `Super + Shift + q` | open the power menu (shutdown/restart/logout) |

### i3
#### Navigation and organisation

|  Shortcut  								|  Action  													|
|:--------------------------|:----------------------------------|
| `Super + [←↓↑→]`          | navigate windows        					|
| `Super + [hjkl]`          | navigate windows (vimlike) 				|
| `Super + Shift + [←↓↑→]`  | move focused window 							|
| `Super + Shift + [hjkl]`  | move focused window (vimlike) 		|
| `Super + [0-9]`           | switch to workspace 							|
| `Super + Shift + [0-9]`   | move focused window to workspace  |
| `Super + mouse`           | move floating window              |
| `Super + Shift + a`       | ~kill~ close the focused window 	|


### Window manipulations

|  Shortcut  							|  Action  																	|
|:------------------------|:------------------------------------------|
| `Super + f` 						| toggle fullscreen on focused window 			|
| `Super + space` 				| toggle floating/tiling on focused window 	|
| `Super + r` 						| resize mode 															|
| (resize mode) `[←↓↑→]` 	| resize focused window 										|
| (resize mode) `[hjkl]` 	| resize focused window (vimlike)						|


#### Tiling manipulation (_soon to be replaced by an auto tiler script_)

|  Shortcut  	|  Action  												|
|:------------|:--------------------------------|
| `Super + s` | split in horizontal orientation |
| `Super + v` | split in vertical orientation 	|


### Apps

|  Shortcut  								|  Action 					|
|:--------------------------|:------------------|
| `Super + d` 							| open the app menu |
| `Super + Return` 					| open the terminal |
| `Super + Shift + Return` 	| open firefox 			|


### Debugging

|  Shortcut  |  Action  												|
|:-----------|:---------------------------------|
| `Super + Shift + c` | reload i3 config				|
| `Super + Shift + r` | restart i3 							|
| `Super + Shift + e` | exit i3 (force logout) 	|
