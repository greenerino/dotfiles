#!/usr/bin/env bash

num=50
while read LINE; do
    num=$(echo "$LINE+$num" | bc -l)
    echo "$num" > /sys/class/backlight/intel_backlight/brightness
done < /sys/class/backlight/intel_backlight/brightness
