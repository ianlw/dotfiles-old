#!/bin/sh

var=($(cat /proc/$(xdotool getwindowpid $(xdotool getwindowfocus))/comm))
echo ${var}
if [[ $var = "window 1727 has no pid associated with it." ]]; then
    echo '-'
fi

