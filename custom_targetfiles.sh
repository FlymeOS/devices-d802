
echo "in $0"

TARGET_DIR=out/merged_target_files/
TARGET_BOOT_DIR=out/merged_target_files/BOOTABLE_IMAGES/

ADDITIONAL_TOOLS_DIR=additional_tools/

$ADDITIONAL_TOOLS_DIR/open_bump.py $TARGET_BOOT_DIR/boot.img

mv $TARGET_BOOT_DIR/boot_bumped.img $TARGET_BOOT_DIR/boot.img
