#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small.git' >>feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
git clone https://github.com/KFERMercer/luci-app-tcpdump.git ./package/luci-app-tcpdump
git clone https://github.com/swxk521/luci-app-eqos.git ./package/luci-app-eqos
git clone https://github.com/nickilchen/luci-app-socat.git ./package/luci-app-socat
git clone https://github.com/iwrt/luci-app-ikoolproxy.git ./package/luci-app-ikoolproxy
git clone https://github.com/izilzty/luci-app-chinadns-ng.git ./package/luci-app-chinadns
