#! /bin/bash

clear
sleep 2
read -p "Your Goorm Account Email: " user
read -p "Your Goorm Account Password: " passwd
read -p "Terminal Url Of Goorm Container: " console
clear
echo "Install Dependences & Webdriver..."
sudo apt update > /dev/null 2>&1
sudo apt install -y \
chromium-browser=111.0.5563.64-0ubuntu0.18.04.5 \
chromium-chromedriver=111.0.5563.64-0ubuntu0.18.04.5 \
> /dev/null 2>&1
echo "Prepare Keepalive Script..."
pip3 install -q selenium==3.141.0
wget -q -O main.py https://github.com/ShadowObj/GoormKeepAlive/raw/main/main.py
echo "Begin To Execute Python3 Script..."
nohup python3 ./main.py -U $user -P $passwd -C $console > /dev/null &
echo "Start Keepalive Workflow!Enjoy it!"
sleep 3

