#!/bin/sh
sudo modprobe bcm2835-v4l2&
nohup /usr/local/bin/mjpg_streamer -i "/usr/local/lib/input_uvc.so -y" -o "/usr/local/lib/output_http.so -w /usr/local/www" &
python3 Web.py