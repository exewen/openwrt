#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "固件编译"
echo -e "$(nproc) thread build."
make -j$(($(nproc) + 1)) V=s
