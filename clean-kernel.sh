#!/bin/bash

cp -pv .config .config.bkp;
make ARCH=arm64 CROSS_COMPILE=/home/halaszk/KERNEL/aarch64-sabermod-7.0/bin/aarch64- mrproper;
cp -pv .config.bkp .config;
make clean;
rm -rf tmp/*

# clean ccache
read -t 5 -p "clean ccache, 5sec timeout (y/n)?";
if [ "$REPLY" == "y" ]; then
ccache -C;
fi;
