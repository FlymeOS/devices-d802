#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12894208:60638c4a97c8b170c57d64ebb1657245e46e1df8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12146688:227c5095515c0e7df98999196a34220bebbd0bb1 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 60638c4a97c8b170c57d64ebb1657245e46e1df8 12894208 227c5095515c0e7df98999196a34220bebbd0bb1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
