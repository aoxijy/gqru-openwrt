#!/bin/bash
# 添加额外的软件包

# 应用层包
git clone --depth 1 https://github.com/bigbugcc/OpenwrtApp package/otherapp/OpenwrtApp || true
git clone --depth 1 https://github.com/destan19/OpenAppFilter package/otherapp/OpenAppFilter || true
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot package/otherapp/luci-app-pushbot || true

# OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash || true

# 添加缺失的依赖包（使用条件判断避免重复）
[ ! -d "package/lean/luci" ] && git clone --depth 1 https://github.com/coolsnowwolf/luci package/lean/luci || true
[ ! -d "package/lean/packages" ] && git clone --depth 1 https://github.com/coolsnowwolf/packages package/lean/packages || true
[ ! -d "package/feeds/routing" ] && git clone --depth 1 https://github.com/openwrt/routing package/feeds/routing || true
[ ! -d "package/feeds/telephony" ] && git clone --depth 1 https://github.com/openwrt/telephony package/feeds/telephony || true
