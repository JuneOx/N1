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
git clone https://github.com/tty228/luci-app-serverchan.git package/lean/
git clone https://github.com/tuanqing/install-program package/install-program
git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/luci-app-koolproxyR
sed -i 's/,arm/,aarch64/' package/luci-app-koolproxyR/Makefile
