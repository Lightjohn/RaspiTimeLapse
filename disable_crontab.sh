#!/usr/bin/env bash

# Disabling photo every X mins
croncmd="/home/pi/timelapse/take_photo.sh"

( crontab -l | grep -v -F "$croncmd" ) | crontab -

# Disabling merge images
croncmd="/home/pi/timelapse/merge_day.sh"

( crontab -l | grep -v -F "$croncmd" ) | crontab -
