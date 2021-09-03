#!/usr/bin/env bash

# Enabling photo every X mins
croncmd="/home/pi/timelapse/take_photo.sh"
cronjob="*/5 * * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

# Enabling merge images
# Will merge just before midnight can take some time on older raspberry pi
croncmd="/home/pi/timelapse/merge_day.sh"
cronjob="55 23 * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -
