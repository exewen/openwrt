#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "图像配置"
make menuconfig
