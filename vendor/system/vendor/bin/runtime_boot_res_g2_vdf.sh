#!/system/bin/sh

MCC=`getprop persist.sys.ntcode`
FIRSTPOWERON=`getprop persist.radio.first-mccmnc`

MCC=${MCC#*,}
MCC=${MCC:1:3}

echo $MCC

USER_BOOTANIMATION_FILE=/data/local/bootanimation.zip
USER_BOOTANIMATION_SOUND_FILE=/data/local/PowerOn.ogg

USER_SHUTDOWNANIMATION_FILE=/data/local/shutdownanimation.zip
USER_SHUTDOWNANIMATION_SOUND_FILE=/data/local/PowerOff.ogg

CUST_BOOT_PATH=/cust/poweron/bootanimation_lg.zip
CUST_BOOT_SOUND_PATH=/cust/poweron/PowerOn_lg.ogg
CUST_SHUTDOWN_PATH=/cust/poweroff/shutdownanimation_lg.zip
CUST_SHUTDOWN_SOUND_PATH=/cust/poweroff/PowerOff_lg.ogg

if [ $MCC == "208" ] || [ $MCC == "647" ]; then
    CUST_BOOT_PATH=/cust/poweron/bootanimation_sfr.zip
    CUST_BOOT_SOUND_PATH=/cust/poweron/PowerOn_sfr.mp3
    CUST_SHUTDOWN_PATH=/cust/poweroff/shutdownanimation_sfr.zip
    CUST_SHUTDOWN_SOUND_PATH=/cust/poweroff/PowerOff_sfr.mp3
fi

if [ $MCC == "214" ] || [ $MCC == "222" ] || [ $MCC == "262" ]; then
    CUST_BOOT_PATH=/cust/poweron/bootanimation_vdf.zip
    CUST_BOOT_SOUND_PATH=/cust/poweron/PowerOn_vdf.ogg
    CUST_SHUTDOWN_PATH=/cust/poweroff/shutdownanimation_vdf.zip
    CUST_SHUTDOWN_SOUND_PATH=/cust/poweroff/PowerOff_vdf.ogg
fi

rm $USER_BOOTANIMATION_FILE
rm $USER_BOOTANIMATION_SOUND_FILE
rm $USER_SHUTDOWNANIMATION_FILE
rm $USER_SHUTDOWNANIMATION_SOUND_FILE

ln -s $CUST_BOOT_PATH $USER_BOOTANIMATION_FILE
ln -s $CUST_BOOT_SOUND_PATH $USER_BOOTANIMATION_SOUND_FILE
ln -s $CUST_SHUTDOWN_PATH $USER_SHUTDOWNANIMATION_FILE
ln -s $CUST_SHUTDOWN_SOUND_PATH $USER_SHUTDOWNANIMATION_SOUND_FILE

exit 0
