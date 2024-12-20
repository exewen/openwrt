#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "固件编译"
echo -e "$(nproc) thread build."
make -j$(($(nproc) + 1)) V=s

echo "结束"
echo "sz ~/openwrt/bin/targets/rockchip/armv8/openwrt-rockchip-armv8-friendlyarm_nanopi-r2s-ext4-sysupgrade.img.gz"