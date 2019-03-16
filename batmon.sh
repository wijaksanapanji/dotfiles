#!/bin/sh
while true;
do
    isCharging=`cat /sys/class/power_supply/ACAD/online`
    batteryLevel=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    if [ $batteryLevel -le 15 ] && [ $isCharging -eq 0 ]
    then
        notify-send -i ~/.config/dunst/icons/battery.png -u critical "Battery low" "Battery level is ${batteryLevel}%"
        paplay /home/docky/.sounds/blop.wav
    fi
    sleep 180
done
