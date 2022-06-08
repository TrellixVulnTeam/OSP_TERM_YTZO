#!/usr/bin/env bash

read -p "apt-get update를 위한 사용자 패스워드를 입력해주세요 : " PW


#크롬 버전 확인

echo "$PW" | sudo -kS apt-get update
echo "$PW" | sudo -kS apt install software-properties-common
echo "$PW" | sudo -kS apt install python3.9
python3 --version
echo "$PW" | sudo pip install -r requirements.txt

chmod 700 geckodriver

echo "$PW" | sudo mv geckodriver /usr/local/bin/

chmod 700 runbrowser.sh

gnome-terminal -e ./runbrowser.sh
https://www.youtube.com/watch?v=upRbKS-eFlM