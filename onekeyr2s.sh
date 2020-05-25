#!/bin/bash
cp -r ./SCRIPTS/. ./
bash 01_get_ready.sh
cd openwrt
cp -r ../SCRIPTS/. ./
bash 02_prepare_package.sh
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
bash 03_convert_translation.sh
bash 04_remove_upx.sh
mv ../SEED/config.seed .config
make defconfig
make download -j10
chmod -R 755 ./
let make_process=$(nproc)+1
make toolchain/install -j${make_process} V=s
let make_process=$(nproc)+1
make -j${make_process} V=s || make -j${make_process} V=s
cd bin/targets/rockchip/armv8
/bin/bash ../../../../../SCRIPTS/05_cleaning.sh
