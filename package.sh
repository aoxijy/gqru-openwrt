#!/bin/bash
git clone --depth 1 https://github.com/bigbugcc/OpenwrtApp package/otherapp/OpenwrtApp
git clone --depth 1 https://github.com/destan19/OpenAppFilter package/otherapp/OpenAppFilter
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot package/otherapp/luci-app-pushbot

# Theme
# luci-theme-neobird
git clone --depth 1 https://github.com/thinktip/luci-theme-neobird.git package/otherapp/luci-theme-neobird

# Mentohust
git clone --depth 1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/otherapp/mentohust

# OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash
