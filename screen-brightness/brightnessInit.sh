#!/usr/bin/env bash

chgrp video /sys/class/backlight/intel_backlight/brightness
chmod 664 /sys/class/backlight/intel_backlight/brightness

echo "0" > /sys/class/backlight/intel_backlight/brightness
echo "101" > /sys/class/backlight/intel_backlight/brightness
