#!/bin/bash

last_state="none"

while true; do
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    status=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$capacity" -ge 90 ] && [ "$status" == "Charging" ]; then
        if [ "$last_state" != "performance" ]; then
            dunstify "Batt!!" "Full Charge: $capacity%" -h string:bgcolor:#00FF00 -h string:fgcolor:#FFFFFF
            espeak "Battery high, switching to performance mode" &
            performance
            
            for i in {50..100..5}; do brightnessctl set $i%; sleep 0.1; done
            brightnessctl -d dell::kbd_backlight set 100%

            dunstify "Batt!!" "Done" -h string:bgcolor:#00FF00 -h string:fgcolor:#FFFFFF
            espeak "Done" &
            last_state="performance"
        fi

    elif [ "$capacity" -le 20 ] && [ "$status" == "Discharging" ]; then
        if [ "$last_state" != "powersave" ]; then
            dunstify "Batt!!" "About To Die: $capacity%" -h string:bgcolor:#FF0000 -h string:fgcolor:#FFFFFF
            espeak "Battery low, switching to power mode" &
            powermode
            
            for i in {100..50..-5}; do brightnessctl set $i%; sleep 0.1; done
            brightnessctl -d dell::kbd_backlight set 0%

            dunstify "Batt!!" "Done" -h string:bgcolor:#FF0000 -h string:fgcolor:#FFFFFF
            espeak "Done" &
            last_state="powersave"
        fi
    
    else
        last_state="none"
    fi

    sleep 30
done
