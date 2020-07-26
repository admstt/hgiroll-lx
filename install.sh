#!/bin/bash

rm -rf ~/MonVIP
mkdir ~/MonVIP
cd .. && cp -r hgiroll-lx/* ~/MonVIP
rm -rf hgiroll-lx
cd ~/MonVIP/server
apt install nodejs -y
npm install -no-audit; npm install -g pm2 -no-audit && cd .. && rm -rf install.sh
python run.py
cd ~/
ls
