#!/bin/bash
# Modify default system settings

# 暂时回滚
sed -i '/^#src-git luci https:\/\/github.com\/coolsnowwolf\/luci$/s/^#//' feeds.conf.default && sed -i '/^src-git luci https:\/\/github.com\/coolsnowwolf\/luci\.git;openwrt-23\.05$/s/^/#/' feeds.conf.default

# 修改默认IP为192.168.10.1
sed -i 's/192.168.1.1/172.18.18.222/g' package/base-files/files/bin/config_generate 

# Hello World
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# luci-theme-infinityfreedom
echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default

# passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default

# iStore
# echo "src-git istore https://github.com/linkease/istore;main" >> feeds.conf.default

# 添加 luci-theme-neobird 主题源
echo 'src-git neobird https://github.com/thinktip/luci-theme-neobird.git' >>feeds.conf.default
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon

# 删除默认主题（如有需要），并设置 neobird 为默认主题
# 注意：这里假设原本没有直接删除主题包的操作，仅通过配置设置默认主题
# 如果需要强制替换主题，可以取消注释下面的行（但需谨慎操作）
# rm -rf package/lean/luci-theme-argon
# git clone https://github.com/thinktip/luci-theme-neobird.git package/lean/luci-theme-neobird

# 修改系统默认主题配置为 neobird
sed -i "s/option mediaurlbase.*/option mediaurlbase '\/luci-static\/neobird'/" package/lean/luci-base/files/lib/config/luci
