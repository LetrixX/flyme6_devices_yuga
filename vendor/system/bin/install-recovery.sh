#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12988416 989ad654a735af4cadf2514ddcc0c0ad4f1cdc3b 7239680 0e257b052fc69c83f41f8b82c76c2909d4c6441d
fi
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel:12988416:989ad654a735af4cadf2514ddcc0c0ad4f1cdc3b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7239680:0e257b052fc69c83f41f8b82c76c2909d4c6441d EMMC:/dev/block/platform/msm_sdcc.1/by-name/FOTAKernel 989ad654a735af4cadf2514ddcc0c0ad4f1cdc3b 12988416 0e257b052fc69c83f41f8b82c76c2909d4c6441d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
