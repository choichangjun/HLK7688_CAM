#!/bin/sh
opkg update
opkg install ffmpeg ffserver usbutils kmod-usb2 kmod-video-uvc  python3-pyserial openssh-sftp-server openssh-keygen sshpass
mkdir /root/usbcam

sshpass -p "123" scp changjun@192.168.1.15:/home/changjun/HLK7688A/ffmpeg.sh /root/usbcam
sshpass -p "123" scp changjun@192.168.1.15:/home/changjun/HLK7688A/ffserver.conf /root/usbcam
sshpass -p "123" scp changjun@192.168.1.15:/home/changjun/HLK7688A/ffserver /etc/init.d/ffserver
sshpass -p "123" scp changjun@192.168.1.15:/home/changjun/HLK7688A/ffmpeg_sh /etc/init.d/ffmpeg_sh
chmod +x /etc/init.d/ffmpeg_sh /etc/init.d/ffserver
chmod +x /root/usbcam/ffmpeg.sh /root/usbcam/ffserver.conf

/etc/init.d/ffserver enable
/etc/init.d/ffmpeg_sh enable
/etc/init.d/ffserver start
/etc/init.d/ffmpeg_sh start
