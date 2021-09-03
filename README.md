# Timelapse for raspberry

You have a raspberry pi and raspi-cam, here some scripts to create timelapse.

Scripts are simple so should be easy to change / upgrade to meet your needs.

## Goal

Take a image every X minutes and at the of the day merge images in a mp4 video.

## First

`chmod +x *.sh`

`sudo apt-get install ffmpeg`

## Crontab

```
./enable_crontab.sh
./disable_crontab.sh
```

After that images will be taken every X min according to the value in `enable_crontab.sh`


## Note

Default output path is: `~/timelapse/images`
