#!/bin/bash

zscroll -l 40 \
        --delay 0.3 \
        --scroll-padding "      " \
        --match-command "`dirname $0`/get_music.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "`dirname $0`/get_music.sh" &

wait
