#!/bin/bash

cornerSpace=200
lowerCorner="$((1919-$cornerSpace))"
# 1920 screen width
while true
do
    #get mouse position
    mdata=`xdotool getmouselocation`

    #extract x/y coordinates
    mx=`echo "$mdata"|cut -f1 -d' '|cut -f2 -d:`
    my=`echo "$mdata"|cut -f2 -d' '|cut -f2 -d:`

    #check for position and if at either left or right edge, move the mouse
    if [ $my -gt $cornerSpace ] && [ $my -lt $lowerCorner ]; then
        if [ $mx -gt 1910 ]; then
            xdotool mousemove 15 $my
            _=`i3-msg workspace next`
        elif [ $mx -lt 10 ]; then
            xdotool mousemove 1905 $my
            _=`i3-msg workspace prev`
        fi
    fi
    sleep 0.05
done
