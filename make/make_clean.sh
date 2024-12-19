#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "固件编译清理"
echo "清理固件"
rm -rf ~/openwrt/bin/targets