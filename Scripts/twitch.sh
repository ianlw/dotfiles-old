#!/bin/sh

case $1 in
    # Live stream of Melissalammmusic
    "melissa")
         streamlink --twitch-disable-ads --title "{author}" --player "mpv --script-opts=osc-layout=slimbox" https://www.twitch.tv/melissalammmusic 360p
        ;;
    # Live stream of Jasminexu007
    "jasmine")
         streamlink --twitch-disable-ads --title "{author}" --player "mpv --script-opts=osc-layout=slimbox" https://www.twitch.tv/jasminexu007 360p
        ;;
    # Live stream of Bashbunni
    "bash")
         streamlink --twitch-disable-ads --title "{author}" --player "mpv --script-opts=osc-layout=slimbox" https://www.twitch.tv/bashbunni 360p
        ;;
esac
