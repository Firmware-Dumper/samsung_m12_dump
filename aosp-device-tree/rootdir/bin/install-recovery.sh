#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):55574528:360ca32eb625e0cf49bae797a766490c36c00d13; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):46137344:caba7c4670df338b0b884b23bc4018ea20a9eb7e \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):55574528:360ca32eb625e0cf49bae797a766490c36c00d13 && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

