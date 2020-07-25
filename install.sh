#!/bin/bash

sudo su
rm -rf ~/MonVIP
mkdir ~/MonVIP
cd .. && cp -r hgiroll/* ~/MonVIP
rm -rf hgiroll
cd ~/MonVIP/server
apt install proot -y
apt install nodejs -y
npm install -no-audit; npm install -g pm2 -no-audit && cd .. && rm -rf install.sh
python run.py
cd ~/
ls
