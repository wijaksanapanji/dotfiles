#!/bin/sh
jam=`date +"%H"`
if [ $jam -le 12 ]
then
    notify-send -i ~/.config/dunst/icons/sunset.png -t 10000 "Holla~" "Good morning docky"
    paplay /home/docky/.sounds/blop.wav
elif [ $jam -ge 12 ] && [ $jam -le 18 ]
then
    notify-send -i ~/.config/dunst/icons/sun.png -t 10000 "Holla~" "Good afternoon docky"
    paplay /home/docky/.sounds/blop.wav
elif [ $jam -ge 18 ]
then
    notify-send -i ~/.config/dunst/icons/moon.png -t 10000 "Holla~" "Good evening docky"
    paplay /home/docky/.sounds/blop.wav
fi



