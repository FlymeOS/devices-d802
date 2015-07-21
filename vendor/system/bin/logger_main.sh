#!/system/bin/sh

main_log_prop=`getprop persist.service.main.enable`
vold_prop=`getprop vold.decrypt`
vold_propress=`getprop vold.encrypt_progress`

touch /data/logger/main.log
chmod 0644 /data/logger/main.log

case "$main_log_prop" in
	6)
		/system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 99 -r8192
	;;
	5)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 49 -r8192
	;;
	4)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 19 -r8192
	;;
	3)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 9 -r8192
	;;
	2)
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 4 -r1024
	;;
	1)
    if [ "$vold_prop" = "trigger_default_encryption" ] || [ "$vold_propress" = "0" ] ; then
        touch /cache/encryption_log/main.log
        chmod 0644 /cache/encryption_log/main.log
        /system/bin/logcat -v threadtime -b main -f /cache/encryption_log/main.log -n 4 -r8192
    else
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 4 -r8192
    fi
	;;
esac
