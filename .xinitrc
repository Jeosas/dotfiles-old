#!/bin/bash

# load Xresources
xrdb -merge ~/.Xresources

# Load screen layout if any
if [ -f ~/.screenlayout/layout.sh ]; then
  ~/.screenlayout/layout.sh
fi

# Start i3wm
exec i3

