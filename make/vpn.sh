#!/bin/bash

function proxy_on(){
    export all_proxy=$http_proxy_url
    export http_proxy=$http_proxy_url
    export https_proxy=$http_proxy_url
    echo -e "已开启代理"
}

function proxy_off(){
    unset all_proxy
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}

function proxy_test(){
    curl https://www.google.com
}

function proxy_refresh(){
    source ~/.bashrc
}

function proxy_config(){
    env | grep proxy
}

echo "替换 http_proxy_url"
new_http_proxy_url=http://192.168.1.67:7897
#new_http_proxy_url=http://10.0.2.12:7897
sed -i 's|export http_proxy_url=http://[^ ]*|export http_proxy_url='${new_http_proxy_url}'|g' ~/.bashrc
source ~/.bashrc

echo ${http_proxy_url}
echo "proxy_on"
echo "proxy_off"
echo "proxy_test"
echo "proxy_refresh"
echo "proxy_config"