#!/bin/bash


apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "TelephonyProvider" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "getAllMessagesFromIcc" with "getAllMessagesFromIccExtended""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIcc()Ljava\/util\/ArrayList#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIccExtended()Ljava\/util\/ArrayList#g'

elif [ "$apkBaseName" = "FlymeLauncher" ];then
        echo ">>> in custom_app for $apkBaseName to add lg vendor camera in the folder"
        sed -i '/<favorite launcher:className="com.meizu.feedback.activity.MainActivity" launcher:packageName="com.meizu.feedback" \/>/a\<favorite launcher:className="com.lge.camera.CameraAppLauncher" launcher:packageName="com.lge.camera" \/>' $tempSmaliDir/res/xml/default_workspace.xml

fi
