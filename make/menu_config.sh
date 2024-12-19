#!/bin/bash

echo "进入openwrt项目"
cd ~/openwrt/ || exit


echo "机型配置"
echo "Target System (x86) -> Rockchip"
echo "Target Profile (Generic x86/64) -> FreindlyARM NanoPi R2S"
echo "镜像分区配置 不动"
echo "Target Images -> (16) Kernel partition size (in MB) -> 32"
echo "Target Images -> squashfs (NEW) -> 取消"
echo "Target Images -> GZip images (NEW) -> 取消"
echo "Target Images -> (160) Root filesystem partition size (in MiB) -> 1024"
echo "插件配置"
echo "LuCI -> Applications"
echo "默认"
echo "luci-app-accesscontrol --访问控制应用"
echo "luci-app-adguardhome --ad 新增"
echo "luci-app-arpbind --IP地址和MAC的绑定"
echo "luci-app-autoreboot --定时重启 "
echo "luci-app-ddns --公网IP DDNS"
echo "luci-app-filetransfer --上传并安装IPK软件包 --移除"
echo "luci-app-firewall --防火墙规则"
echo "luci-app-nlbwmon --宽带统计"
echo "luci-app-netdata --软路由监控 --有就添加"
echo "luci-app-openclash --clash --添加"
echo "luci-app-turboacc --Turbo ACC 网络加速工具"
echo "luci-app-upnp --（通用即插即用）配置工具 智能设备"
echo "luci-app-vlmcsd --KMS --移除"
echo "luci-app-vsftpd --FTP 服务器的配置和管理界面 --移除"
echo "luci-app-wireguard --wireguard --有就添加(LuCI -> Protocols luci-proto-wireguard)"
echo "luci-app-wol --网络唤醒"

echo "图像配置"
make menuconfig
