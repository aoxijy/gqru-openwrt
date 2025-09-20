#!/bin/bash
# Modify default system settings

# 修改默认IP为192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate 

# 添加额外的软件源
echo 'src-git neobird https://github.com/thinktip/luci-theme-neobird.git' >> feeds.conf.default
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default

# 替换默认主题
rm -rf package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 添加缺失的依赖包源
echo "src-git luci https://github.com/coolsnowwolf/luci" >> feeds.conf.default
echo "src-git packages https://github.com/coolsnowwolf/packages" >> feeds.conf.default
echo "src-git routing https://git.openwrt.org/feed/routing.git" >> feeds.conf.default
echo "src-git telephony https://git.openwrt.org/feed/telephony.git" >> feeds.conf.default
