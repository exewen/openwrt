#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

if ! grep -Fxq "# openclash" ./feeds.conf.default; then
  echo "新增feeds软件源"
  echo "# openclash" >> ./feeds.conf.default
  echo "src-git Openclash https://github.com/vernesong/OpenClash" >> ./feeds.conf.default
else
  echo "已存在feeds软件源"
fi
