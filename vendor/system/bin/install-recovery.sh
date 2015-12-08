#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 28504064 fbecb60fc4d7c4b06dec16d00870a4f68dc63a36 24887296 8e848c1a9316db97526bdabba66b8889515df166
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28504064:fbecb60fc4d7c4b06dec16d00870a4f68dc63a36; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24887296:8e848c1a9316db97526bdabba66b8889515df166 EMMC:/dev/block/bootdevice/by-name/recovery fbecb60fc4d7c4b06dec16d00870a4f68dc63a36 28504064 8e848c1a9316db97526bdabba66b8889515df166:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
