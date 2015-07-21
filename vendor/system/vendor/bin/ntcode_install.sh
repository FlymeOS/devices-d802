#!/system/bin/sh
# This script installs apks in /system/uninstallable directory
# when the phone is first booted after the factory reset.
#
# Apks installed via this script can be uninstalled by user.
# However, uninstallation does not remove an apk from the system image.
# Furthermore, the apks are again installed after a factory reset.
#
# Apks listed in the config file /cust/config/appmanager.cfg won't
# be neither installed or managed by Application Manager.

tag2=`getprop persist.lge.appman.ntcode 1`
case "$tag2" in
    "1")

#    ntcode=`getprop persist.sys.first-mcc XXX`

    ntcode_list=`getprop persist.sys.ntcode "0","XXX,FFF,FFFFFFFF,FFFFFFFF,FF"`
    ntcode=${ntcode_list#*,}
    ntcode=${ntcode:1:3}

    case "$ntcode" in
    	"208")
    	   rm /data/app-system/Vodafone_Updates.apk
    	   setprop persist.lge.appman.ntcode 0
    	   ;;
    	"647")
    	   rm /data/app-system/Vodafone_Updates.apk
    	   setprop persist.lge.appman.ntcode 0
    	   ;;
    	"232")
    	   rm /data/app-system/Vodafone_Updates.apk
    	   setprop persist.lge.appman.ntcode 0
    	   ;;
    	"219")
    	   rm /data/app-system/Vodafone_Updates.apk
    	   setprop persist.lge.appman.ntcode 0
    	   ;;
    	"XXX");;
    	"FFF")
    	   mkdir /data/app-system
    	   chown system:system /data/app-system
    	   chmod 771 /data/app-system
    	   ln -s /system/vendor/carrier/system/Vodafone_Updates/Vodafone_Updates.apk /data/app-system/Vodafone_Updates.apk
    	   ;;
    	*) mkdir /data/app-system
    	   chown system:system /data/app-system
    	   chmod 771 /data/app-system
    	   ln -s /system/vendor/carrier/system/Vodafone_Updates/Vodafone_Updates.apk /data/app-system/Vodafone_Updates.apk
    	   setprop persist.lge.appman.ntcode 0
    	;;
    esac
esac
exit 0
