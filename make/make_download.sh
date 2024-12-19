#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "下载DL库"
make -j8 download
