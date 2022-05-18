# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Hi there!
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=lavender
device.name2=citrus
device.name3=lime
device.name4=juice
device.name5=rolex
supported.versions=
supported.patchlevels=
'; }
# end properties

# shell variables
block=auto;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;

# Messages
ui_print "                  ____ _____                 ";
ui_print "                 / ___|  ___|                ";
ui_print "                | |  _| |                    ";
ui_print "                | |_| |  _|                  ";
ui_print "                 \____|_|                    ";
ui_print "   ____  ____   ___      _ _____ ____ _____  ";
ui_print "  |  _ \|  _ \ / _ \    | | ____/ ___|_   _| ";
ui_print "  | |_) | |_) | | | |_  | |  _|| |     | |   ";
ui_print "  |  __/|  _ <| |_| | |_| | |__| |___  | |   ";
ui_print "  |_|   |_| \_\\___/ \___/|_____\____| |_|   ";
ui_print "                 since 2020                  ";
ui_print "                     - -                     ";
ui_print "               Muhammad Fadlyas              ";
ui_print "                      x                      ";
ui_print "                 Zecho Satria                ";
ui_print "                     - -                     ";
ui_print "            May soon be abandoned            ";

sleep 1
ui_print ""

## AnyKernel boot install
dump_boot;

## end boot install
write_boot;
