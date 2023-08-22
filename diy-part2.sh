#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================
# 修改开源驱动wifi名称
sed -i 's/OpenWrt/ZTE-E8820S-%s/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改闭源驱动2G wifi名称
sed -i 's/OpenWrt_2G/ZTE-E8820S/g' package/lean/mt-drivers/mt_wifi/files/mt7603.dat

# 修改闭源驱动5G wifi名称
sed -i 's/OpenWrt_5G/ZTE-E8820S-5G/g' package/lean/mt-drivers/mt_wifi/files/mt7612.dat

# Clone community packages to package/community
mkdir package/community
pushd package/community

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify hostname
#sed -i 's/OpenWrt/360T7/g' package/base-files/files/bin/config_generate
