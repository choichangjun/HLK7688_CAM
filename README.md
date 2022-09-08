# HLK7688_CAM

## 업데이트
    uci set network.lan.proto=dhcp
    /etc/init.d/network restart
    opkg update
    opkg install git-http

## 레포지토리 복제
    cd
    git clone https://github.com/choichangjun/HLK7688_CAM.git

## 1. 네트워크 및 방화벽 설정 
    sh 1_network_setting.sh
## 2. 패키지설치 및 서비스 등록 
    sh 2_install_package_mv_Files_Service_enable.sh
## 3. 고정 IP 설정 
    sh 3_Setting_static_IP.sh
    
  

  
  


