#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11847680 3d9e241c754fe840d38467cf9ee4cd8aa6c8734f 13275136 e3283e4244b8f4466acdc10f836bd4c33385e166
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel:11847680:3d9e241c754fe840d38467cf9ee4cd8aa6c8734f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:13275136:e3283e4244b8f4466acdc10f836bd4c33385e166 EMMC:/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel 3d9e241c754fe840d38467cf9ee4cd8aa6c8734f 11847680 e3283e4244b8f4466acdc10f836bd4c33385e166:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
