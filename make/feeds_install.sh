#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "feeds软件源-安装"
./scripts/feeds install -a