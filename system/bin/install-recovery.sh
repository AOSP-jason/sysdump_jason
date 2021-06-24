#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:60568910:a6033ea2ae244f0be614c7cacc0b6a54c041b7ef; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54596938:461af128dddf470bc6c36a5b9e196e216138fe84 EMMC:/dev/block/bootdevice/by-name/recovery a6033ea2ae244f0be614c7cacc0b6a54c041b7ef 60568910 461af128dddf470bc6c36a5b9e196e216138fe84:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
