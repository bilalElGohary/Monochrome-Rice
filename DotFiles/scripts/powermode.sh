#!/bin/bash

echo "PowerMode Started."

echo "blur disable............................."
hyprctl keyword decoration:blur:enabled false

echo "shadow disable..........................."
hyprctl keyword decoration:shadow:enabled false

echo "disable animation........................"
hyprctl keyword animations:enabled 0

echo "opacity disable.........................."
hyprctl keyword decoration:active_opacity 1.0
hyprctl keyword decoration:inactive_opacity 0.8

echo "cpu powermode............................"
sudo cpupower frequency-set -g powersave

notify-send "PowerMode." "just for acouple of secounds the powermode enabled"
