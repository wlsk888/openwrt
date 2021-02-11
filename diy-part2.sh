#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
#passwall
sed -i 's/192.168.1.1/192.168.111.1/g' package/base-files/files/bin/config_generate
mv feeds/passwall/luci-app-passwall/po/zh-cn feeds/passwall/luci-app-passwall/po/zh_Hans
sed -i 's/PassWall/科学上网/g' feeds/passwall/luci-app-passwall/po/zh_Hans/passwall.po
sed -i 's/zh-cn/zh_Hans/g' feeds/passwall/luci-app-passwall/Makefile
#zerotier
sed -i 's/msgid ""/msgid "VPN"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i 's/msgstr ""/msgstr "虚拟网络"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i 's/msgid "Interface Info"/msgid "Base Setting"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i 's/msgstr "接口信息"/msgstr "基础设置"/g' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a \\' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgid "Interface Info"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
sed -i '$a msgstr "接口信息"' package/diy/luci-app-zerotier/po/zh_Hans/zerotier.po
