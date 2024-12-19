#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "feeds软件源-更新(./feeds)"
./scripts/feeds update -a