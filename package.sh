#!/bin/bash
# 添加额外的软件包

# 应用层包
git clone --depth 1 https://github.com/bigbugcc/OpenwrtApp package/otherapp/OpenwrtApp
git clone --depth 1 https://github.com/destan19/OpenAppFilter package/otherapp/OpenAppFilter
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot package/otherapp/luci-app-pushbot

# 主题
git clone --depth 1 https://github.com/thinktip/luci-theme-neobird.git package/otherapp/luci-theme-neobird

# OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash

# 添加缺失的依赖包
git clone --depth 1 https://github.com/coolsnowwolf/luci package/lean/luci
git clone --depth 1 https://github.com/coolsnowwolf/packages package/lean/packages
git clone --depth 1 https://github.com/openwrt/routing package/feeds/routing
git clone --depth 1 https://github.com/openwrt/telephony package/feeds/telephony
