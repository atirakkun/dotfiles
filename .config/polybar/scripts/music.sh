#!/bin/sh
    zscroll -d 0.4 -l 15 \
    --update-check true "playerctl -p org.gnome.Music metadata title" &

    wait

