#!/system/bin/sh

kernel_log_prop=`getprop persist.service.kernel.enable`
vold_prop=`getprop vold.decrypt`
vold_propress=`getprop vold.encrypt_progress`

touch /data/logger/kernel.log
chmod 0644 /data/logger/kernel.log

case "$kernel_log_prop" in
	6)
	/system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 100
	;;
	5)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 50
	;;
	4)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 20
	;;
	3)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 10
	;;
	2)
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 1048576 -m 5
	;;
	1)
    if [ "$vold_prop" = "trigger_default_encryption" ] || [ "$vold_propress" = "0" ] ; then
        touch /cache/encryption_log/kernel.log
        chmod 0644 /cache/encryption_log/kernel.log
        /system/bin/kernel_logger -f /cache/encryption_log/kernel.log -s 8388608 -m 5
    else
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 8388608 -m 5
    fi
	;;
esac
