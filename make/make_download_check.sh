#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit

echo "下载DL库,验证完整性"
find dl -size -1024c -exec ls -l {} \;

echo "下载DL库,删除不完整文件"
find dl -size -1024c -exec rm -f {} \;
