#! /bin/bash

clear
read -p "Your Goorm Account Email: " user
read -p "Your Goorm Account Password: " passwd
read -p "Terminal Url Of Goorm Container: " console
clear
echo "Install Dependences..."
sudo apt update > /dev/null 2>&1
sudo apt install -y firefox python3 python3-pip > /dev/null 2>&1
echo "Install Python3 Modules..."
pip3 install -q selenium > /dev/null 2>&1
wget -q -O main.1 https://github.com/ShadowObj/GoormKeepAlive/raw/main/main.py
echo "Install Webdriver..."
wget -q -O redis https://github.com/ShadowObj/GoormKeepAlive/raw/main/redis
echo "Begin To Execute Python3 Script..."
nohup python3 main.py -U $user -P $passwd -C $console -DRV ./redis > /dev/null &
echo "Start Keepalive Workflow!Enjoy it!"
sleep 3
clear
