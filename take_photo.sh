#!/usr/bin/env bash
NOW=$(date +"%Y-%m-%d_%H-%M-%S")
DAY_NOW=$(date +"%Y-%m-%d")
IMAGE_NAME="image_$NOW.jpg"
LOCAL_PATH="$HOME/timelapse"
echo "$IMAGE_NAME"
mkdir -p "$LOCAL_PATH/images/$DAY_NOW"
WIDTH=2592
HEIGHT=1944
raspistill -q 90 -w $WIDTH -h $HEIGHT  -o "$LOCAL_PATH/images/$DAY_NOW/$IMAGE_NAME"
