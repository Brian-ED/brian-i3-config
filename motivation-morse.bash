#!/bin/bash
while :
do
  ~/morselight/morselight sysfs/leds/input3::capslock 0.25 "A A A"
  shuf -n 1 ~/.config/i3/quotes.txt | xargs -I {} ~/morselight/morselight sysfs/leds/input3::capslock 0.1 {}
	sleep 600
done
