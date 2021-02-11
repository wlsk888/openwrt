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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-vssr package/diy/luci-app-vssr
#svn co https://github.com/garypang13/openwrt-packages/trunk/shadowsocksr-libev package/diy/shadowsocksr-libev
#rm -rf feeds/kenzo/luci-app-vssr
#rm -rf feeds/small/shadowsocksr-libev
#rm -rf package/feeds/kenzo/luci-app-vssr
#rm -rf package/feeds/small/shadowsocksr-libev

#passwall
#git clone https://github.com/immortalwrt/openwrt-passwall package/diy/openwrt_passwall 
#rm -rf package/diy/openwrt_passwall/luci-app-passwall
#svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-passwall package/diy/openwrt_passwall/luci-app-passwall
#mv package/diy/openwrt_passwall/luci-app-passwall/po/zh-cn package/diy/openwrt_passwall/luci-app-passwall/po/zh_Hans
#sed -i 's/PassWall/科学上网/g' package/diy/openwrt_passwall/luci-app-passwall/po/zh_Hans/passwall.po
#sed -i 's/zh-cn/zh_Hans/g' package/diy/openwrt_passwall/luci-app-passwall/Makefile

#主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/diy/luci-theme-argon

#DDNS
svn co https://github.com/garypang13/openwrt-packages/trunk/ddns-scripts-aliyun package/diy/ddns-scripts-aliyun
svn co https://github.com/garypang13/openwrt-packages/trunk/ddns-scripts-dnspod package/diy/ddns-scripts-dnspod

#清内存
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-ramfree package/diy/luci-app-ramfree

#定时重启
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-autoreboot package/diy/luci-app-autoreboot

#zerotier
svn co https://github.com/garypang13/openwrt-packages/trunk/luci-app-zerotier package/diy/luci-app-zerotier
sed -i 's/msgid ""/msgid "VPN"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i 's/msgstr ""/msgstr "虚拟网络"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i 's/msgid "Interface Info"/msgid "Base Setting"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i 's/msgstr "接口信息"/msgstr "基础设置"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a \\' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgid "Interface Info"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgstr "接口信息"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po

#mt-drivers
svn co https://github.com/garypang13/openwrt-packages/trunk/mt-drivers package/diy/mt-drivers

#B70
#svn co https://github.com/garypang13/openwrt-packages/trunk/automount package/diy/automount
#svn co https://github.com/garypang13/openwrt-packages/trunk/autosamba package/diy/autosamba
