#!/bin/bash

echo "Performance Started."

echo "blur enable............................."
hyprctl keyword decoration:blur:enabled true

echo "shadow enable..........................."
hyprctl keyword decoration:shadow:enabled true

echo "disable animation........................"
hyprctl keyword animations:enabled 1

echo "opacity enable.........................."
hyprctl keyword decoration:active_opacity 0.95
hyprctl keyword decoration:inactive_opacity 0.65

echo "cpu performance........................."
sudo cpupower frequency-set -g performance

notify-send "Performance Mode." "just for acouple of secounds the performance mode enabled"
