#!/usr/bin/env bash
# Note this script is expected to run at midnight and it will try to merge all
# images from previous day
DAY_NOW=$(date +"%Y-%m-%d")
LOCAL_PATH="$HOME/timelapse"
/usr/bin/nice -n 19 /usr/bin/ionice -c 3 /usr/bin/ffmpeg -hide_banner -loglevel warning -framerate 10 -pattern_type glob -i "$LOCAL_PATH/images/$DAY_NOW/*.jpg" -c:v libx264 "$LOCAL_PATH/images/$DAY_NOW.mp4" >> ~/ffmpeg.log
