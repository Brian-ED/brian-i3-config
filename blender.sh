#!/bin/sh
#b=$(xdotool getactivewindow)
#v=$(xdotool getwindowname $b)

if [ "$1" = "up" ]; then
  xdotool mousemove_relative 0 "-$2"
fi
if [ "$1" = "down" ]; then
  xdotool mousemove_relative 0 $2
fi
if [ "$1" = "left" ]; then
  xdotool mousemove_relative -- "-$2" 0
fi
if [ "$1" = "right" ]; then
  xdotool mousemove_relative $2 0
fi
