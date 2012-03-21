#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p18:5531648:841666a4f6b90a798641aee0ff09ef8a81a67375; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p8:5193728:e1a68421e576a8293f905f0bf98c2c500bc3780d EMMC:/dev/block/mmcblk0p18 841666a4f6b90a798641aee0ff09ef8a81a67375 5531648 e1a68421e576a8293f905f0bf98c2c500bc3780d:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
