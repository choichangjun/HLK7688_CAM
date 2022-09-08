# HLK7688_CAM

![image](https://user-images.githubusercontent.com/30309434/189016286-eba97ad1-815e-48d3-989e-e295a9d89cab.png)


## 1. 업데이트
    uci set network.lan.proto=dhcp
    /etc/init.d/network restart
    opkg update
    opkg install git-http

## 2. 레포지토리 복제
    cd
    git clone https://github.com/choichangjun/HLK7688_CAM.git

## 3. 네트워크 및 방화벽 설정 
    sh 1_network_setting.sh
## 4. 패키지설치 및 서비스 등록 
    sh 2_install_package_mv_Files_Service_enable.sh
## 5. 고정 IP 설정 
    sh 3_Setting_static_IP.sh
    
    
## 6. 파일 설명
    ffserver.conf - ffserver 의 설정 값을 입력해 둔 파일. Framerate, Bitrate, Buffer Size등 을 설정. 
    ffserver  - /etc/init.d/ffserver 에 위치하며, init 시에 /root/usbcam/ffserver.conf 를 한번 실행 
    ffmpeg_sh - /etc/init.d/ffmpeg_sh 에 위치하며, init 시에 /root/usbcam/ffmpeg.sh 를 한번 실행
    ffmpeg.sh - ps 에 "/usr/bin/ffmpeg -f v4l2 -s 320x240 -r 30 -i /dev/video0 http://localhost:8888/camera.ffm" 프로세스가 꺼져있다면, 재시작 시킴. 재시작시간 2초
    
## 7. 카메라 종류에 따른 Framerate 설정 
    한화열영상카메라 - /usr/bin/ffmpeg -f v4l2 -s 320x240 -r 4 -i /dev/video0 http://localhost:8888/camera.ffm
    일반 UVC 카메라  - /usr/bin/ffmpeg -f v4l2 -s 320x240 -r 30 -i /dev/video0 http://localhost:8888/camera.ffm
    옵션 설명 - video for linux format 옵션, size 320x240, frame Rate 30 fps, input /dev/video0, output localhost
  

  
  


