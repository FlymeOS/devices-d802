.class public interface abstract Lcom/lge/cappuccino/IMdm;
.super Ljava/lang/Object;
.source "IMdm.java"


# static fields
.field public static final LGMDM_ADAPTER_AIRPLANE_MODE:Ljava/lang/String; = "LGMDMAirplaneModeUIAdpater"

.field public static final LGMDM_ADAPTER_ANDROIDBEAM:Ljava/lang/String; = "LGMDMAndroidBeamUIAdapter"

.field public static final LGMDM_ADAPTER_APPLICATION:Ljava/lang/String; = "LGMDMApplicationUIAdapter"

.field public static final LGMDM_ADAPTER_AUTORESTORE:Ljava/lang/String; = "LGMDMAutoRestoreUIAdapter"

.field public static final LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String; = "LGMDMBluetoothAdapter"

.field public static final LGMDM_ADAPTER_BLUETOOTH_TETHERING:Ljava/lang/String; = "LGMDMBluetoothTetheringUIAdapter"

.field public static final LGMDM_ADAPTER_BROWSER:Ljava/lang/String; = "LGMDMBrowserUIAdapter"

.field public static final LGMDM_ADAPTER_DATAROAMING:Ljava/lang/String; = "LGMDMDataRoamingAdapter"

.field public static final LGMDM_ADAPTER_EMAIL:Ljava/lang/String; = "LGMDMEmailUIAdapter"

.field public static final LGMDM_ADAPTER_ENFORCE_GPS:Ljava/lang/String; = "LGMDMEnfoceGPSUIAdpater"

.field public static final LGMDM_ADAPTER_ENFORCE_MOBILENETWORK:Ljava/lang/String; = "LGMDMEnforceMobileNetworkAdapter"

.field public static final LGMDM_ADAPTER_EXTERNALMEMORY:Ljava/lang/String; = "LGMDMExternalAdapter"

.field public static final LGMDM_ADAPTER_GOOGLEBACKUP:Ljava/lang/String; = "LGMDMGoogleBackupUIAdapter"

.field public static final LGMDM_ADAPTER_GPS:Ljava/lang/String; = "LGMDMGPSUIAdpater"

.field public static final LGMDM_ADAPTER_HOTSPOT:Ljava/lang/String; = "LGMDMHotspotUIAdapter"

.field public static final LGMDM_ADAPTER_LOCATION_SERVICE:Ljava/lang/String; = "LGMDMLocationServiceUIAdapter"

.field public static final LGMDM_ADAPTER_LOVKSCREEN:Ljava/lang/String; = "LGMDMUILockScreenProviderAdapter"

.field public static final LGMDM_ADAPTER_MESSAGE:Ljava/lang/String; = "LGMDMMessageUIAdapter"

.field public static final LGMDM_ADAPTER_MIRACAST:Ljava/lang/String; = "LGMDMMiracastUIAdapter"

.field public static final LGMDM_ADAPTER_MOBILENETWORK:Ljava/lang/String; = "LGMDMMobileNetworkAdapter"

.field public static final LGMDM_ADAPTER_NFC:Ljava/lang/String; = "LGMDMNfcAdapter"

.field public static final LGMDM_ADAPTER_NFC_CARDMODE:Ljava/lang/String; = "LGMDMNfcCardModeAdapter"

.field public static final LGMDM_ADAPTER_PASSWORD:Ljava/lang/String; = "LGMDMPasswordUIAdapter"

.field public static final LGMDM_ADAPTER_POWER_OFF:Ljava/lang/String; = "LGMDMPowerOffUIAdpater"

.field public static final LGMDM_ADAPTER_RESTRICT_BACKGROUNDDATA:Ljava/lang/String; = "LGMDMRestrictBackgroundDataUIAdapter"

.field public static final LGMDM_ADAPTER_SCREENCAPTURE:Ljava/lang/String; = "LGMDMScreenCaptureUIAdapter"

.field public static final LGMDM_ADAPTER_STATUSBAR:Ljava/lang/String; = "LGMDMStatusBarAdapter"

.field public static final LGMDM_ADAPTER_TETHERING:Ljava/lang/String; = "LGMDMTetheringUIAdapter"

.field public static final LGMDM_ADAPTER_UI_HANDLER:Ljava/lang/String; = "LGMDMUIHandlerAdapter"

.field public static final LGMDM_ADAPTER_USB:Ljava/lang/String; = "LGMDMUsbUIAdapter"

.field public static final LGMDM_ADAPTER_WIFI:Ljava/lang/String; = "LGMDMWifiUIAdapter"

.field public static final LGMDM_ADAPTER_WIFIDIRECT:Ljava/lang/String; = "LGMDMWifiDirectUIAdapter"

.field public static final LGMDM_ADAPTER_WIPER:Ljava/lang/String; = "LGMDMWiperAdapter"

.field public static final LGMDM_ADAPTER_WIRELESS_STORAGE:Ljava/lang/String; = "LGMDMWirelessStorageUIAdapter"

.field public static final LGMDM_MOUNT_REJECT:I = -0x63

.field public static final LGMDM_UI_MANAGER_SERVICE:Ljava/lang/String; = "LGMDMUIManager"

.field public static final LOCATION_DISABLED:I = 0x1

.field public static final LOCATION_ENABLED:I = 0x0

.field public static final LOCATION_FORCED:I = 0x2

.field public static final MDM_CHECK_WIRELESSLOCATIONWITHWHITELIST:I = 0x2

.field public static final MDM_PASSIVEPROVIDER:I = 0x1

.field public static final PASSWORD_RECOVERY_MODE:Ljava/lang/String; = "PASSWORD_RECOVERY"

.field public static final SIMPLE_PASSWORD_FOUR_LETTERS:I = 0x1

.field public static final SIMPLE_PASSWORD_NONE:I = 0x0

.field public static final SIMPLE_PASSWORD_THREE_LETTERS:I = 0x2

.field public static final TETHER_ALL:I = 0x4

.field public static final TETHER_BLUETOOTH:I = 0x3

.field public static final TETHER_HOTSPOT:I = 0x2

.field public static final TETHER_USB:I = 0x1

.field public static final USB_ADB:I = 0x6

.field public static final USB_ALL:I = 0x7

.field public static final USB_ENFORCED_AS_NONE:I = 0x8

.field public static final USB_MASS_STORAGE:I = 0x3

.field public static final USB_MTP:I = 0x1

.field public static final USB_PTP:I = 0x2

.field public static final USB_SOFTWARE:I = 0x5

.field public static final USB_TETHER:I = 0x4

.field public static final USB_TYPE_MAX:I = 0x7


# virtual methods
.method public abstract addFilterIMEServiceReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract addFilterWifiP2pServiceReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract changePassword(Landroid/content/Context;)V
.end method

.method public abstract checkAllowMicrophone(ZZ)Z
.end method

.method public abstract checkAllowQuickCircle()Z
.end method

.method public abstract checkBluetoothAudioOnly(Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothAudioOnlyForCoD(Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothDevice(Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothPairing(Ljava/lang/String;Z)Z
.end method

.method public abstract checkBluetoothProfileStatus(I)Z
.end method

.method public abstract checkBluetoothVisible()Z
.end method

.method public abstract checkCCmodePolicy(Landroid/content/ComponentName;I)Z
.end method

.method public abstract checkCIDMountServiceWhitelist()Z
.end method

.method public abstract checkDisabledAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;I)Z
.end method

.method public abstract checkDisabledClipboard(Z)Z
.end method

.method public abstract checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledMountService(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledMountServiceUSBHostStorage(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledRemoveAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledTetherType(I)Z
.end method

.method public abstract checkDisabledUSBType(I)Z
.end method

.method public abstract checkDisabledVpn()Z
.end method

.method public abstract checkDisabledWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract checkDisabledWifiDirect()Z
.end method

.method public abstract checkDisabledWifiScanWithToast(Z)Z
.end method

.method public abstract checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract checkEnforceMuteDuringCall()Z
.end method

.method public abstract checkInstallByMDM(I)Z
.end method

.method public abstract checkMobileNetwork(ZI)Z
.end method

.method public abstract checkNotifyAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;I)Z
.end method

.method public abstract checkNotifySpecificProcessKillEvent(Ljava/lang/String;I)V
.end method

.method public abstract checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkOnLocationButton(Landroid/content/ComponentName;I)I
.end method

.method public abstract checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public abstract checkPoweroffGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract checkScreenCapture(Landroid/content/ComponentName;)I
.end method

.method public abstract checkSimplepasswordCorrect(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract checkStartLockdownApps(Ljava/lang/String;Landroid/content/Intent;ZI)V
.end method

.method public abstract checkVpnSplitTunneling(Z)Z
.end method

.method public abstract checkWebView(Ljava/lang/String;)Z
.end method

.method public abstract dismissDialogForLockout(Landroid/content/Context;)V
.end method

.method public abstract getAllowMultiUser(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowSendingSms(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getAllowSimplePasswordEx(Landroid/content/ComponentName;I)I
.end method

.method public abstract getAllowSpecificKey(II)Z
.end method

.method public abstract getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowWiFiProfileManagement(I)Z
.end method

.method public abstract getBluetoothVisibleDuration(I)I
.end method

.method public abstract getEnforcePasswordChange()Z
.end method

.method public abstract getEnforcePowerButtonLocks(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getExternalMemoryMounted(Landroid/content/Context;)Z
.end method

.method public abstract getLockoutNow(Landroid/content/ComponentName;)Z
.end method

.method public abstract getMDMLocationPolicy(IZILjava/lang/String;)Z
.end method

.method public abstract getManualSyncWhenRoaming()Z
.end method

.method public abstract getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I
.end method

.method public abstract googleErrorReportDisabled()Z
.end method

.method public abstract handleManualSync(Landroid/content/ComponentName;)V
.end method

.method public abstract isAdminActive()Z
.end method

.method public abstract isAllowSendMMS(Landroid/content/ComponentName;I)Z
.end method

.method public abstract isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
.end method

.method public abstract isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isFailedInstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;ILjava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract isFailedUninstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;II)Z
.end method

.method public abstract isNeedPasswordChangeNoti(Lcom/android/internal/widget/LockPatternUtils;)Z
.end method

.method public abstract isShortcutKeyAllowed()Z
.end method

.method public abstract launchService(Landroid/content/Context;)V
.end method

.method public abstract notificationCIDMountServiceWhitelist()Z
.end method

.method public abstract notificationChangePasswordDialogWarning(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
.end method

.method public abstract recevieIMEIntent(Ljava/lang/String;)Z
.end method

.method public abstract recevieMDMUsbIntent(Landroid/content/Intent;)Ljava/lang/String;
.end method

.method public abstract recevieWifiP2pIntent(Ljava/lang/String;)Z
.end method

.method public abstract removeActiveAdmin(Landroid/content/ComponentName;I)V
.end method

.method public abstract removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendToastMessageId(I)V
.end method

.method public abstract setActiveAdmin(Landroid/content/ComponentName;ZI)V
.end method

.method public abstract setAirplaneModeDisplayMenu(Landroid/view/View;)V
.end method

.method public abstract setCameraState(Z)Z
.end method

.method public abstract setCameraStop(ZI)V
.end method

.method public abstract setCrashAppliction(Ljava/lang/String;I)V
.end method

.method public abstract setCurrIMEpackage(Ljava/lang/String;)V
.end method

.method public abstract setPowerOffDisplayMenu(Landroid/view/View;)V
.end method

.method public abstract systemReady()V
.end method

.method public abstract wipeData(I)V
.end method
