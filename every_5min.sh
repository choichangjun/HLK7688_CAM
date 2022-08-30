#!/bin/bash

kill `ps | grep 'ffmpeg -f v4l2 -s 320x240' | awk '{print $1}'`
sleep 2
/usr/bin/ffmpeg -f v4l2 -s 320x240 -r 30 -i /dev/video0 http://localhost:8888/camera.ffm
