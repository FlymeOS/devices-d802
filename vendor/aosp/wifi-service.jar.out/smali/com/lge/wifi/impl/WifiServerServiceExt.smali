.class public Lcom/lge/wifi/impl/WifiServerServiceExt;
.super Ljava/lang/Object;
.source "WifiServerServiceExt.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiServerServiceExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;,
        Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;,
        Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;,
        Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;,
        Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;,
        Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;,
        Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;
    }
.end annotation


# static fields
.field private static ASK_ON_CONNECTION:I = 0x0

.field private static AUTO_CONNECT:I = 0x0

.field static final BASE_LGE:I = 0x20400

.field static final BASE_MYWIFIHANDLER:I = 0x0

.field private static final BATTERY_PS_EVENT_ACTIVATE:I = 0x0

.field private static final BATTERY_PS_EVENT_ACTIVATED:I = 0x1

.field private static final BATTERY_PS_EVENT_RESTORE:I = 0x2

.field private static final BATTERY_PS_EVENT_RESTORED:I = 0x3

.field private static final BATTERY_PS_STATE_ACTIVATED:I = 0x3

.field private static final BATTERY_PS_STATE_ACTIVATING:I = 0x2

.field private static final BATTERY_PS_STATE_DISABLED:I = 0x0

.field private static final BATTERY_PS_STATE_RESTORING:I = 0x1

.field static final CMD_CAPTIVE_CHECK_COMPLETED:I = 0x20403

.field static final CMD_DISCONNECT_BY_WIFI_DCF:I = 0x20404

.field static final CMD_DISCONNECT_RSSI_LVL:I = 0x20400

.field static final CMD_KT_SCAN_INTERVAL:I = 0x20401

.field static final CMD_OPERATOR_PROFILE_VALIDITY:I = 0x20406

.field static final CMD_RESTORE_DISABLED_NETS_BY_DCF:I = 0x20405

.field static final CMD_SET_FAST_L2_ROAMING:I = 0x2041e

.field static final CMD_SET_FRAMEWORK_AUTO_JOIN:I = 0x2043c

.field static final CMD_SET_KT_SET_SCAN_RESULT:I = 0x20415

.field static final CMD_SET_KT_UPDATE_NETWORK_PRI:I = 0x20416

.field static final CMD_SET_MANUAL_CONNECT:I = 0x20414

.field static final CMD_SET_MULTI_SIMSLOT_REARRANGE:I = 0x20432

.field static final CMD_SET_PASSPOINT_ENABLE:I = 0x2041f

.field static final CMD_SET_SCAN_INTERVAL_MAX:I = 0x20402

.field static final CMD_SET_SKT_DUALBAND_CONNECTION:I = 0x2040a

.field static final CMD_SET_SKT_PROHIBIT_CONNECTAP:I = 0x2040b

.field static final CMD_WPS_NFC_CONFIG_TOKEN_SET:I = 0x2042a

.field static final CMD_WPS_NFC_HANDOVER_REQ_GEN:I = 0x20429

.field static final CMD_WPS_NFC_PWD_TOKEN_GEN:I = 0x20428

.field static final CMD_WPS_NFC_RX_HANDOVER_SEL:I = 0x2042b

.field private static final CORPORATION_HOTSPOT_KBS:Ljava/lang/String; = "KBS_FMC"

.field private static final CUSTOM_EVENT:I = 0xc

.field private static final CUSTOM_EVENT_NAME:Ljava/lang/String; = "CUSTOM-EVENT"

.field private static final DBG:Z = false

.field private static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = "My LG Mobile"

.field private static final DEFAULT_HOTSPOT_PASSWORD_INIT:Ljava/lang/String; = "oi3afjo93n"

.field private static final DEFAULT_HOTSPOT_PASSWORD_ZERO:Ljava/lang/String; = "0000000000"

.field private static final DISABLED_NETWORK_NOTIFICATION_ID:Ljava/lang/String; = "WifiWatchdog.networkdisabled"

.field private static DefaultMacCheck:I = 0x0

.field public static final EAP_AKA_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.EAP_AKA_NOTIFICATION"

.field private static final EXTRA_AUTH_FAIL_NETWORK_ID:Ljava/lang/String; = "authfail_networkid"

.field public static final EXTRA_EAP_NOTI:Ljava/lang/String; = "eapNotiMsg"

.field public static final EXTRA_WPS_NFC_CONFIG_TOKEN:Ljava/lang/String; = "extra_wps_nfc_config_token"

.field public static final EXTRA_WPS_NFC_HANDOVER_REQ_TOKEN:Ljava/lang/String; = "extra_wps_nfc_handover"

.field public static final EXTRA_WPS_NFC_HANDOVER_SEL:Ljava/lang/String; = "extra_wps_nfc_handover_sel"

.field public static final EXTRA_WPS_NFC_PWD_NDEF_TOKEN:Ljava/lang/String; = "extra_wps_nfc_pwd_ndef_token"

.field private static final HOTSPOT_ATT:Ljava/lang/String; = "attwifi"

.field private static final HOTSPOT_CHT:Ljava/lang/String; = "CHT Wi-Fi Auto"

.field private static final HOTSPOT_FET:Ljava/lang/String; = "FET Wi-Fi Auto"

.field private static final HOTSPOT_FREE_FR:Ljava/lang/String; = "FreeWifi_secure"

.field private static final HOTSPOT_HKT:Ljava/lang/String; = "PCCW1x"

.field private static final HOTSPOT_KT:Ljava/lang/String; = "ollehWiFi"

.field private static final HOTSPOT_LGE_MC0:Ljava/lang/String; = "uLGE_MC"

.field private static final HOTSPOT_LGE_MC1:Ljava/lang/String; = "mcwifi_m"

.field private static final HOTSPOT_LGE_MC2:Ljava/lang/String; = "mc_intra"

.field private static final HOTSPOT_SKT_OPEN:Ljava/lang/String; = "T wifi zone"

.field private static final HOTSPOT_SKT_SECURITY:Ljava/lang/String; = "T wifi zone_secure"

.field private static final HOTSPOT_TEST:Ljava/lang/String; = "LoveAP2"

.field private static final HOTSPOT_TMN_PT:Ljava/lang/String; = "MEO-WiFi.x"

.field private static final HOTSPOT_VDF_ES:Ljava/lang/String; = "VodafoneWiFi"

.field private static final HOT_SPOT_BELL:Ljava/lang/String; = "BELL_WIFI"

.field private static final HOT_SPOT_BELL2:Ljava/lang/String; = "5099251212"

.field private static final HOT_SPOT_MTS:Ljava/lang/String; = "MTS Wireless"

.field private static final HOT_SPOT_SASKTEL:Ljava/lang/String; = "SaskTel Select Wi-Fi 1"

.field private static final HOT_SPOT_STL:Ljava/lang/String; = "Wireless@SGx"

.field private static final HOT_SPOT_STL2:Ljava/lang/String; = "Singtel WIFI"

.field private static final HOT_SPOT_TELUS:Ljava/lang/String; = "#TELUSDirect"

.field private static final HOT_SPOT_UPLUS0:Ljava/lang/String; = "U+zone"

.field private static final HOT_SPOT_UPLUS1:Ljava/lang/String; = "U+zone_5G"

.field private static final HOT_SPOT_UPLUS2:Ljava/lang/String; = "5G_U+zone"

.field private static final IMS_REGISTRATION:Ljava/lang/String; = "IMS_REGISTRATION"

.field private static final IMS_REG_STATUS:Ljava/lang/String; = "IMS_REG_STATUS"

.field private static final INVALID_PW_MISMATCH_ACTION:Ljava/lang/String; = "invalidPasswordMismatch"

.field private static final KT_RSSI_DISCONNECT_CNT_VALUE:I = 0x2

.field private static final LGE_AUTH_FAIL_NOTIFICATION_ACTION:Ljava/lang/String; = "com.lge.wifi.AUTH_FAIL_NOTIFICATION"

.field private static final LGE_EAP_ACTION:Ljava/lang/String; = "com.lge.eap.action"

.field private static final LGE_EAP_ACTION_EXTRA:Ljava/lang/String; = "eapEvent"

.field private static final LGE_EAP_AKA_AUTH_TIMEOUT:I = 0xd0

.field private static final LGE_EAP_AKA_NOTIFICATION:I = 0xce

.field private static final LGE_EAP_AKA_NOTIFICATION_ACTION_EXTRA:Ljava/lang/String; = "eapAkaNotification"

.field private static final LGE_EAP_AKA_UMTS_AUTH_ERROR:I = 0xcf

.field private static final LGE_EAP_AKA_UMTS_AUTH_ERROR_ACTION_EXTRA:Ljava/lang/String; = "eapAkaUmtsAuthError"

.field private static final LGE_EAP_FAILURE:I = 0xc9

.field private static final LGE_EAP_FAILURE_WITH_ERROR_CODE:I = 0xd1

.field private static final LGE_EAP_FAILURE_WITH_ERROR_CODE_ACTION_EXTRA:Ljava/lang/String; = "eapFailureWithErrorCode"

.field private static final LGE_EAP_METHOD:I = 0xcd

.field private static final LGE_EAP_METHOD_ACTION_METHOD_EXTRA:Ljava/lang/String; = "eapMethod"

.field private static final LGE_EAP_METHOD_ACTION_VENDOR_EXTRA:Ljava/lang/String; = "eapVendor"

.field private static final LGE_EAP_NOTIFICATION:I = 0xca

.field private static final LGE_EAP_NOTIFICATION_ACTION_EXTRA:Ljava/lang/String; = "eapNotification"

.field private static final LGE_EAP_NOTI_WAIT_MSECS:I = 0x7d0

.field private static final LGE_EAP_PROPOSED_METHOD:I = 0xcc

.field private static final LGE_EAP_SHOW_FAILURE_SKT:I = 0x12c

.field private static final LGE_EAP_STARTED:I = 0xcb

.field private static final LGE_EAP_SUCCESS:I = 0xc8

.field private static final LGE_EAP_UNKNOWN:I = 0x9

.field private static final LGE_RSSI_DISCONNECT_CNT_VALUE:I = 0x5

.field private static final LGE_SCAN_RESULT:I = 0x64

.field private static final LGE_SSID_AUTH_FAIL:I = 0x65

.field private static final LGU_NOTIFICATION:Ljava/lang/String; = "com.lgu.eap.NOTIFICATION"

.field private static final LOCK_ACCOUNT:I = 0x4fab

.field private static MANUAL_CONNECT:I = 0x0

.field public static final MESSAGE_BATTERY_PS_ACTIVATE:I = 0x3

.field public static final MESSAGE_CHECK_WIFISTATS:I = 0x1

.field private static final MESSAGE_DELAY_KT_PAYPOPUP:I = 0x8

.field private static final MESSAGE_DELETE_CONNECTLIST:I = 0x7

.field private static final MESSAGE_LGE_EAP:I = 0xfa0

.field private static final MESSAGE_PHONENUMBER_POLLING:I = 0x4

.field private static final MESSAGE_RSSI_POLLING:I = 0x5

.field private static final MESSAGE_SAVE_CONNECTLIST:I = 0x6

.field public static final MESSAGE_STATS_AP:I = 0x2

.field private static final MESSAGE_WIFI_SETTINGS_DIALOG:I = 0x9

.field private static final MSG:I = 0xb

.field private static final MSG_EVENT_NAME:Ljava/lang/String; = "MSG"

.field private static final MSG_NO_SERVICE_TIME_OUT:Ljava/lang/String; = "no_service_time_out"

.field private static final MSG_P2P_OFF_DELAY:Ljava/lang/String; = "p2p_off_delay"

.field private static final N3_WIFI_CUSTOM_EVENT:Ljava/lang/String; = "com.netcube.wifi.customevent"

.field private static final N3_WIFI_MSG:Ljava/lang/String; = "com.netcube.wifi.msg"

.field private static final N3_WIFI_NOTIFICATION:Ljava/lang/String; = "com.netcube.wifi.notification"

.field private static final NOTIFICATION:I = 0xa

.field private static final NOTIFICATION_EVENT_NAME:Ljava/lang/String; = "EAP-NOTIFICATION"

.field private static final NOTIFICATION_WIFI_CONNECTED_ID:Ljava/lang/String; = "WifiConnected.Notification"

.field private static final NOT_FOUND_USER:I = 0x4fa2

.field private static final P2P_OFF_DELAY_INTERVAL:I = 0xea60

.field private static final RSSI_POLLING_INTERVAL_MSECS:I = 0xbb8

.field private static final SCAN_RESULTS_NAME:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SSID_AUTH_FAIL_ID_NAME:Ljava/lang/String; = "id="

.field private static final SSID_AUTH_FAIL_NAME:Ljava/lang/String; = "auth_failures="

.field private static final SSID_TEMP_DISABLED_NAME:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TAG:Ljava/lang/String; = "WifiServerServiceExt"

.field public static UDBG:Z = false

.field private static final UNKNOWN:I = 0x9

.field public static final UPSELL_CHECK_FAIL:Ljava/lang/String; = "com.lge.upsell.Upsell.UPSELL_CHECK_FAIL"

.field public static final UPSELL_CHECK_SUCCESS:Ljava/lang/String; = "com.lge.upsell.Upsell.UPSELL_CHECK_SUCCESS"

.field public static final UPSELL_SVC_DATA_STOPPED:I = 0x4

.field public static final UPSELL_SVC_GOTO_NOSVC:I = 0x2

.field public static final UPSELL_SVC_GOTO_UPGRADE:I = 0x3

.field public static final UPSELL_SVC_STARTED:I = 0x1

.field public static final UPSELL_SVC_STATUS:Ljava/lang/String; = "status"

.field public static final UPSELL_SVC_STOP:Ljava/lang/String; = "com.lge.upsell.Upsell.UPSELL_STOP"

.field public static final UPSELL_SVC_STOPPED:I = 0x0

.field public static final USC_DEFAULT_HOTSPOT_PASSWORD:Ljava/lang/String; = "0000000000"

.field private static final VZW_OFFLOADING_TASK_STARTED_INTENT:Ljava/lang/String; = "com.lge.android.intent.action.VZW_OFFLOADING_TASK_STARTED"

.field private static final WIFIDIRECT_TIME:Ljava/lang/String; = "wifidirect_time"

.field private static final WIFI_ROAMING_MODE_HIGH_PERF:I = 0x2

.field private static final WIFI_ROAMING_MODE_NORMAL:I = 0x0

.field private static final WIFI_ROAMING_MODE_PERF:I = 0x1

.field private static final WIFI_ROAMING_MODE_ULTRA_HIGH_PERF:I = 0x3

.field private static final WIFI_RSSI_DISCONNECT_THRESHOLD:I = -0x55

.field private static final WIFI_SETTINGS_DIALOG_ACTIVITY:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsDialogActivity"

.field private static final WIFI_SETTINGS_DIALOG_DELAY_MSECS:I = 0x1388

.field private static WLAN_LGE_PASSPOINT_DEFAULT:Z = false

.field public static final WPS_NFC_CONFIG_TOKEN_SET_RECEIVED:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_CONFIG_TOKEN_SET_RECEIVED"

.field public static final WPS_NFC_CONFIG_TOKEN_SET_REQUEST:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_CONFIG_TOKEN_SET_REQUEST"

.field public static final WPS_NFC_HANDOVER_REQ_RECEIVED:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_HANDOVER_REQ_RECEIVED"

.field public static final WPS_NFC_HANDOVER_REQ_REQUEST:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_HADOVER_REQ_REQUEST"

.field public static final WPS_NFC_PWD_TOKEN_RECEIVED:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_PWD_TOKEN_RECEIVED"

.field public static final WPS_NFC_PWD_TOKEN_REQUEST:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_PWD_TOKEN_REQUEST"

.field public static final WPS_NFC_RX_HANDOVER_SEL_FINISHED:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_RX_HANDOVER_SEL_FINISHED"

.field public static final WPS_NFC_RX_HANDOVER_SEL_REQUEST:Ljava/lang/String; = "com.lge.wifi.WPS_NFC_RX_HANDOVER_SEL_REQUEST"

.field private static final eapAkaAuthTimeout:Ljava/lang/String; = "EAP-AKA-AUTH-TIMEOUT"

.field private static final eapAkaNotification:Ljava/lang/String; = "EAP-AKA-NOTIFICATION"

.field private static final eapAkaUmtsAuthError:Ljava/lang/String; = "EAP-AKA-UMTS-AUTH-ERROR"

.field private static final eapFailure:Ljava/lang/String; = "EAP-FAILURE"

.field private static final eapFailureWithErrorCode:Ljava/lang/String; = "EAP-FAILURE-WITH-ERROR-CODE"

.field private static final eapMethod:Ljava/lang/String; = "EAP-METHOD"

.field private static final eapNotification:Ljava/lang/String; = "EAP-NOTIFICATION"

.field private static final eapProposedMethod:Ljava/lang/String; = "EAP-PROPOSED-METHOD"

.field private static final eapStarted:Ljava/lang/String; = "EAP-STARTED"

.field private static final eapSuccess:Ljava/lang/String; = "EAP-SUCCESS"

.field public static isP2pConneted:Z

.field private static mEapMethodType:I

.field private static mEapNetId:I

.field private static mEapNotiMsg:Ljava/lang/String;

.field private static mGWSScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsWPSSuccess:Z

.field private static mLcdOnState:Z

.field private static mLgeEapAuthInfo:Ljava/lang/String;

.field private static mManualConnection:Z

.field private static mManualConnectionDelayed:Z

.field private static mMobileDataEnable:I

.field private static mP2pInterfaceName:Ljava/lang/String;

.field private static mRssiDisconnectCnt:I

.field private static mRssiPollState:Z

.field private static mRssiPollingCnt:I

.field private static mSecurityType:I

.field private static mSignalLevelThreshold:I

.field private static mStaInterfaceName:Ljava/lang/String;

.field private static mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

.field private static mWifiSettingStatus:I

.field private static mbIsUsbConnected:Z

.field private static sCheckToast:Z

.field private static sIsMultiSim:Z

.field private static sLastNetId:I

.field private static sPhoneCount:I

.field private static final sTargetProduct:Ljava/lang/String;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private agg:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

.field private alarmSender:Landroid/app/PendingIntent;

.field private isP2pMonitorStared:Z

.field private mActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoConnectionEnabled:Z

.field private mAutoConnectionEnabledSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;

.field private mBTAclCount:I

.field private mBootCompleted:Z

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDefaultChannel:I

.field private mDelayChangeP2pDeviceName:Z

.field private mDelayedONWaitingState:Z

.field private mDisabledNotificationShown:Z

.field private mEmergencyCallbackMode:Z

.field private mFirstUserSignOnSeen:Z

.field private mFirstWiFiOn:Z

.field private mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mIsDlnaReadyInDHCP:Z

.field private mIsVZWCaptivePortalPopUpShowing:Z

.field private mLgWifiInternetCheck:Lcom/lge/wifi/impl/LgWifiInternetCheck;

.field private mLgWifiTrafficPoller:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

.field private final mLgeEap:Z

.field private final mLgeKtCm:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoServiceTimeOut:I

.field private mNoServiceTimeOutIntent:Landroid/app/PendingIntent;

.field private mNotification:Landroid/app/Notification;

.field private mP2pDeviceNameSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;

.field private mP2pOffDelayCount:I

.field private mP2pOffDelayIntent:Landroid/app/PendingIntent;

.field private mP2pOffDelayTimeOut:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPollingCnt:I

.field private mPowerSaveActivatState:I

.field private mReceivedUSimReceiver:Z

.field private mRssiBasedOperationEnabled:Z

.field private mRssiBasedOperationEnabledSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;

.field private mRtspPlay:Z

.field private mSelNdef:Ljava/lang/String;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSetResetWifiConf:Z

.field private mSimAbsent:Z

.field private mSimInserted:Z

.field private mSoftapConfIsFirst:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThisIsFirstEnableing:Z

.field private mTxPowerMode:I

.field private mTxPowerModeSettingsObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;

.field private mVTStarted:Z

.field private mVZWCaptivePortalPopUp:Landroid/app/AlertDialog;

.field private mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

.field private mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

.field private mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

.field private mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

.field private mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

.field private mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

.field private mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

.field private mWifiOffloading:Lcom/lge/wifi/impl/offloading/WifiOffLoading;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

.field private mWifiServiceExtentsion:Lcom/lge/wifi/impl/WifiServiceExtension;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private msupplicant_state:Landroid/net/wifi/SupplicantState;

.field private ndefString:Ljava/lang/String;

.field private preSharedKey:Ljava/lang/String;

.field private prevState:Landroid/net/NetworkInfo$DetailedState;

.field private useIPPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "user"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    .line 309
    const-string v1, "wlan.lge.passpoint_setting"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    .line 356
    sput-object v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    .line 501
    const-string v1, "wlan0"

    sput-object v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mStaInterfaceName:Ljava/lang/String;

    .line 502
    const-string v1, "p2p-wlan0"

    sput-object v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pInterfaceName:Ljava/lang/String;

    .line 515
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mbIsUsbConnected:Z

    .line 527
    sput-object v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 549
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pConneted:Z

    .line 580
    sput v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 582
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z

    .line 585
    sput-object v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNotiMsg:Ljava/lang/String;

    .line 586
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsWPSSuccess:Z

    .line 588
    sput v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    .line 596
    sput v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->ASK_ON_CONNECTION:I

    .line 597
    sput v2, Lcom/lge/wifi/impl/WifiServerServiceExt;->MANUAL_CONNECT:I

    .line 598
    const/4 v1, 0x2

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->AUTO_CONNECT:I

    .line 624
    const/4 v1, 0x5

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiDisconnectCnt:I

    .line 625
    sput v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I

    .line 626
    sput-boolean v2, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollState:Z

    .line 627
    const/16 v1, -0x55

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    .line 629
    sput-boolean v2, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLcdOnState:Z

    .line 631
    sput v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiSettingStatus:I

    .line 640
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z

    .line 641
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnectionDelayed:Z

    .line 643
    const-string v1, "\t+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 690
    const/4 v1, 0x3

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->DefaultMacCheck:I

    .line 699
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->sIsMultiSim:Z

    .line 700
    sput v2, Lcom/lge/wifi/impl/WifiServerServiceExt;->sPhoneCount:I

    .line 718
    sput v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->sLastNetId:I

    .line 724
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    .line 733
    const-string v1, "wifiext_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 734
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-eqz v1, :cond_0

    .line 736
    :try_start_0
    const-string v1, "wifilgehidden_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_1
    return-void

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    move v1, v3

    .line 196
    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "WifiServerServiceExt"

    const-string v2, "Loading fail : libwifilgehidden_jni"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    .line 224
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    .line 327
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->ndefString:Ljava/lang/String;

    .line 333
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSelNdef:Ljava/lang/String;

    .line 353
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    .line 358
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 359
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    .line 364
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    .line 366
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

    .line 368
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgWifiInternetCheck:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .line 371
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgWifiTrafficPoller:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .line 373
    iput-boolean v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    .line 375
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBootCompleted:Z

    .line 376
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstWiFiOn:Z

    .line 378
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVTStarted:Z

    .line 379
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->prevState:Landroid/net/NetworkInfo$DetailedState;

    .line 380
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimAbsent:Z

    .line 381
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimInserted:Z

    .line 382
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSoftapConfIsFirst:Z

    .line 384
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z

    .line 388
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I

    .line 389
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayedONWaitingState:Z

    .line 390
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, "WIFI"

    const-string v2, ""

    invoke-direct {v0, v5, v3, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 392
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mReceivedUSimReceiver:Z

    .line 393
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEmergencyCallbackMode:Z

    .line 409
    iput v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPowerSaveActivatState:I

    .line 476
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsDlnaReadyInDHCP:Z

    .line 508
    new-instance v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    invoke-direct {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->agg:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    .line 520
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffloading:Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    .line 524
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useLgeKtCm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    .line 525
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useLgeEap()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEap:Z

    .line 650
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;

    .line 652
    const v0, 0xdbba0

    iput v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayTimeOut:I

    .line 653
    iput v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I

    .line 661
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 662
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pMonitorStared:Z

    .line 665
    iput v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I

    .line 666
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayChangeP2pDeviceName:Z

    .line 670
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z

    .line 673
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstUserSignOnSeen:Z

    .line 707
    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOutIntent:Landroid/app/PendingIntent;

    .line 709
    const v0, 0x36ee80

    iput v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOut:I

    .line 714
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSetResetWifiConf:Z

    .line 721
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsVZWCaptivePortalPopUpShowing:Z

    .line 748
    return-void
.end method

.method private CheckOperatorProfileValidity()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, -0x1

    .line 3755
    const/4 v5, 0x0

    .line 3756
    .local v5, "opeator_profile_found":Z
    const/4 v4, -0x1

    .line 3758
    .local v4, "network_id":I
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 3759
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_1

    .line 3789
    :cond_0
    :goto_0
    return-void

    .line 3763
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3764
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v6, "ollehWiFi"

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3765
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3766
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 3767
    const/4 v5, 0x1

    goto :goto_1

    .line 3772
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-nez v5, :cond_0

    .line 3773
    if-eq v4, v9, :cond_4

    .line 3774
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete operator profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v6, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->forgetNetwork(I)Z

    .line 3777
    :cond_4
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3778
    .local v3, "kt_profile":Landroid/net/wifi/WifiConfiguration;
    const-string v6, "ollehWiFi"

    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3779
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 3780
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 3781
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 3782
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v6, v3}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 3783
    if-eq v9, v4, :cond_0

    .line 3784
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add operator profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 3786
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_0
.end method

.method private IsEapAkaOrEapSimSecurity(I)Z
    .locals 6
    .param p1, "network_id"    # I

    .prologue
    .line 4257
    const/4 v0, 0x0

    .line 4259
    .local v0, "IsEapSimorAka":Z
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4260
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 4262
    .local v3, "item":Landroid/net/wifi/WifiConfiguration;
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p1, :cond_0

    .line 4263
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 4265
    :cond_1
    const/4 v0, 0x1

    .line 4271
    .end local v3    # "item":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return v0
.end method

.method private IsPSKSecurity(I)Z
    .locals 6
    .param p1, "network_id"    # I

    .prologue
    .line 4275
    const/4 v0, 0x0

    .line 4277
    .local v0, "IsPSK":Z
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4278
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 4280
    .local v3, "item":Landroid/net/wifi/WifiConfiguration;
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p1, :cond_0

    .line 4281
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4282
    const/4 v0, 0x1

    .line 4288
    .end local v3    # "item":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return v0
.end method

.method private IsSharedWepSecurity(I)Z
    .locals 6
    .param p1, "network_id"    # I

    .prologue
    .line 4292
    const/4 v0, 0x0

    .line 4294
    .local v0, "IsSharedWep":Z
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4295
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 4297
    .local v3, "item":Landroid/net/wifi/WifiConfiguration;
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p1, :cond_0

    .line 4298
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4301
    const-string v4, "WifiServerServiceExt"

    const-string v5, "OPEN SHARED wep AP is detected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    const/4 v0, 0x1

    .line 4308
    .end local v3    # "item":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return v0
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 192
    sput-boolean p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOut:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendDisconnectRssiLvl()V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sIsMultiSim:Z

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 192
    sput p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    return p0
.end method

.method static synthetic access$1476(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    or-int/2addr v0, p0

    sput v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sPhoneCount:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    return v0
.end method

.method static synthetic access$1702(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVZWCaptivePortalPopUp:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsVZWCaptivePortalPopUpShowing:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 192
    sput-boolean p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnectionDelayed:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->addDefaultProfile()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDlnaEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendProhibitConnectAP()V

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendOperatorProfileValidityCmd()V

    return-void
.end method

.method static synthetic access$2800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendAutoJoinStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->ASK_ON_CONNECTION:I

    return v0
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->MANUAL_CONNECT:I

    return v0
.end method

.method static synthetic access$3200(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setNetworkPreference()V

    return-void
.end method

.method static synthetic access$3302(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstWiFiOn:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSetResetWifiConf:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSetResetWifiConf:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getSoftAPState()I

    move-result v0

    return v0
.end method

.method static synthetic access$3800()Landroid/net/wifi/WifiManagerProxy;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    return-object v0
.end method

.method static synthetic access$3802(Landroid/net/wifi/WifiManagerProxy;)Landroid/net/wifi/WifiManagerProxy;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManagerProxy;

    .prologue
    .line 192
    sput-object p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVTStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLcdOnState:Z

    return v0
.end method

.method static synthetic access$4002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 192
    sput-boolean p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLcdOnState:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendKtScanInterval()V

    return-void
.end method

.method static synthetic access$4200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstUserSignOnSeen:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->ndefString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSelNdef:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/net/NetworkInfo$DetailedState;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollState:Z

    return v0
.end method

.method static synthetic access$4702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 192
    sput-boolean p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollState:Z

    return p0
.end method

.method static synthetic access$4800()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I

    return v0
.end method

.method static synthetic access$4802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 192
    sput p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I

    return p0
.end method

.method static synthetic access$4808()I
    .locals 2

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiPollingCnt:I

    return v0
.end method

.method static synthetic access$4900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiConfigStoreProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEmergencyCallbackMode:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->useIPPhone:Z

    return p1
.end method

.method static synthetic access$5102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 192
    sput p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiSettingStatus:I

    return p0
.end method

.method static synthetic access$5200(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->processLgeEapActionForKT(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->processLgeEapActionForLGU(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->processLgeEapActionForCommon(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5510()I
    .locals 2

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->DefaultMacCheck:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->DefaultMacCheck:I

    return v0
.end method

.method static synthetic access$5600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayTimeOut:I

    return v0
.end method

.method static synthetic access$6100(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I

    return v0
.end method

.method static synthetic access$6102(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I

    return p1
.end method

.method static synthetic access$6108(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayCount:I

    return v0
.end method

.method static synthetic access$6200(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayChangeP2pDeviceName:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDelayChangeP2pDeviceName:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pDeviceNameSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # I

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->deleteWifiConnectionList(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I

    return v0
.end method

.method static synthetic access$6808(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I

    return v0
.end method

.method static synthetic access$6810(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I

    return v0
.end method

.method static synthetic access$6900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/aggregation/VZWAggregation;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->agg:Lcom/lge/wifi/impl/aggregation/VZWAggregation;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/impl/offloading/WifiOffLoading;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffloading:Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendSetScanIntervalMax(Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->handleConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$7300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/lge/wifi/impl/WifiServerServiceExt;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkPCMobileGID()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mbIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$7602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 192
    sput-boolean p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mbIsUsbConnected:Z

    return p0
.end method

.method static synthetic access$7700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimAbsent:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimAbsent:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimInserted:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimInserted:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkUpdatePhoneNumber()V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSoftapConfIsFirst:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSoftApRenameToPhoneNumber()V

    return-void
.end method

.method static synthetic access$8200(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSimAkaProfiles(Z)V

    return-void
.end method

.method static synthetic access$8300(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->updateORGWifiSleepPolicy()V

    return-void
.end method

.method static synthetic access$8400(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setWifiPasspointFeature()V

    return-void
.end method

.method static synthetic access$8500(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pMonitorStared:Z

    return v0
.end method

.method static synthetic access$8502(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pMonitorStared:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setWiFiPowerSaveModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$8700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # I

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->batteryPsActivateMsgHandler(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I

    return v0
.end method

.method static synthetic access$9010(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I

    return v0
.end method

.method static synthetic access$9100()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiDisconnectCnt:I

    return v0
.end method

.method static synthetic access$9200(Lcom/lge/wifi/impl/WifiServerServiceExt;IILandroid/net/wifi/WifiInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->saveConnectionList(IILandroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # I

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->deleteConnectionList(I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabled:Z

    return v0
.end method

.method static synthetic access$9402(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabled:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTxPowerMode:I

    return v0
.end method

.method static synthetic access$9502(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTxPowerMode:I

    return p1
.end method

.method static synthetic access$9600(Lcom/lge/wifi/impl/WifiServerServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDefaultChannel:I

    return v0
.end method

.method static synthetic access$9602(Lcom/lge/wifi/impl/WifiServerServiceExt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDefaultChannel:I

    return p1
.end method

.method static synthetic access$9700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabled:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabled:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$9900(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServerServiceExt;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->alarmSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private addDefaultProfile()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1648
    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    if-ne v7, v2, :cond_0

    .line 1652
    const/4 v0, -0x1

    .line 1653
    .local v0, "netId":I
    const/4 v1, 0x0

    .line 1655
    .local v1, "newConfig":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    if-eqz v2, :cond_1

    .line 1656
    const-string v2, "WifiServerServiceExt"

    const-string v3, "to do profile add for testing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1660
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1661
    const-string v2, "LoveAP2"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1662
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 1667
    const-string v2, "skarnddPgk"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1668
    iput-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1673
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1674
    if-eq v5, v0, :cond_0

    .line 1677
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 1678
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    .line 1979
    .end local v0    # "netId":I
    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 1759
    .restart local v0    # "netId":I
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "214"

    const-string v4, "01"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1761
    const/4 v1, 0x0

    .line 1762
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1764
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1765
    const-string v2, "VodafoneWiFi"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1766
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1767
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1768
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1769
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1770
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1771
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add VDF ES Default Profile SIM: netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    if-eq v5, v0, :cond_0

    .line 1773
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 1774
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto :goto_0

    .line 1777
    :cond_2
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "208"

    const-string v4, "15"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1778
    const/4 v1, 0x0

    .line 1779
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1781
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1782
    const-string v2, "FreeWifi_secure"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1783
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1784
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1785
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1786
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1787
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1788
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add FREE FR Default Profile SIM: netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    if-eq v5, v0, :cond_0

    .line 1790
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 1791
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_0

    .line 1794
    :cond_3
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "268"

    const-string v4, "06"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1795
    const/4 v1, 0x0

    .line 1796
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1798
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1799
    const-string v2, "MEO-WiFi.x"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1800
    iput-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1801
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1802
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1803
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1804
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1805
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add TMN PT Default Profile SIM: netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    if-eq v5, v0, :cond_0

    .line 1807
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 1808
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_0

    .line 1915
    :cond_4
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "466"

    const-string v4, "01"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1916
    const-string v2, "WifiServerServiceExt"

    const-string v3, "Add default profile for FET CH of Taiwan operator"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1920
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1921
    const-string v2, "FET Wi-Fi Auto"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1922
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1923
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1924
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1926
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1927
    if-eq v5, v0, :cond_0

    .line 1929
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add default profile  SIM for FET CH : netId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 1931
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_0

    .line 1933
    :cond_5
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "466"

    const-string v4, "92"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "555"

    const-string v4, "44"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1934
    :cond_6
    const-string v2, "WifiServerServiceExt"

    const-string v3, "Add default profile for CHT CH of Taiwan operator"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1938
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1939
    const-string v2, "CHT Wi-Fi Auto"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1940
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1941
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1942
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1943
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1945
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1946
    if-eq v5, v0, :cond_0

    .line 1948
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add default profile  SIM for CHT CH : netId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 1950
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_0

    .line 1954
    :cond_7
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "454"

    const-string v4, "16"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "454"

    const-string v4, "19"

    invoke-static {v2, v3, v4}, Lcom/lge/wifi/config/LgeWifiConfig;->checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    :cond_8
    const-string v2, "WifiServerServiceExt"

    const-string v3, "Add default profile for HKT operator"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1958
    .restart local v1    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1959
    const-string v2, "PCCW1x"

    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1960
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1961
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1963
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1965
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1966
    if-eq v5, v0, :cond_9

    .line 1968
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add default profile SIM for HKT : netId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    .line 1970
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    .line 1972
    :cond_9
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ssid_update_completed"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private akaNotification(Ljava/lang/String;)Z
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2941
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2942
    const/4 v1, 0x0

    .line 2953
    :goto_0
    return v1

    .line 2945
    :cond_0
    if-eqz p1, :cond_1

    .line 2946
    const-string v1, "WifiServerServiceExt"

    const-string v2, "AKA Notification Intent: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.EAP_AKA_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2948
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "eapNotiMsg"

    const/16 v2, 0x1c

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2950
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2953
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private batteryPsActivateMsgHandler(I)V
    .locals 10
    .param p1, "batteryPsEvt"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5189
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getBatteryPsState()I

    move-result v0

    .line 5191
    .local v0, "batteryPsSate":I
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batteryPsActivateMsgHandler : state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    packed-switch v0, :pswitch_data_0

    .line 5415
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batteryPsActivateMsgHandler : unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5418
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5199
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 5204
    :pswitch_2
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2PConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5206
    :cond_1
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : startMonitoring"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    .line 5208
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v3, v7}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->setPowerSaveActivated(Z)V

    .line 5210
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->startMonitoring()V

    goto :goto_0

    .line 5212
    :cond_2
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    .line 5213
    .local v2, "wifiState":I
    if-eq v9, v2, :cond_3

    if-ne v8, v2, :cond_0

    .line 5215
    :cond_3
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : disable WiFi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5216
    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    .line 5217
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    if-eqz v3, :cond_0

    .line 5218
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManagerProxy;->setWifiEnabled(Z)V

    goto :goto_0

    .line 5226
    .end local v2    # "wifiState":I
    :pswitch_3
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : this is not treated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5244
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 5248
    :pswitch_5
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    .line 5249
    .restart local v2    # "wifiState":I
    if-eq v9, v2, :cond_4

    if-ne v8, v2, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2PConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5253
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : disable WiFi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5254
    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    .line 5255
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    if-eqz v3, :cond_0

    .line 5256
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManagerProxy;->setWifiEnabled(Z)V

    goto :goto_0

    .line 5264
    .end local v2    # "wifiState":I
    :pswitch_6
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : this is not treated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5272
    :pswitch_7
    invoke-direct {p0, v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    goto/16 :goto_0

    .line 5282
    :pswitch_8
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 5293
    :pswitch_9
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v3, v6}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->setPowerSaveActivated(Z)V

    .line 5295
    invoke-direct {p0, v9}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    goto/16 :goto_0

    .line 5300
    :pswitch_a
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    .line 5301
    .restart local v2    # "wifiState":I
    if-ne v9, v2, :cond_9

    .line 5302
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_5

    .line 5303
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->stopMonitoring()V

    .line 5305
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v3, v6}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->setPowerSaveActivated(Z)V

    .line 5307
    invoke-direct {p0, v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    goto/16 :goto_0

    .line 5308
    :cond_5
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_8

    .line 5309
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : DetailedState.DISCONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5312
    invoke-direct {p0, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    .line 5313
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MPCS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5314
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkWifiEnableCondition()Z

    move-result v1

    .line 5315
    .local v1, "ret":Z
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BATTERY_PS_EVENT_RESTORE, return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    if-eqz v1, :cond_0

    .line 5320
    .end local v1    # "ret":Z
    :cond_7
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    if-eqz v3, :cond_0

    .line 5321
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManagerProxy;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 5324
    :cond_8
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batteryPsActivateMsgHandler : unknown detailed state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5327
    :cond_9
    if-eq v7, v2, :cond_a

    if-nez v2, :cond_0

    .line 5330
    :cond_a
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : enalbe WiFi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    invoke-virtual {v3, v6}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;->setPowerSaveActivated(Z)V

    .line 5345
    invoke-direct {p0, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    .line 5346
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MPCS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5347
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkWifiEnableCondition()Z

    move-result v1

    .line 5348
    .restart local v1    # "ret":Z
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BATTERY_PS_EVENT_RESTORE1 return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    if-eqz v1, :cond_0

    .line 5353
    .end local v1    # "ret":Z
    :cond_c
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    if-eqz v3, :cond_0

    .line 5354
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManagerProxy;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 5360
    .end local v2    # "wifiState":I
    :pswitch_b
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : this is not treated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5370
    :pswitch_c
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 5382
    :pswitch_d
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    .line 5383
    .restart local v2    # "wifiState":I
    if-eq v7, v2, :cond_d

    if-nez v2, :cond_10

    .line 5385
    :cond_d
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : enalbe WiFi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5386
    invoke-direct {p0, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    .line 5387
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MPCS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5388
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkWifiEnableCondition()Z

    move-result v1

    .line 5389
    .restart local v1    # "ret":Z
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BATTERY_PS_EVENT_RESTORE, return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    if-eqz v1, :cond_0

    .line 5394
    .end local v1    # "ret":Z
    :cond_f
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    if-eqz v3, :cond_0

    .line 5395
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManagerProxy;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 5398
    :cond_10
    invoke-direct {p0, v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    goto/16 :goto_0

    .line 5403
    .end local v2    # "wifiState":I
    :pswitch_e
    invoke-direct {p0, v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setBatteryPsState(I)V

    .line 5405
    const-string v3, "WifiServerServiceExt"

    const-string v4, "batteryPsActivateMsgHandler : this is not treated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_c
    .end packed-switch

    .line 5199
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5244
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 5282
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 5370
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private checkMTSGID()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1616
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1618
    .local v1, "sim_value":Ljava/lang/String;
    const-string v0, ""

    .line 1619
    .local v0, "gid":Ljava/lang/String;
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " gid value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string v3, "302660"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "302370"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1623
    :cond_0
    const-string v3, "2c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "aa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1624
    :cond_1
    const-string v2, "WifiServerServiceExt"

    const-string v3, "MTS inserted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const/4 v2, 0x1

    .line 1631
    :cond_2
    :goto_0
    return v2

    .line 1627
    :cond_3
    const-string v3, "WifiServerServiceExt"

    const-string v4, " MTS SIM inserted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkNewUpdatedMDN()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3279
    const/4 v0, 0x0

    .line 3280
    .local v0, "mNewMdn":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3281
    .local v1, "mOldMdn":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3282
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 3283
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_passwd"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3285
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3288
    const/4 v3, 0x1

    .line 3295
    :cond_0
    return v3
.end method

.method private checkPCMobileGID()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1595
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "sim_value":Ljava/lang/String;
    const-string v0, ""

    .line 1599
    .local v0, "gid":Ljava/lang/String;
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " gid value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v3, "302220"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "302221"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1603
    :cond_0
    const-string v3, "5043"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1604
    const-string v2, "WifiServerServiceExt"

    const-string v3, " PC mobile SIM inserted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v2, 0x1

    .line 1611
    :cond_1
    :goto_0
    return v2

    .line 1607
    :cond_2
    const-string v3, "WifiServerServiceExt"

    const-string v4, " TELUS/Koodo SIM inserted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkRgsOperator()Z
    .locals 3

    .prologue
    .line 1636
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, "sim_value":Ljava/lang/String;
    const-string v1, "302720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "302370"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "302660"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1638
    :cond_0
    const-string v1, "WifiServerServiceExt"

    const-string v2, " RGS SIM inserted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v1, 0x1

    .line 1641
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1982
    const-string v3, "LoveAP2"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1983
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1984
    .local v0, "testBit":Ljava/util/BitSet;
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1985
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2126
    .end local v0    # "testBit":Ljava/util/BitSet;
    :cond_0
    :goto_0
    return v1

    .line 1988
    :cond_1
    const-string v3, "attwifi"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "attwifi"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1990
    :cond_2
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 2126
    goto :goto_0

    .line 2013
    :cond_4
    const-string v3, "T wifi zone_secure"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2019
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 2025
    :cond_5
    const-string v3, "T wifi zone"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2031
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 2043
    :cond_6
    const-string v3, "ollehWiFi"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2046
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_7
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    goto/16 :goto_0

    .line 2056
    :cond_8
    const-string v3, "VodafoneWiFi"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2057
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2063
    :cond_9
    const-string v3, "FreeWifi_secure"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2064
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2070
    :cond_a
    const-string v3, "MEO-WiFi.x"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2071
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2077
    :cond_b
    const-string v3, "BELL_WIFI"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "5099251212"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "SaskTel Select Wi-Fi 1"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2080
    :cond_c
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2086
    :cond_d
    const-string v3, "#TELUSDirect"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2087
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2093
    :cond_e
    const-string v3, "MTS Wireless"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2094
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2100
    :cond_f
    const-string v3, "U+zone"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "U+zone_5G"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "5G_U+zone"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "Wireless@SGx"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "Singtel WIFI"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2105
    :cond_10
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2111
    :cond_11
    const-string v3, "FET Wi-Fi Auto"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2112
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 2118
    :cond_12
    const-string v3, "CHT Wi-Fi Auto"

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2119
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method private checkSetupWizardReqSupportedModel()Z
    .locals 2

    .prologue
    .line 8569
    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    const-string v1, "g3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    const-string v1, "altev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    const-string v1, "g2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    const-string v1, "x5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    const-string v1, "e7lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    const-string v1, "e9lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->sTargetProduct:Ljava/lang/String;

    const-string v1, "x10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8571
    :cond_0
    const/4 v0, 0x0

    .line 8574
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkStringByte(Ljava/lang/String;)I
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 8047
    const/4 v0, 0x0

    .line 8048
    .local v0, "byteCount":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 8049
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 8050
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 8051
    .local v1, "c":C
    const/16 v4, 0x80

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v0, v4

    .line 8049
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8051
    :cond_0
    const/16 v4, 0x800

    if-ge v1, v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    goto :goto_1

    .line 8053
    .end local v1    # "c":C
    :cond_2
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postfix byte check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8054
    return v0
.end method

.method private checkUpdatePhoneNumber()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/16 v13, 0xf

    const/4 v12, 0x0

    const-wide/16 v10, 0x2710

    const/4 v9, 0x4

    .line 3049
    const-string v6, "WifiServerServiceExt"

    const-string v7, "checkUpdatePhoneNumber "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MPCS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3062
    const/4 v3, 0x0

    .line 3063
    .local v3, "phoneNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    if-nez v6, :cond_2

    .line 3064
    const-string v6, "WifiServerServiceExt"

    const-string v7, "mContext is null in checkUpdatePhoneNumber()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3067
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 3068
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ssid_update_done"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_a

    .line 3069
    if-eqz v5, :cond_9

    .line 3070
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 3071
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v13, :cond_8

    .line 3072
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3073
    .local v2, "mConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_3

    .line 3074
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    .end local v2    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3075
    .restart local v2    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 3076
    const-string v6, ""

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3082
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MPCS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3083
    :cond_4
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3084
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lg_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v3, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3096
    :goto_1
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Updated AP SSID ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 3098
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ssid_update_done"

    invoke-static {v6, v7, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3086
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lg_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v3, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 3089
    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3090
    .local v4, "randomUUID":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3091
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lg_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 3093
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lg_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 3099
    .end local v2    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "randomUUID":Ljava/lang/String;
    :cond_8
    iget v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I

    if-lez v6, :cond_1

    .line 3100
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phone number =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-virtual {v6, v9, v10, v11}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3104
    :cond_9
    const-string v6, "WifiServerServiceExt"

    const-string v7, "TelephonyManager is null, wait 10 sec "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-virtual {v6, v9, v10, v11}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3108
    :cond_a
    const-string v6, "WifiServerServiceExt"

    const-string v7, "SSID Setup is already done"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3111
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_b
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TLS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3112
    const/4 v3, 0x0

    .line 3113
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 3114
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ssid_update_done"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_14

    .line 3115
    if-eqz v5, :cond_13

    .line 3116
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 3117
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v13, :cond_12

    .line 3118
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3119
    .local v1, "imsi":Ljava/lang/String;
    const-string v6, "gsm.sim.operator.gid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3121
    .local v0, "gid":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 3122
    .restart local v2    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_c

    .line 3123
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    .end local v2    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3124
    .restart local v2    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    .line 3125
    const-string v6, ""

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3130
    :cond_c
    const-string v6, "Android AP"

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3132
    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 3134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 3136
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangeDefaultHotspotSSID()::IMSI = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangeDefaultHotspotSSID()::GID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    const-string v6, "WifiServerServiceExt"

    const-string v7, "imsi is not null,gid is not null~~~~~~"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    const-string v6, "4B4F"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3141
    const-string v6, "Koodo LTE"

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3142
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangeDefaultHotspotSSID():Setup SSID ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :goto_2
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Updated AP SSID ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 3173
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ssid_update_done"

    invoke-static {v6, v7, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3143
    :cond_d
    const-string v6, "5455"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3145
    const-string v6, "TELUS LTE"

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3146
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangeDefaultHotspotSSID():Setup SSID ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3147
    :cond_e
    const-string v6, "5043"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3149
    const-string v6, "PC mobile LTE"

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3150
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangeDefaultHotspotSSID():Setup SSID ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3154
    :cond_f
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangeDefaultHotspotSSID():Setup SSID ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3160
    :cond_10
    const-string v6, "WifiServerServiceExt"

    const-string v7, "imsi or gid is empty , Set default SSID with Android AP"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3166
    :cond_11
    const-string v6, "WifiServerServiceExt"

    const-string v7, "SIM Info is not available, Set default SSID with Android AP"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-virtual {v6, v9, v10, v11}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3174
    .end local v0    # "gid":Ljava/lang/String;
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    iget v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPollingCnt:I

    if-lez v6, :cond_1

    .line 3175
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phone number =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-virtual {v6, v9, v10, v11}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3180
    :cond_13
    const-string v6, "WifiServerServiceExt"

    const-string v7, "TelephonyManager is null, wait 10 sec "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-virtual {v6, v9, v10, v11}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3184
    :cond_14
    const-string v6, "WifiServerServiceExt"

    const-string v7, "SSID Setup is already done"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteConnectionList(I)V
    .locals 2
    .param p1, "success"    # I

    .prologue
    .line 5553
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-nez v0, :cond_0

    .line 5554
    new-instance v0, Lcom/lge/wifi/impl/WifiConnectionList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiConnectionList;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    .line 5556
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-nez v0, :cond_1

    .line 5557
    new-instance v0, Lcom/lge/wifi/impl/WifiConnectionList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiConnectionList;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    .line 5560
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-nez v0, :cond_3

    .line 5574
    :cond_2
    :goto_0
    return-void

    .line 5564
    :cond_3
    if-nez p1, :cond_4

    .line 5565
    const-string v0, "WifiServerServiceExt"

    const-string v1, "delete successed connection list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiConnectionList;->clear()Z

    .line 5567
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiConnectionList;->saveListToFile()V

    goto :goto_0

    .line 5570
    :cond_4
    const-string v0, "WifiServerServiceExt"

    const-string v1, "delete failed connection list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiConnectionList;->clear()Z

    .line 5572
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiConnectionList;->saveListToFile()V

    goto :goto_0
.end method

.method private deleteWifiConnectionList(I)V
    .locals 4
    .param p1, "success"    # I

    .prologue
    .line 5002
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5007
    :goto_0
    return-void

    .line 5005
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private enableSimAkaNetworks(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5887
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ATT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5888
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_connect"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 5889
    const-string v3, "WifiServerServiceExt"

    const-string v4, "Ignore Network Enable when AutoConnection is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    :cond_0
    :goto_0
    return-void

    .line 5894
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v3

    if-ne v3, v5, :cond_2

    if-ne p1, v5, :cond_2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 5897
    const-string v3, "WifiServerServiceExt"

    const-string v4, "enableSimAkaNetworks is skipped"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5908
    :cond_2
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 5910
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    .line 5911
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5912
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 5915
    :cond_4
    if-eqz p1, :cond_5

    .line 5918
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    goto :goto_1

    .line 5922
    :cond_5
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    goto :goto_1
.end method

.method private getBatteryPsState()I
    .locals 1

    .prologue
    .line 4944
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPowerSaveActivatState:I

    return v0
.end method

.method private getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getDlnaEnabled()Z
    .locals 2

    .prologue
    .line 4009
    const-string v0, "dhcp.dlna.using"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getFastL2RoamingDisabled()Z
    .locals 3

    .prologue
    .line 8317
    const/4 v0, 0x0

    .line 8318
    .local v0, "bRet":Z
    const-string v2, "wlan.fastl2roaming.notuse"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8320
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 8321
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 8322
    const/4 v0, 0x1

    .line 8326
    :cond_0
    return v0
.end method

.method public static getInstance()Lcom/lge/wifi/impl/WifiServerServiceExt;
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiServerManager;->getWifiServerServiceExtIface()Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiServerServiceExt;

    return-object v0
.end method

.method private getLgeEapMethodExtraInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 4460
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4461
    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 4462
    .local v6, "value":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 4463
    const/4 v7, 0x0

    .line 4479
    :goto_0
    return-object v7

    .line 4465
    :cond_0
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 4467
    .local v5, "token":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4468
    .local v4, "nameValue":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 4465
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4472
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4474
    const/4 v7, 0x1

    aget-object v6, v4, v7

    .end local v4    # "nameValue":[Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    :cond_3
    move-object v7, v6

    .line 4479
    goto :goto_0
.end method

.method private getSecurityType()I
    .locals 1

    .prologue
    .line 2694
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSecurityType:I

    return v0
.end method

.method private getSoftAPState()I
    .locals 3

    .prologue
    .line 2970
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2973
    :goto_0
    return v1

    .line 2971
    :catch_0
    move-exception v0

    .line 2972
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiServerServiceExt"

    const-string v2, "getSoftAPState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getSoftApMaxuserInRoaming()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 3361
    const/4 v0, 0x1

    .line 3362
    .local v0, "DEFAULT_MAX_USER_IN_GSM_ROAMING":I
    const/4 v6, 0x1

    .line 3363
    .local v6, "roamingState":I
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_chameleon_roaming_type"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 3365
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SPR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v5, 0x8

    .line 3366
    .local v5, "maxUser":I
    :goto_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "/carrier/wifi/hm"

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3367
    .local v3, "cmln_sap_h_maxuser":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v7, "/carrier/wifi/dm"

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3368
    .local v1, "cmln_sap_d_maxuser":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v7, "/carrier/wifi/gm"

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3369
    .local v2, "cmln_sap_g_maxuser":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    const-string v7, "/carrier/wifi/im"

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3371
    .local v4, "cmln_sap_i_maxuser":Ljava/lang/String;
    if-ne v9, v6, :cond_3

    .line 3372
    invoke-direct {p0, v3, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    .line 3380
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isNetworkTypeGSM()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3381
    invoke-direct {p0, v2, v9}, Lcom/lge/wifi/impl/WifiServerServiceExt;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    .line 3384
    :cond_1
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hotspot roaming type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " max user : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    return v5

    .line 3365
    .end local v1    # "cmln_sap_d_maxuser":Ljava/lang/String;
    .end local v2    # "cmln_sap_g_maxuser":Ljava/lang/String;
    .end local v3    # "cmln_sap_h_maxuser":Ljava/lang/String;
    .end local v4    # "cmln_sap_i_maxuser":Ljava/lang/String;
    .end local v5    # "maxUser":I
    :cond_2
    const/4 v5, 0x5

    goto :goto_0

    .line 3373
    .restart local v1    # "cmln_sap_d_maxuser":Ljava/lang/String;
    .restart local v2    # "cmln_sap_g_maxuser":Ljava/lang/String;
    .restart local v3    # "cmln_sap_h_maxuser":Ljava/lang/String;
    .restart local v4    # "cmln_sap_i_maxuser":Ljava/lang/String;
    .restart local v5    # "maxUser":I
    :cond_3
    const/4 v7, 0x3

    if-ne v7, v6, :cond_4

    .line 3374
    invoke-direct {p0, v1, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 3375
    :cond_4
    const/4 v7, 0x2

    if-ne v7, v6, :cond_0

    .line 3376
    invoke-direct {p0, v4, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1
.end method

.method private getWifiPasspointEnabled()I
    .locals 4

    .prologue
    .line 3878
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    if-eqz v1, :cond_0

    .line 3879
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_passpoint_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3888
    .local v0, "nWifiPasspointEnabled":I
    :goto_0
    return v0

    .line 3882
    .end local v0    # "nWifiPasspointEnabled":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "nWifiPasspointEnabled":I
    goto :goto_0
.end method

.method private getWpsNfcHandoverNdef(I)Ljava/lang/String;
    .locals 4
    .param p1, "method"    # I

    .prologue
    .line 3819
    const/4 v0, 0x0

    .line 3824
    .local v0, "nfcNDEF":Ljava/lang/String;
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    if-eqz v1, :cond_0

    .line 3825
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: getWpsNfcHandoverNdef method : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    :cond_0
    invoke-static {p1}, Lcom/lge/wifi/impl/WifiLgeExtNative;->getWpsNfcHandoverNdef(I)Ljava/lang/String;

    move-result-object v0

    .line 3828
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    if-eqz v1, :cond_1

    .line 3829
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: getWpsNfcHandoverNdef NDEF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    :cond_1
    return-object v0
.end method

.method private handleConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x1

    .line 4221
    const/4 v0, 0x0

    .line 4223
    .local v0, "auth_fail_noti":Z
    if-eqz p1, :cond_0

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 4224
    :cond_0
    const-string v3, "WifiServerServiceExt"

    const-string v4, "handleConfiguredNetworksChanged invalid network id"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    :cond_1
    :goto_0
    return-void

    .line 4228
    :cond_2
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getBootCompleted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4229
    const-string v3, "WifiServerServiceExt"

    const-string v4, "Booting is not completed yet"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4233
    :cond_3
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_5

    .line 4234
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->IsPSKSecurity(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4236
    const/4 v0, 0x1

    .line 4238
    :cond_4
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->IsSharedWepSecurity(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4240
    const/4 v0, 0x1

    .line 4244
    :cond_5
    if-ne v0, v5, :cond_1

    .line 4245
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.wifi.AUTH_FAIL_NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4246
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "authfail_networkid"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4247
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4248
    iget-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v3, :cond_1

    .line 4249
    new-instance v2, Landroid/content/Intent;

    const-string v3, "invalidPasswordMismatch"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4250
    .local v2, "intentKT":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4251
    const-string v3, "WifiServerServiceExt"

    const-string v4, "send broadcast OEM Extension INVALID password mismatch"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLgeAuthFailEvent(Ljava/lang/String;)V
    .locals 11
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 4190
    const/4 v4, -0x1

    .line 4191
    .local v4, "network_id":I
    const/4 v1, 0x0

    .line 4193
    .local v1, "auth_fail_cnt":I
    :try_start_0
    const-string v7, "id="

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 4194
    .local v6, "nid_start_index":I
    const-string v7, "auth_failures="

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 4195
    .local v2, "auth_start_index":I
    if-eq v6, v10, :cond_0

    if-ne v2, v10, :cond_1

    .line 4218
    .end local v2    # "auth_start_index":I
    .end local v6    # "nid_start_index":I
    :cond_0
    :goto_0
    return-void

    .line 4199
    .restart local v2    # "auth_start_index":I
    .restart local v6    # "nid_start_index":I
    :cond_1
    const-string v7, "id="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 4200
    const-string v7, " "

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 4201
    .local v5, "nid_end_index":I
    const-string v7, "auth_failures="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 4202
    const-string v7, " "

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 4203
    .local v0, "auth_end_index":I
    if-lez v6, :cond_2

    if-ge v6, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 4204
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4205
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4206
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network_id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", auth_fail_cnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4212
    :cond_2
    if-eq v4, v10, :cond_0

    const/4 v7, 0x2

    if-ne v7, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getBootCompleted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4213
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DCM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->IsEapAkaOrEapSimSecurity(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4214
    const-string v7, "WifiServerServiceExt"

    const-string v8, "IsEapAkaOrEapSimSecurity is true, disable network"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(II)Z

    goto/16 :goto_0

    .line 4208
    .end local v0    # "auth_end_index":I
    .end local v2    # "auth_start_index":I
    .end local v5    # "nid_end_index":I
    .end local v6    # "nid_start_index":I
    :catch_0
    move-exception v3

    .line 4209
    .local v3, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method private handleLgeEapEvent(ILjava/lang/String;)V
    .locals 12
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 4313
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.lge.eap.action"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4314
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "eapEvent"

    invoke-virtual {v3, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4315
    const/4 v4, 0x1

    .line 4317
    .local v4, "isEapEvent":Z
    sparse-switch p1, :sswitch_data_0

    .line 4440
    const/4 v4, 0x0

    .line 4448
    :cond_0
    :goto_0
    :sswitch_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 4450
    :try_start_0
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 4455
    :cond_1
    :goto_1
    return-void

    .line 4323
    :sswitch_1
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4324
    .local v0, "dataTokens":[Ljava/lang/String;
    const/16 v8, 0x1c

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 4325
    .local v6, "msg":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 4326
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGE_EAP_NOTIFICATION_ACTION_EXTRA : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    const-string v8, "eapNotification"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4332
    .end local v0    # "dataTokens":[Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    :sswitch_2
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsWPSSuccess:Z

    .line 4334
    const/4 v8, -0x1

    sput v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    goto :goto_0

    .line 4339
    :sswitch_3
    const-string v8, "vendor"

    invoke-direct {p0, p2, v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getLgeEapMethodExtraInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4340
    .local v7, "vendor":Ljava/lang/String;
    const-string v8, "method"

    invoke-direct {p0, p2, v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getLgeEapMethodExtraInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4342
    .local v5, "method":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 4343
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGE_EAP_PROPOSED_METHOD_ACTION extra... - vendor : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", method : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    const/4 v1, -0x1

    .line 4347
    .local v1, "dec":I
    const/16 v8, 0xa

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 4351
    :goto_2
    const-string v8, "eapVendor"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4353
    const/16 v8, 0xa

    :try_start_2
    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 4357
    :goto_3
    const-string v8, "eapMethod"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4348
    :catch_0
    move-exception v2

    .line 4349
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4354
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4355
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4362
    .end local v1    # "dec":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "method":Ljava/lang/String;
    .end local v7    # "vendor":Ljava/lang/String;
    :sswitch_4
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4363
    .restart local v0    # "dataTokens":[Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v7, v0, v8

    .line 4364
    .restart local v7    # "vendor":Ljava/lang/String;
    const/4 v8, 0x5

    aget-object v5, v0, v8

    .line 4366
    .restart local v5    # "method":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 4367
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGE_EAP_METHOD_ACTION extra... - vendor : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", method : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    const/4 v1, -0x1

    .line 4371
    .restart local v1    # "dec":I
    const/16 v8, 0xa

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    .line 4375
    :goto_4
    const-string v8, "eapVendor"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4377
    const/16 v8, 0xa

    :try_start_4
    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    .line 4381
    :goto_5
    const-string v8, "eapMethod"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4383
    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    .line 4384
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mEapMethodType :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4372
    :catch_2
    move-exception v2

    .line 4373
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4378
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 4379
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4390
    .end local v0    # "dataTokens":[Ljava/lang/String;
    .end local v1    # "dec":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "method":Ljava/lang/String;
    .end local v7    # "vendor":Ljava/lang/String;
    :sswitch_5
    const/16 v8, 0x20

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 4391
    .restart local v6    # "msg":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 4392
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGE_EAP_AKA_NOTIFICATION_ACTION_EXTRA : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    const/4 v1, -0x1

    .line 4395
    .restart local v1    # "dec":I
    const/16 v8, 0xa

    :try_start_5
    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v1

    .line 4399
    :goto_6
    const-string v8, "eapAkaNotification"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4396
    :catch_4
    move-exception v2

    .line 4397
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4404
    .end local v1    # "dec":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "msg":Ljava/lang/String;
    :sswitch_6
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4405
    .restart local v0    # "dataTokens":[Ljava/lang/String;
    aget-object v8, v0, v11

    if-eqz v8, :cond_0

    .line 4406
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGE_EAP_AKA_UMTS_AUTH_ERROR_ACTION_EXTRA : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    const/4 v1, -0x1

    .line 4409
    .restart local v1    # "dec":I
    const/4 v8, 0x1

    :try_start_6
    aget-object v8, v0, v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v1

    .line 4413
    :goto_7
    const-string v8, "eapAkaUmtsAuthError"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4410
    :catch_5
    move-exception v2

    .line 4411
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4420
    .end local v0    # "dataTokens":[Ljava/lang/String;
    .end local v1    # "dec":I
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_7
    const/16 v8, 0x27

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 4421
    .restart local v6    # "msg":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 4422
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGE_EAP_FAILURE_WITH_ERROR_CODE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    const/4 v1, -0x1

    .line 4425
    .restart local v1    # "dec":I
    const/16 v8, 0xa

    :try_start_7
    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result v1

    .line 4429
    :goto_8
    const-string v8, "eapFailureWithErrorCode"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4426
    :catch_6
    move-exception v2

    .line 4427
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4434
    .end local v1    # "dec":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "msg":Ljava/lang/String;
    :sswitch_8
    const-string v8, "WifiServerServiceExt"

    const-string v9, "WPS_SUCCESS_EVENT"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4435
    sput-boolean v11, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsWPSSuccess:Z

    .line 4436
    const/4 v4, 0x0

    .line 4438
    goto/16 :goto_0

    .line 4452
    :catch_7
    move-exception v2

    .line 4453
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleLgeEapEvent - error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4317
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0xce -> :sswitch_5
        0xcf -> :sswitch_6
        0xd0 -> :sswitch_0
        0xd1 -> :sswitch_7
        0x24008 -> :sswitch_8
    .end sparse-switch
.end method

.method private initCheckWifiEnabledBefore()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1576
    iget-boolean v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    if-ne v2, v4, :cond_0

    .line 1577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, "WpaProfileFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v1, "profileFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 1582
    const-string v4, "WifiServerServiceExt"

    const-string v5, "WpaProfileFile exists"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    .line 1590
    .end local v0    # "WpaProfileFile":Ljava/lang/String;
    .end local v1    # "profileFile":Ljava/io/File;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    if-nez v4, :cond_2

    :goto_1
    return v2

    .line 1585
    .restart local v0    # "WpaProfileFile":Ljava/lang/String;
    .restart local v1    # "profileFile":Ljava/io/File;
    :cond_1
    const-string v4, "WifiServerServiceExt"

    const-string v5, "WpaProfileFile doesn\'t exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iput-boolean v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    goto :goto_0

    .end local v0    # "WpaProfileFile":Ljava/lang/String;
    .end local v1    # "profileFile":Ljava/io/File;
    :cond_2
    move v2, v3

    .line 1590
    goto :goto_1
.end method

.method private static ipAddrToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "addrInt"    # I

    .prologue
    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCorporationHotspot(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 6122
    const-string v0, "KBS_FMC"

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6123
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6127
    :cond_0
    const/4 v0, 0x1

    .line 6130
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLgeHotspot(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 6134
    const-string v0, "uLGE_MC"

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mcwifi_m"

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mc_intra"

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6137
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6141
    :cond_1
    const/4 v0, 0x1

    .line 6144
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkTypeGSM()Z
    .locals 6

    .prologue
    .line 3390
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3391
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    .line 3394
    .local v1, "networkType":I
    if-eqz v2, :cond_0

    .line 3395
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v1

    .line 3396
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkTypeGSM(), networkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3402
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3415
    :pswitch_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 3398
    :catch_0
    move-exception v0

    .line 3399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3410
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_1

    .line 3402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWifiOnlyDevice()Z
    .locals 2

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3601
    const/4 v0, 0x0

    .line 3603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepAlivePacketTimeSet(I)Z
    .locals 4
    .param p1, "sec"    # I

    .prologue
    const/4 v0, 0x0

    .line 2782
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    if-nez v1, :cond_1

    .line 2783
    const-string v1, "WifiServerServiceExt"

    const-string v2, "setKeepAlivePacketInterval is skipped if not WCN chip. it must set driver (30 sec)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_0
    :goto_0
    return v0

    .line 2787
    :cond_1
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeepAlivePacketInterval msec : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2791
    invoke-static {p1}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setKeepAlivePacketInterval(I)Z

    move-result v0

    goto :goto_0
.end method

.method private notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Landroid/content/Intent;)V
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 2699
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->prevState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_4

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_4

    .line 2700
    const-string v1, "wifiInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 2701
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 2703
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->addWifiConnectionList(II)V

    .line 2707
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendUpdateNetworkPri(I)V

    .line 2710
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->notifyWifiConnect(Landroid/net/wifi/WifiInfo;)V

    .line 2713
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendFastL2Roaming(I)V

    .line 2716
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setConnectionNotificationVisible(ZLjava/lang/String;)V

    .line 2719
    :cond_0
    const-wide/16 v2, 0x4b0

    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setShowKTPayPopupDelay(ZJ)V

    .line 2721
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->notifyWarning()V

    .line 2729
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    .line 2730
    :cond_2
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->prevState:Landroid/net/NetworkInfo$DetailedState;

    .line 2732
    :cond_3
    return-void

    .line 2723
    :cond_4
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->prevState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_1

    .line 2724
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->notifyWifiDisconnect(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2725
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setConnectionNotificationVisible(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private notifyWarning()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2738
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2755
    :cond_0
    :goto_0
    return-void

    .line 2742
    :cond_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getSecurityType()I

    move-result v0

    if-nez v0, :cond_2

    .line 2743
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->sp_wifi_notify_open_AP_connect_NORMAL:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2747
    :cond_2
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getSecurityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->sp_wifi_notify_wep_ap_connect_NORMAL:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private notifyWifiConnect(Landroid/net/wifi/WifiInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v4, 0x0

    .line 2809
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return-void

    .line 2813
    :cond_1
    const/4 v0, 0x0

    .line 2814
    .local v0, "mStyle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2815
    .local v1, "message":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2816
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v3, Lcom/lge/internal/R$string;->sp_wifi_connected_notification_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2817
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2818
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 2819
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private parseGWSScanResult(Ljava/lang/String;)Lcom/kt/wifiapi/GWSScanResult;
    .locals 20
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 5626
    const/4 v2, 0x0

    .line 5627
    .local v2, "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    if-eqz p1, :cond_2

    .line 5632
    sget-object v17, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResultCache:Landroid/util/LruCache;

    monitor-enter v17

    .line 5633
    :try_start_0
    sget-object v16, Lcom/lge/wifi/impl/WifiServerServiceExt;->scanResultPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v13

    .line 5634
    .local v13, "result":[Ljava/lang/String;
    const/16 v16, 0x5

    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    array-length v0, v13

    move/from16 v16, v0

    const/16 v18, 0x8

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    .line 5635
    const/16 v16, 0x0

    aget-object v4, v13, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5642
    .local v4, "bssid":Ljava/lang/String;
    const/16 v16, 0x1

    :try_start_1
    aget-object v16, v13, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5643
    .local v7, "frequency":I
    const/16 v16, 0x2

    aget-object v16, v13, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 5648
    .local v6, "level":I
    if-lez v6, :cond_0

    .line 5649
    add-int/lit16 v6, v6, -0x100

    .line 5656
    :cond_0
    :goto_0
    const/16 v16, 0x3

    :try_start_2
    aget-object v5, v13, v16

    .line 5657
    .local v5, "flags":Ljava/lang/String;
    const/16 v16, 0x4

    aget-object v16, v13, v16

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiSsidEx;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v15

    .line 5658
    .local v15, "wifiSsid":Landroid/net/wifi/WifiSsid;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5659
    .local v3, "ssid":Ljava/lang/String;
    :goto_1
    const-string v8, "Null"

    .line 5660
    .local v8, "vendorSpecificOUI":Ljava/lang/String;
    const-string v9, "Null"

    .line 5661
    .local v9, "vendorSpecificContents":Ljava/lang/String;
    const-string v10, "Null"

    .line 5662
    .local v10, "BSSLoadElement":Ljava/lang/String;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v18, 0x6

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 5663
    const/16 v16, 0x5

    aget-object v10, v13, v16

    .line 5674
    :cond_1
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5675
    .local v12, "key":Ljava/lang/String;
    sget-object v16, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResultCache:Landroid/util/LruCache;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kt/wifiapi/GWSScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5676
    .end local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .local v14, "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v14, :cond_6

    .line 5677
    :try_start_3
    iput v6, v14, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 5678
    iput-object v3, v14, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 5679
    iput-object v5, v14, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 5680
    iput v7, v14, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 5681
    iput-object v8, v14, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 5682
    iput-object v9, v14, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 5683
    iput-object v10, v14, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v14

    .line 5699
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "flags":Ljava/lang/String;
    .end local v6    # "level":I
    .end local v7    # "frequency":I
    .end local v8    # "vendorSpecificOUI":Ljava/lang/String;
    .end local v9    # "vendorSpecificContents":Ljava/lang/String;
    .end local v10    # "BSSLoadElement":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    :goto_3
    :try_start_4
    monitor-exit v17

    .line 5702
    .end local v13    # "result":[Ljava/lang/String;
    :cond_2
    return-object v2

    .line 5651
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v13    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 5652
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 5653
    .restart local v7    # "frequency":I
    const/4 v6, 0x0

    .restart local v6    # "level":I
    goto :goto_0

    .line 5658
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "flags":Ljava/lang/String;
    .restart local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_3
    const-string v3, "<unknown ssid>"

    goto :goto_1

    .line 5664
    .restart local v3    # "ssid":Ljava/lang/String;
    .restart local v8    # "vendorSpecificOUI":Ljava/lang/String;
    .restart local v9    # "vendorSpecificContents":Ljava/lang/String;
    .restart local v10    # "BSSLoadElement":Ljava/lang/String;
    :cond_4
    array-length v0, v13

    move/from16 v16, v0

    const/16 v18, 0x7

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 5665
    const/16 v16, 0x5

    aget-object v8, v13, v16

    .line 5666
    const/16 v16, 0x6

    aget-object v9, v13, v16

    goto :goto_2

    .line 5667
    :cond_5
    array-length v0, v13

    move/from16 v16, v0

    const/16 v18, 0x8

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 5668
    const/16 v16, 0x5

    aget-object v8, v13, v16

    .line 5669
    const/16 v16, 0x6

    aget-object v9, v13, v16

    .line 5670
    const/16 v16, 0x7

    aget-object v10, v13, v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 5686
    .end local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v14    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    :cond_6
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_8

    .line 5687
    new-instance v2, Lcom/kt/wifiapi/GWSScanResult;

    invoke-direct/range {v2 .. v10}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5692
    .end local v14    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    :try_start_6
    sget-object v16, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResultCache:Landroid/util/LruCache;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 5699
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "flags":Ljava/lang/String;
    .end local v6    # "level":I
    .end local v7    # "frequency":I
    .end local v8    # "vendorSpecificOUI":Ljava/lang/String;
    .end local v9    # "vendorSpecificContents":Ljava/lang/String;
    .end local v10    # "BSSLoadElement":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "result":[Ljava/lang/String;
    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catchall_0
    move-exception v16

    :goto_4
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v16

    .line 5696
    .restart local v13    # "result":[Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v16, "WifiServerServiceExt"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Misformatted scan result text with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v13

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " fields: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 5699
    .end local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v3    # "ssid":Ljava/lang/String;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "flags":Ljava/lang/String;
    .restart local v6    # "level":I
    .restart local v7    # "frequency":I
    .restart local v8    # "vendorSpecificOUI":Ljava/lang/String;
    .restart local v9    # "vendorSpecificContents":Ljava/lang/String;
    .restart local v10    # "BSSLoadElement":Ljava/lang/String;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v14    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catchall_1
    move-exception v16

    move-object v2, v14

    .end local v14    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    goto :goto_4

    .end local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v14    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    :cond_8
    move-object v2, v14

    .end local v14    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    goto/16 :goto_3
.end method

.method private processLgeEapActionForCommon(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 4864
    const-string v3, "eapEvent"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4865
    .local v1, "eapEvent":I
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLgeEapActionForCommon, eapEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    packed-switch v1, :pswitch_data_0

    .line 4929
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4878
    :pswitch_1
    const-string v3, "eapNotification"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4879
    .local v2, "noti":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4881
    :try_start_0
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4882
    :catch_0
    move-exception v0

    .line 4883
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4902
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "noti":Ljava/lang/String;
    :pswitch_2
    const-string v3, "eapAkaNotification"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4903
    .local v2, "noti":I
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLgeEapActionForCommon, LGE_EAP_AKA_NOTIFICATION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4904
    const v3, 0x12fd1

    if-ne v2, v3, :cond_0

    .line 4907
    :try_start_1
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_noti_other_available_sims:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4909
    :catch_1
    move-exception v0

    .line 4910
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4867
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processLgeEapActionForKT(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 4485
    const-string v7, "eapEvent"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4486
    .local v1, "eapEvent":I
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4489
    .local v3, "intentKT":Landroid/content/Intent;
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    sget v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 4490
    .local v5, "mWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 4491
    .local v4, "mIsKtSsid":Z
    if-eqz v5, :cond_0

    .line 4492
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ollehWiFi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 4498
    :cond_0
    sput-object v9, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4500
    packed-switch v1, :pswitch_data_0

    .line 4686
    :cond_1
    :goto_0
    :pswitch_0
    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    .line 4687
    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setLgeEapAuthInfo(Ljava/lang/String;)V

    .line 4689
    :cond_2
    return-void

    .line 4502
    :pswitch_1
    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNotiMsg:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 4503
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_success:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4505
    :cond_3
    sput v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 4506
    sput-boolean v11, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z

    goto :goto_0

    .line 4514
    :pswitch_2
    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNotiMsg:Ljava/lang/String;

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsWPSSuccess:Z

    if-nez v7, :cond_5

    .line 4515
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_failure:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4517
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEapMethodType :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    const/16 v8, 0x19

    if-eq v7, v8, :cond_4

    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_4

    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    const/16 v8, 0xd

    if-eq v7, v8, :cond_4

    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    const/16 v8, 0x15

    if-eq v7, v8, :cond_4

    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_4

    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapMethodType:I

    const/16 v8, 0x34

    if-ne v7, v8, :cond_7

    .line 4524
    :cond_4
    const-string v7, "WifiServerServiceExt"

    const-string v8, "EAP Method Type using ID/PWD!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4525
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_failure_with_error_code:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4527
    :try_start_0
    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 4528
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4548
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 4549
    const-string v7, "ERROR_NOTIFICATION"

    const/4 v8, 0x5

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4551
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4554
    :cond_6
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGE_EAP_FAILURE with mEapNetId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    if-eq v7, v10, :cond_1

    .line 4557
    sput v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    goto/16 :goto_0

    .line 4530
    :catch_0
    move-exception v0

    .line 4531
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4533
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    sget-boolean v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z

    if-nez v7, :cond_5

    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 4535
    :try_start_1
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 4536
    const/4 v7, 0x1

    sput-boolean v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4537
    :catch_1
    move-exception v0

    .line 4538
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4564
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    const-string v7, "eapNotification"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4565
    .local v6, "noti":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 4566
    sput-object v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNotiMsg:Ljava/lang/String;

    .line 4567
    sput-object v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4569
    :try_start_2
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4578
    :cond_8
    :goto_2
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 4579
    const-string v7, "EAP_NOTIFICATION"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4581
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 4570
    :catch_2
    move-exception v0

    .line 4571
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4586
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "noti":Ljava/lang/String;
    :pswitch_4
    sput v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 4587
    sput-object v9, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNotiMsg:Ljava/lang/String;

    .line 4588
    sput-boolean v11, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z

    .line 4589
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 4592
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    if-eq v7, v10, :cond_9

    .line 4593
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    sput v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 4598
    :goto_3
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGE_EAP_STARTED with mEapNetId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4595
    :cond_9
    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->sLastNetId:I

    sput v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    goto :goto_3

    .line 4606
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :pswitch_5
    const-string v7, "eapAkaNotification"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 4607
    .local v6, "noti":I
    if-eqz v6, :cond_a

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_d

    .line 4608
    :cond_a
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_failure:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4613
    :cond_b
    :goto_4
    sget-boolean v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z

    if-nez v7, :cond_c

    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 4615
    :try_start_3
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 4616
    const/4 v7, 0x1

    sput-boolean v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 4625
    :cond_c
    :goto_5
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 4626
    const-string v7, "EAP_AKA_NOTIFICATION"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4628
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 4609
    :cond_d
    const v7, 0x8000

    if-ne v6, v7, :cond_b

    .line 4610
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_success:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    goto :goto_4

    .line 4617
    :catch_3
    move-exception v0

    .line 4618
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4634
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "noti":I
    :pswitch_6
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_auth_timeout:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4637
    :try_start_4
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4645
    :goto_6
    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    .line 4646
    const-string v7, "ERROR_NOTIFICATION"

    const/4 v8, 0x6

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4648
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4651
    :cond_e
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGE_EAP_AKA_AUTH_TIMEOUT with mEapNetId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    sget v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    if-eq v7, v10, :cond_f

    .line 4654
    sput v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 4658
    :cond_f
    sput-boolean v11, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z

    goto/16 :goto_0

    .line 4638
    :catch_4
    move-exception v0

    .line 4639
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4662
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_failure_with_error_code:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4665
    :try_start_5
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 4673
    :goto_7
    if-eqz v3, :cond_10

    if-eqz v4, :cond_10

    .line 4674
    const-string v7, "ERROR_NOTIFICATION"

    const/4 v8, 0x4

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4676
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4678
    :cond_10
    sput v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 4679
    sput-boolean v11, Lcom/lge/wifi/impl/WifiServerServiceExt;->sCheckToast:Z

    goto/16 :goto_0

    .line 4666
    :catch_5
    move-exception v0

    .line 4667
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4500
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private processLgeEapActionForLGU(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 4835
    const-string v3, "eapEvent"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4836
    .local v0, "eapEvent":I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lgu.eap.NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4837
    .local v1, "intentLGU":Landroid/content/Intent;
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4839
    packed-switch v0, :pswitch_data_0

    .line 4857
    :cond_0
    :goto_0
    return-void

    .line 4841
    :pswitch_0
    sget-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNotiMsg:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsWPSSuccess:Z

    if-nez v3, :cond_0

    .line 4842
    const-string v3, "eapAkaNotification"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4843
    .local v2, "noti":I
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LGE_EAP_AKA_NOTIFICATION, noti: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    const/16 v3, 0x4fa2

    if-eq v2, v3, :cond_1

    const/16 v3, 0x4fab

    if-ne v2, v3, :cond_0

    .line 4845
    :cond_1
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    .line 4846
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    .line 4847
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    .line 4848
    const-string v3, "EAP_AKA_NOTIFICATION"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4850
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 4839
    :pswitch_data_0
    .packed-switch 0xce
        :pswitch_0
    .end packed-switch
.end method

.method private processLgeEapActionForSKT(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0xfa0

    const/4 v8, -0x1

    .line 4718
    const-string v4, "eapEvent"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4722
    .local v1, "eapEvent":I
    const/4 v4, 0x0

    sput-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4724
    sparse-switch v1, :sswitch_data_0

    .line 4827
    :cond_0
    :goto_0
    :sswitch_0
    sget-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 4828
    sget-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setLgeEapAuthInfo(Ljava/lang/String;)V

    .line 4830
    :cond_1
    return-void

    .line 4726
    :sswitch_1
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_success:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    goto :goto_0

    .line 4730
    :sswitch_2
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4740
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-virtual {v4, v9}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->removeMessages(I)V

    .line 4741
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v9, v6, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4744
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGE_EAP_FAILURE with mEapNetId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    sget v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    if-eq v4, v8, :cond_0

    .line 4747
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DisableNetwork mEapNetId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4748
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    sget v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    goto :goto_0

    .line 4753
    :sswitch_3
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-virtual {v4, v9}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->removeMessages(I)V

    .line 4754
    const-string v4, "eapNotification"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4755
    .local v3, "noti":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 4756
    sput-object v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4758
    :try_start_0
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4759
    :catch_0
    move-exception v0

    .line 4760
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4766
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "noti":Ljava/lang/String;
    :sswitch_4
    sput v8, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 4767
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 4768
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_2

    .line 4769
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    sput v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    .line 4771
    :cond_2
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGE_EAP_STARTED with mEapNetId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4784
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :sswitch_5
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_auth_timeout:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4787
    :try_start_1
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4792
    :goto_1
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGE_EAP_AKA_AUTH_TIMEOUT with mEapNetId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4793
    sget v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    if-eq v4, v8, :cond_0

    .line 4795
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DisableNetwork mEapNetId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    sget v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mEapNetId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    goto/16 :goto_0

    .line 4788
    :catch_1
    move-exception v0

    .line 4789
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4801
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_6
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_failure_with_error_code:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    .line 4804
    :try_start_2
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEapAuthInfo:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 4805
    :catch_2
    move-exception v0

    .line 4806
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4817
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_7
    :try_start_3
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->sp_wifi_lge_eap_failure:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 4819
    :catch_3
    move-exception v0

    .line 4820
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4724
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcb -> :sswitch_4
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0xce -> :sswitch_0
        0xcf -> :sswitch_0
        0xd0 -> :sswitch_5
        0xd1 -> :sswitch_6
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method private readChameleonIntValue(Ljava/lang/String;I)I
    .locals 12
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "ref_value"    # I

    .prologue
    .line 5123
    const/4 v2, 0x0

    .line 5124
    .local v2, "fr":Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 5125
    .local v9, "value":Ljava/lang/String;
    move v6, p2

    .line 5127
    .local v6, "ret_value":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5128
    .local v1, "fh":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v7, v6

    .line 5164
    .end local v6    # "ret_value":I
    .local v7, "ret_value":I
    :goto_0
    return v7

    .line 5133
    .end local v7    # "ret_value":I
    .restart local v6    # "ret_value":I
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5134
    .end local v2    # "fr":Ljava/io/FileReader;
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5135
    .local v4, "inFile":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 5136
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 5137
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 5138
    .local v8, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 5144
    .end local v8    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz v3, :cond_2

    .line 5145
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 5153
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "inFile":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-eqz v9, :cond_5

    .line 5154
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    :goto_2
    move v7, v6

    .line 5164
    .end local v6    # "ret_value":I
    .restart local v7    # "ret_value":I
    goto :goto_0

    .line 5147
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v7    # "ret_value":I
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "inFile":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "ret_value":I
    :catch_0
    move-exception v10

    move-object v2, v3

    .line 5149
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 5141
    .end local v4    # "inFile":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 5144
    :goto_3
    if-eqz v2, :cond_3

    .line 5145
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5147
    :catch_2
    move-exception v10

    goto :goto_1

    .line 5143
    :catchall_0
    move-exception v10

    .line 5144
    :goto_4
    if-eqz v2, :cond_4

    .line 5145
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 5148
    :cond_4
    :goto_5
    throw v10

    .line 5157
    :cond_5
    move v6, p2

    goto :goto_2

    .line 5160
    :catch_3
    move-exception v0

    .line 5161
    .local v0, "e":Ljava/lang/Exception;
    move v6, p2

    goto :goto_2

    .line 5147
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 5143
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 5141
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v10

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_3
.end method

.method private readChameleonStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "ref_value"    # Ljava/lang/String;

    .prologue
    .line 5093
    const/4 v1, 0x0

    .line 5094
    .local v1, "fr":Ljava/io/FileReader;
    move-object v5, p2

    .line 5096
    .local v5, "ret_value":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5097
    .local v0, "fh":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v6, v5

    .line 5118
    .end local v5    # "ret_value":Ljava/lang/String;
    .local v6, "ret_value":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 5102
    .end local v6    # "ret_value":Ljava/lang/String;
    .restart local v5    # "ret_value":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5103
    .end local v1    # "fr":Ljava/io/FileReader;
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5104
    .local v3, "inFile":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 5105
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-lez v7, :cond_1

    .line 5106
    move-object v5, v4

    .line 5111
    :cond_1
    if-eqz v2, :cond_2

    .line 5112
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "inFile":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    move-object v6, v5

    .line 5118
    .end local v5    # "ret_value":Ljava/lang/String;
    .restart local v6    # "ret_value":Ljava/lang/String;
    goto :goto_0

    .line 5114
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v6    # "ret_value":Ljava/lang/String;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "inFile":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "ret_value":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v2

    .line 5116
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 5108
    .end local v3    # "inFile":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 5111
    :goto_2
    if-eqz v1, :cond_3

    .line 5112
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 5114
    :catch_2
    move-exception v7

    goto :goto_1

    .line 5110
    :catchall_0
    move-exception v7

    .line 5111
    :goto_3
    if-eqz v1, :cond_4

    .line 5112
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 5115
    :cond_4
    :goto_4
    throw v7

    .line 5114
    :catch_3
    move-exception v8

    goto :goto_4

    .line 5110
    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 5108
    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v7

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private registerForDualbandSettingChange()V
    .locals 4

    .prologue
    .line 5584
    new-instance v0, Lcom/lge/wifi/impl/WifiServerServiceExt$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$7;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V

    .line 5591
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_skt_dualband_connection"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5595
    const-string v1, "WifiServerServiceExt"

    const-string v2, "registerForDualbandSettingChange"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    return-void
.end method

.method private registerForPasspointEnabledState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5603
    new-instance v0, Lcom/lge/wifi/impl/WifiServerServiceExt$8;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt$8;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V

    .line 5610
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_passpoint_enable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5614
    const-string v2, "WifiServerServiceExt"

    const-string v3, "registerForPasspointEnabledState"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5617
    :try_start_0
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_passpoint_connection"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5622
    :goto_0
    return-void

    .line 5618
    :catch_0
    move-exception v1

    .line 5619
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private registerForRSSIThreshold()V
    .locals 5

    .prologue
    const/16 v3, -0x64

    const/4 v4, 0x0

    .line 5431
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->sIsMultiSim:Z

    .line 5433
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->sIsMultiSim:Z

    if-eqz v1, :cond_0

    .line 5434
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->sPhoneCount:I

    .line 5437
    :cond_0
    new-instance v0, Lcom/lge/wifi/impl/WifiServerServiceExt$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$6;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V

    .line 5461
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5464
    :cond_1
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    const/16 v3, -0x55

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    .line 5473
    :goto_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5478
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->sIsMultiSim:Z

    if-eqz v1, :cond_5

    .line 5479
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data0"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    .line 5481
    sget v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    .line 5484
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data0"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5486
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data1"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5489
    sget v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->sPhoneCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5490
    sget v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data2"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    .line 5492
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data2"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5502
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v1, :cond_3

    .line 5503
    const/4 v1, 0x2

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiDisconnectCnt:I

    .line 5505
    :cond_3
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForRSSIThreshold threshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMobileDataEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    return-void

    .line 5468
    :cond_4
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5470
    sput v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    goto/16 :goto_0

    .line 5496
    :cond_5
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I

    .line 5498
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .prologue
    .line 2313
    new-instance v0, Lcom/lge/wifi/impl/WifiServerServiceExt$5;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$5;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 2396
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x21

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2401
    return-void
.end method

.method private registerWifiExtBroadcastReceiver()V
    .locals 3

    .prologue
    .line 2161
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_a

    .line 2165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2166
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2167
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2168
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2169
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2170
    const-string v1, "com.lge.ims.action.VT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2171
    const-string v1, "com.lge.ims.action.VT_ENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2174
    const-string v1, "com.lge.systemservice.core.wfdmanager.rtsp.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2175
    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2178
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2181
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2182
    const-string v1, "android.intent.action.SMS_WIFI_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2186
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2187
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2188
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2191
    const-string v1, "com.lge.wifi.WPS_NFC_PWD_TOKEN_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2192
    const-string v1, "com.lge.wifi.WPS_NFC_HADOVER_REQ_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2193
    const-string v1, "com.lge.wifi.WPS_NFC_CONFIG_TOKEN_SET_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2194
    const-string v1, "com.lge.wifi.WPS_NFC_RX_HANDOVER_SEL_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2201
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2202
    const-string v1, "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2212
    :cond_1
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeEap:Z

    if-eqz v1, :cond_2

    .line 2213
    const-string v1, "com.lge.eap.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2220
    :cond_2
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_3

    .line 2221
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2222
    const-string v1, "invalidPasswordMismatch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2223
    const-string v1, "com.lge.wifi.WIFI_GWS_SCAN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2231
    :cond_3
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2234
    const-string v1, "p2p_off_delay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2236
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2238
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2239
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2242
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2245
    const-string v1, "no_service_time_out"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2248
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPCS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2249
    const-string v1, "IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2250
    const-string v1, "com.lge.upsell.Upsell.UPSELL_CHECK_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2251
    const-string v1, "com.lge.upsell.Upsell.UPSELL_CHECK_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2252
    const-string v1, "com.lge.upsell.Upsell.UPSELL_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2253
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2254
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2255
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2259
    :cond_5
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2260
    const-string v1, "com.lge.wifi.WIFI_DELETE_CONN_LIST_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2264
    :cond_6
    const-string v1, "STL"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "TW"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2265
    :cond_7
    const-string v1, "WifiServerServiceExt"

    const-string v2, "--runqin--intentFliter.addAction "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2271
    :cond_8
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2273
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2275
    const-string v1, "com.lge.wifi.impl.aggregation.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2276
    const-string v1, "com.lge.wifi.impl.aggregation.end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2280
    const-string v1, "com.lge.android.intent.action.VZW_OFFLOADING_TASK_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2284
    :cond_9
    new-instance v1, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtBroadcastReceiver;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2286
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2291
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->registerWifiExtUserIntentReceiver()V

    .line 2293
    return-void

    .line 2288
    :cond_a
    const-string v1, "WifiServerServiceExt"

    const-string v2, "register : alread registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerWifiExtUserIntentReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2130
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2134
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2137
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2138
    const-string v0, "com.lge.wifi.hidden.ENABLE_OTA"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2139
    const-string v0, "com.lge.wifi.hidden.DISABLE_OTA"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2140
    const-string v0, "com.lge.wifi.setting.RESET_WPA_SUPPLICANT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2142
    new-instance v0, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$WifiExtUserIntentReceiver;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2144
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2148
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 2146
    :cond_0
    const-string v0, "WifiServerServiceExt"

    const-string v1, "register : UserIntent is alread registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 1550
    const-string v0, ""

    .line 1552
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveConnectionList(IILandroid/net/wifi/WifiInfo;)V
    .locals 6
    .param p1, "netId"    # I
    .param p2, "success"    # I
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v5, 0x1

    .line 5519
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 5521
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-nez v3, :cond_0

    .line 5522
    new-instance v3, Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-direct {v3, v5}, Lcom/lge/wifi/impl/WifiConnectionList;-><init>(Z)V

    iput-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    .line 5524
    :cond_0
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-nez v3, :cond_1

    .line 5525
    new-instance v3, Lcom/lge/wifi/impl/WifiConnectionList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/lge/wifi/impl/WifiConnectionList;-><init>(Z)V

    iput-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    .line 5528
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    if-nez v3, :cond_3

    .line 5550
    :cond_2
    :goto_0
    return-void

    .line 5533
    :cond_3
    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    .line 5534
    const-string v3, "WifiServerServiceExt"

    const-string v4, "saveConnectionList network id is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5538
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5539
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_5

    .line 5540
    if-ne p2, v5, :cond_6

    .line 5541
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    new-instance v4, Lcom/lge/wifi/impl/WifiConnectionInfo;

    invoke-direct {v4, v0, p3}, Lcom/lge/wifi/impl/WifiConnectionInfo;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v3, v4}, Lcom/lge/wifi/impl/WifiConnectionList;->update(Lcom/lge/wifi/impl/WifiConnectionInfo;)V

    .line 5542
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnSuccessList:Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiConnectionList;->saveListToFile()V

    goto :goto_1

    .line 5545
    :cond_6
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    new-instance v4, Lcom/lge/wifi/impl/WifiConnectionInfo;

    invoke-direct {v4, v0, p3}, Lcom/lge/wifi/impl/WifiConnectionInfo;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v3, v4}, Lcom/lge/wifi/impl/WifiConnectionList;->update(Lcom/lge/wifi/impl/WifiConnectionInfo;)V

    .line 5546
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConnFailList:Lcom/lge/wifi/impl/WifiConnectionList;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiConnectionList;->saveListToFile()V

    goto :goto_1
.end method

.method private sendAutoJoinStatus()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5868
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 5874
    :goto_0
    return-void

    .line 5871
    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getAutoJoinStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 5872
    .local v0, "value":I
    :goto_1
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAutoJoinStatus  LgeWifiConfig.mEnableAutoJoin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x2043c

    invoke-static {v3, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .end local v0    # "value":I
    :cond_1
    move v0, v1

    .line 5871
    goto :goto_1
.end method

.method private sendDisconnectRssiLvl()V
    .locals 5

    .prologue
    const v4, 0x20400

    const/4 v3, 0x0

    const/16 v2, -0x64

    .line 5840
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 5855
    :goto_0
    return-void

    .line 5844
    :cond_0
    sget v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiSettingStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5845
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5847
    sput v2, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    goto :goto_0

    .line 5850
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_rssi_polling_threshold_db"

    const/16 v2, -0x55

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    .line 5852
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendFastL2Roaming(I)V
    .locals 9
    .param p1, "netId"    # I

    .prologue
    .line 6051
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6119
    :cond_0
    :goto_0
    return-void

    .line 6055
    :cond_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getFastL2RoamingDisabled()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 6056
    const-string v5, "WifiServerServiceExt"

    const-string v6, "return sendFastL2Roaming - not use"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6060
    :cond_2
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_0

    .line 6064
    move v2, p1

    .line 6065
    .local v2, "cur_net_id":I
    const/4 v3, 0x0

    .line 6067
    .local v3, "fast_roam_mode":I
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 6069
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 6074
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6075
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, v5, :cond_3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 6080
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6082
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v6, "T wifi zone_secure"

    invoke-static {v6}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6083
    const/4 v3, 0x0

    .line 6118
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const v7, 0x2041e

    const/4 v8, 0x0

    invoke-static {v6, v7, v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 6089
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 6095
    :cond_6
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isLgeHotspot(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6096
    const/4 v3, 0x2

    goto :goto_1

    .line 6101
    :cond_7
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isCorporationHotspot(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6102
    const/4 v3, 0x3

    goto :goto_1

    .line 6107
    :cond_8
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 6110
    :cond_9
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private sendGWSScanResults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6018
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 6024
    :goto_0
    return-void

    .line 6022
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x20415

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendKtScanInterval()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5858
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKtScanInterval  mRtspPlay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5859
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRtspPlay:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5864
    :cond_0
    :goto_0
    return-void

    .line 5863
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x20401

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendOperatorProfileValidityCmd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5823
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5837
    :cond_0
    :goto_0
    return-void

    .line 5827
    :cond_1
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstWiFiOn:Z

    if-nez v0, :cond_0

    .line 5831
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5835
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x20406

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendProhibitConnectAP()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5800
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5808
    :cond_0
    :goto_0
    return-void

    .line 5803
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5806
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x2040b

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendSetScanIntervalMax(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5878
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 5883
    :goto_0
    return-void

    .line 5881
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5882
    .local v0, "value":I
    :goto_1
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20402

    invoke-static {v3, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .end local v0    # "value":I
    :cond_1
    move v0, v1

    .line 5881
    goto :goto_1
.end method

.method private sendUpdateNetworkPri(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 6027
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6039
    :cond_0
    :goto_0
    return-void

    .line 6034
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6038
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x20416

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendWpsNfcHandoverReqIntent(Ljava/lang/String;)V
    .locals 4
    .param p1, "mNdefToken"    # Ljava/lang/String;

    .prologue
    .line 5768
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: sendWpsNfcHandoverReqIntent NDEFTOKEN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    :cond_0
    if-nez p1, :cond_2

    .line 5770
    const-string v1, "WifiServerServiceExt"

    const-string v2, "WPS: sendWpsNfcHandoverReqIntent ndef = null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5780
    :cond_1
    :goto_0
    return-void

    .line 5773
    :cond_2
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 5774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.WPS_NFC_HANDOVER_REQ_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5775
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_wps_nfc_handover"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5777
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5778
    const-string v1, "WifiServerServiceExt"

    const-string v2, "WPS: sendWpsNfcHandoverReqIntent send Intent WPS_NFC_HANDOVER_REQ_RECEIVED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendWpsNfcPwdTokenIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "mNdefToken"    # Ljava/lang/String;

    .prologue
    .line 5758
    if-nez p1, :cond_1

    .line 5766
    :cond_0
    :goto_0
    return-void

    .line 5761
    :cond_1
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 5762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.WPS_NFC_PWD_TOKEN_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5763
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_wps_nfc_pwd_ndef_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5764
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private setBatteryPsState(I)V
    .locals 3
    .param p1, "psActivated"    # I

    .prologue
    .line 4938
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBatteryPsState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPowerSaveActivatState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    iput p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPowerSaveActivatState:I

    .line 4940
    return-void
.end method

.method private setConnectionNotificationVisible(ZLjava/lang/String;)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 8268
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CMCC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 8309
    :cond_0
    :goto_0
    return-void

    .line 8274
    :cond_1
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 8276
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    sget v2, Lcom/lge/internal/R$drawable;->stat_notify_wifi_connected:I

    .line 8278
    .local v2, "icon":I
    if-eqz p1, :cond_2

    .line 8279
    if-eqz p2, :cond_0

    .line 8280
    invoke-static {p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8281
    .local v0, "connected_ssid":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.settings.WIFI_SETTINGS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8282
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v9, Lcom/lge/internal/R$string;->sp_ongoing_noti_ap_connected_NORMAL:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8285
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_ongoing_noti_summary_NORMAL:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8287
    .local v1, "details":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 8289
    .local v5, "notificationWifiConnected":Landroid/app/Notification;
    const-wide/16 v8, 0x0

    iput-wide v8, v5, Landroid/app/Notification;->when:J

    .line 8290
    iput v2, v5, Landroid/app/Notification;->icon:I

    .line 8291
    const/16 v7, 0x10

    iput v7, v5, Landroid/app/Notification;->flags:I

    .line 8292
    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 8293
    const/4 v7, -0x2

    iput v7, v5, Landroid/app/Notification;->priority:I

    .line 8294
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v8, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v7, v6, v1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 8295
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v10, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 8297
    const-string v7, "WifiConnected.Notification"

    invoke-virtual {v4, v7, v2, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 8300
    const-string v7, "CMCC"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_networks_available_notification_on_cmcc"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 8303
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_notification_toast_cmcc:I

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8307
    .end local v0    # "connected_ssid":Ljava/lang/String;
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "notificationWifiConnected":Landroid/app/Notification;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_2
    const-string v7, "WifiConnected.Notification"

    invoke-virtual {v4, v7, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private setDisabledNetworkNotificationVisible(ZLandroid/net/wifi/WifiInfo;)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "mConnectionInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 7924
    if-nez p1, :cond_0

    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDisabledNotificationShown:Z

    if-nez v5, :cond_0

    .line 7957
    :goto_0
    return-void

    .line 7928
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 7929
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 7932
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 7933
    const v5, 0x10404e1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7935
    .local v3, "title":Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x10404e2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7939
    .local v0, "msg":Ljava/lang/String;
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/lge/internal/R$drawable;->stat_sys_warning:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.WIFI_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v6, v10, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 7952
    .local v4, "wifiDisabledWarning":Landroid/app/Notification;
    const-string v5, "WifiWatchdog.networkdisabled"

    invoke-virtual {v1, v5, v9, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 7956
    .end local v0    # "msg":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/CharSequence;
    .end local v4    # "wifiDisabledWarning":Landroid/app/Notification;
    :goto_1
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mDisabledNotificationShown:Z

    goto :goto_0

    .line 7954
    :cond_1
    const-string v5, "WifiWatchdog.networkdisabled"

    invoke-virtual {v1, v5, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private setGWSScanResults(Ljava/lang/String;)V
    .locals 11
    .param p1, "scanResults"    # Ljava/lang/String;

    .prologue
    .line 5706
    if-nez p1, :cond_1

    .line 5750
    :cond_0
    :goto_0
    return-void

    .line 5710
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5712
    .local v5, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    const/4 v3, 0x0

    .line 5714
    .local v3, "lineCount":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 5717
    .local v7, "scanResultsLen":I
    const/4 v2, 0x0

    .local v2, "lineBeg":I
    const/4 v4, 0x0

    .local v4, "lineEnd":I
    :goto_1
    if-gt v4, v7, :cond_7

    .line 5718
    if-eq v4, v7, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 5719
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 5721
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 5722
    add-int/lit8 v2, v4, 0x1

    .line 5717
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5725
    :cond_4
    if-le v4, v2, :cond_5

    .line 5726
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5727
    .local v1, "line":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->parseGWSScanResult(Ljava/lang/String;)Lcom/kt/wifiapi/GWSScanResult;

    move-result-object v6

    .line 5728
    .local v6, "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v6, :cond_5

    .line 5729
    iget-object v8, v6, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 5730
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5738
    .end local v1    # "line":Ljava/lang/String;
    .end local v6    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    :cond_5
    :goto_3
    add-int/lit8 v2, v4, 0x1

    goto :goto_2

    .line 5732
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v6    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    :cond_6
    const-string v8, "WifiServerServiceExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setGWSScanResults : scanResult.SSID = null, BSSID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5742
    .end local v1    # "line":Ljava/lang/String;
    .end local v6    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    :cond_7
    iput-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResults:Ljava/util/List;

    .line 5743
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 5744
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.lge.wifi.WIFI_GWS_SCAN_RESULT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5745
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v8, 0x4000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5746
    const-string v8, "gws_scan_result"

    check-cast v5, Ljava/util/ArrayList;

    .end local v5    # "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5748
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private setLgeEapAuthInfo(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 4693
    if-eqz p1, :cond_0

    .line 4694
    const/4 v0, 0x0

    .line 4697
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/misc/wifi/lge_eap_info"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4698
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4699
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4705
    if-eqz v1, :cond_0

    .line 4706
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4713
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 4708
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 4709
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close - error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4700
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 4701
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmomo - error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4705
    if-eqz v0, :cond_0

    .line 4706
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 4708
    :catch_2
    move-exception v2

    .line 4709
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close - error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4704
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 4705
    :goto_2
    if-eqz v0, :cond_1

    .line 4706
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 4710
    :cond_1
    :goto_3
    throw v3

    .line 4708
    :catch_3
    move-exception v2

    .line 4709
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close - error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4704
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 4700
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private setNetworkPreference()V
    .locals 5

    .prologue
    .line 5786
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_preference"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5788
    .local v1, "networkPrefSetting":I
    if-nez v1, :cond_0

    .line 5789
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5790
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 5791
    const-string v2, "WifiServerServiceExt"

    const-string v3, "if networkPrefSetting is mobile, wifi network teardown. cm is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 5794
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const-string v2, "WifiServerServiceExt"

    const-string v3, "if networkPrefSetting is mobile, wifi network teardown. change networkPrefSetting to wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5795
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    goto :goto_0
.end method

.method private setSecurityType(I)V
    .locals 1
    .param p1, "secMode"    # I

    .prologue
    .line 2689
    sput p1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSecurityType:I

    .line 2690
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiServiceExtentsion:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setSecurityType(I)V

    .line 2691
    return-void
.end method

.method private setSimAkaProfiles(Z)V
    .locals 5
    .param p1, "enableAkaProfiles"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5935
    const-string v0, "yes"

    const-string v2, "wlan.lge.multisimaka"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5936
    const-string v0, "WifiServerServiceExt"

    const-string v2, "SIM Slot should be re-arranged to support EAP SIM/AKA in Multi SIM model."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20432

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5942
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 5937
    goto :goto_0

    .line 5940
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->enableSimAkaNetworks(Z)V

    goto :goto_1
.end method

.method private setSoftApRenameToPhoneNumber()V
    .locals 8

    .prologue
    .line 3553
    const/4 v3, 0x0

    .line 3554
    .local v3, "phoneNumber":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3558
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3559
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 3560
    if-eqz v3, :cond_3

    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 3562
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TLF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TLF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "COM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "COM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3566
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.product.model"

    const-string v7, "Android"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3590
    :cond_3
    :goto_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSoftapConfIsFirst:Z

    .line 3591
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 3592
    const-string v5, "WifiServerServiceExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSoftApRenameToPhoneNumber Rename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return-void

    .line 3572
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :try_start_1
    const-string v1, ""

    .line 3573
    .local v1, "device_name":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3574
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lg_device_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3578
    :goto_2
    if-nez v1, :cond_5

    .line 3579
    const-string v1, "My LG Mobile"

    .line 3581
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3585
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "device_name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3586
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "WifiServerServiceExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSoftApRenameToPhoneNumber exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3576
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "device_name":Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lg_device_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_2
.end method

.method private setWPSNfcReadNdef(Ljava/lang/String;)Z
    .locals 3
    .param p1, "NDEF"    # Ljava/lang/String;

    .prologue
    .line 3812
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    if-eqz v0, :cond_0

    .line 3813
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPS: setWpsNfcReadNDEF NDEF : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    :cond_0
    invoke-static {p1}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setWpsNfcReadNDEF(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setWPSNfcTokenEnable(I)Ljava/lang/String;
    .locals 4
    .param p1, "method"    # I

    .prologue
    .line 3796
    const/4 v0, 0x0

    .line 3801
    .local v0, "nfcNDEF":Ljava/lang/String;
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    if-eqz v1, :cond_0

    .line 3802
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: setWPSNfcTokenEnable method : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    :cond_0
    invoke-static {p1}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setWPSNfcTokenEnable(I)Ljava/lang/String;

    move-result-object v0

    .line 3805
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    if-eqz v1, :cond_1

    .line 3806
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS: setWPSNfcTokenEnable NDEF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    :cond_1
    return-object v0
.end method

.method private setWiFiPowerSaveModeEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 7907
    if-eqz p1, :cond_0

    .line 7908
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_power_save_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7914
    :goto_0
    return-void

    .line 7911
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_power_save_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setWifiPasspointEnabled(I)V
    .locals 4
    .param p1, "enable"    # I

    .prologue
    const/4 v3, 0x0

    .line 3847
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiPasspointEnabled state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    if-lez p1, :cond_3

    .line 3849
    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 3850
    invoke-static {p1}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setPasspointEnable(I)Z

    .line 3874
    :cond_0
    :goto_0
    return-void

    .line 3854
    :cond_1
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_passpoint_connection"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 3857
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setPasspointEnable(I)Z

    goto :goto_0

    .line 3859
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setPasspointEnable(I)Z

    goto :goto_0

    .line 3862
    :cond_3
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setPasspointEnable(I)Z

    .line 3866
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_passpoint_connection"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3868
    const-string v0, "WifiServerServiceExt"

    const-string v1, "passpoint AP is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 3870
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    goto :goto_0
.end method

.method private setWifiPasspointFeature()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3035
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    if-nez v0, :cond_0

    .line 3036
    const-string v0, "wlan.lge.passpoint_setting"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    sput-boolean v3, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    .line 3038
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set wlan.lge.passpoint_setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->registerForPasspointEnabledState()V

    .line 3040
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendWifiPasspointEnabled()V

    .line 3041
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->setPasspointDefault(Z)V

    .line 3043
    :cond_0
    return-void
.end method

.method private setWpsNfcReportHandoverMsg(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "reqNdef"    # Ljava/lang/String;
    .param p3, "selNdef"    # Ljava/lang/String;

    .prologue
    .line 3835
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->UDBG:Z

    if-eqz v0, :cond_0

    .line 3836
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPS: setWpsNfcReportHandoverMsg type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPS: setWpsNfcReportHandoverMsg reqNdef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPS: setWpsNfcReportHandoverMsg selNdef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setWpsNfcReportHandoverMsg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showVZWCativePortalPopUp()V
    .locals 4

    .prologue
    .line 6181
    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsVZWCaptivePortalPopUpShowing:Z

    if-eqz v1, :cond_0

    .line 6226
    :goto_0
    return-void

    .line 6184
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsVZWCaptivePortalPopUpShowing:Z

    .line 6187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 6188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/lge/internal/R$string;->sp_captive_portal_title_NORMAL:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->sp_captive_portal_body_MLINE:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lge/wifi/impl/WifiServerServiceExt$11;

    invoke-direct {v2, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$11;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->sp_captive_portal_open_browser_NORMAL:I

    new-instance v3, Lcom/lge/wifi/impl/WifiServerServiceExt$10;

    invoke-direct {v3, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$10;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->sp_captive_portal_sign_button_NORMAL:I

    new-instance v3, Lcom/lge/wifi/impl/WifiServerServiceExt$9;

    invoke-direct {v3, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$9;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVZWCaptivePortalPopUp:Landroid/app/AlertDialog;

    .line 6224
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVZWCaptivePortalPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 6225
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVZWCaptivePortalPopUp:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private unregisterWifiExtBroadcastReceiver()V
    .locals 2

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2304
    :goto_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->unregisterWifiExtUserIntentReceiver()V

    .line 2306
    return-void

    .line 2301
    :cond_0
    const-string v0, "WifiServerServiceExt"

    const-string v1, "unregister : we don\'t need to unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterWifiExtUserIntentReceiver()V
    .locals 2

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2157
    :goto_0
    return-void

    .line 2155
    :cond_0
    const-string v0, "WifiServerServiceExt"

    const-string v1, "unregister : we don\'t need to unregiste UserIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNetworkPriority(I)V
    .locals 13
    .param p1, "netId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5019
    const/4 v3, 0x0

    .line 5020
    .local v3, "cur_network_priority":I
    move v2, p1

    .line 5021
    .local v2, "cur_network_nid":I
    const/4 v5, 0x0

    .line 5022
    .local v5, "highest_network_priority":I
    const/4 v4, -0x1

    .line 5024
    .local v4, "highest_network_nid":I
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v10

    const-string v11, "KT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CMCC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CMO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 5083
    :cond_0
    :goto_0
    return-void

    .line 5031
    :cond_1
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 5032
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    const/4 v10, -0x1

    if-eq p1, v10, :cond_0

    .line 5037
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5038
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v10, v2, :cond_3

    .line 5039
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5041
    :cond_3
    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v5, v10, :cond_2

    .line 5042
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5043
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 5048
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-ge v3, v5, :cond_0

    .line 5050
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNetworkPriority : cur_nid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cur_priority = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNetworkPriority : high_nid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", high_priority = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 5055
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5056
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5057
    iget-boolean v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v10, :cond_5

    .line 5058
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "scan_ssid"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5059
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 5061
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    move v10, v8

    :goto_2
    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5066
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v10, v0}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5068
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5069
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5070
    iget-boolean v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v10, :cond_6

    .line 5071
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "scan_ssid"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5072
    .restart local v7    # "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 5074
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_8

    :goto_4
    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5079
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    :goto_5
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiConfigStoreProxy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 5081
    iget-object v8, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_0

    .restart local v7    # "value":Ljava/lang/String;
    :cond_7
    move v10, v9

    .line 5061
    goto :goto_2

    :cond_8
    move v8, v9

    .line 5074
    goto :goto_4

    .line 5075
    :catch_0
    move-exception v8

    goto :goto_5

    .line 5062
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method private updateORGWifiSleepPolicy()V
    .locals 3

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "org_dynamic_sleep_policy_is_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, "notFound"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3022
    const-string v0, "WifiServerServiceExt"

    const-string v1, "-------Sleep Policy set to Always"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3026
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "org_dynamic_sleep_policy_is_set"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3028
    :cond_0
    return-void
.end method

.method private updateVDFWifiSleepPolicy()V
    .locals 3

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vdf_dynamic_sleep_policy_is_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, "notFound"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, "notFound"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3003
    :cond_0
    const-string v0, "WifiServerServiceExt"

    const-string v1, "-------updateVDFWifiSleepPolicy() Sleep Policy set to Always"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3007
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vdf_dynamic_sleep_policy_is_set"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3009
    :cond_1
    return-void
.end method


# virtual methods
.method public IsModifiableProfileForKT(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4029
    const/4 v1, 0x0

    .line 4031
    .local v1, "alreadyHave":Z
    const-string v0, "ollehWiFi"

    .line 4032
    .local v0, "CarrierSSID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4033
    .local v3, "configSSID":Ljava/lang/String;
    const/4 v2, -0x1

    .line 4035
    .local v2, "configEAP":I
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 4037
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz p1, :cond_0

    if-nez v4, :cond_1

    .line 4105
    :cond_0
    :goto_0
    return v8

    .line 4041
    :cond_1
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CarrierSSID : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 4043
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4045
    :cond_2
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v10, :cond_3

    .line 4046
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 4049
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 4051
    .local v6, "item":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v10, :cond_4

    .line 4054
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "item.SSID : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "item.eap.value() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "item.networkId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4058
    const-string v10, "WifiServerServiceExt"

    const-string v11, "Same SSID"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    if-ne v13, v10, :cond_5

    .line 4060
    const/4 v1, 0x1

    .line 4063
    :cond_5
    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v11, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v10, v11, :cond_4

    .line 4064
    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4065
    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    goto/16 :goto_1

    .line 4069
    .end local v6    # "item":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "alreadyHave : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", configSSID : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", configEAP : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    const-string v10, "WifiServerServiceExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config.priority : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    move v7, v9

    .line 4074
    .local v7, "newNetwork":Z
    :goto_2
    if-eqz v3, :cond_9

    const-string v10, "\u200b"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4075
    if-ne v13, v2, :cond_8

    .line 4076
    if-eqz v1, :cond_9

    if-eqz v7, :cond_9

    .line 4077
    const-string v10, "WifiServerServiceExt"

    const-string v11, "IsModifiableProfileForKT duplicate AKA "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v11, Lcom/lge/internal/R$string;->sp_wifi_ip_settings_duplicated_ssid_NORMAL:I

    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v7    # "newNetwork":Z
    :cond_7
    move v7, v8

    .line 4073
    goto :goto_2

    .line 4085
    .restart local v7    # "newNetwork":Z
    :cond_8
    const-string v10, "WifiServerServiceExt"

    const-string v11, "IsModifiableProfileForKT duplicate not AKA"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v11, Lcom/lge/internal/R$string;->sp_wifi_ip_settings_duplicated_ssid_NORMAL:I

    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4093
    :cond_9
    const-string v8, "WifiServerServiceExt"

    const-string v10, "IsModifiableProfileForKT Rest... OK"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 4105
    goto/16 :goto_0
.end method

.method public SetMaxNumOfStation(Ljava/lang/String;)V
    .locals 3
    .param p1, "AuthType"    # Ljava/lang/String;

    .prologue
    .line 7699
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7702
    const/4 v0, 0x5

    .line 7714
    .local v0, "max_num_sta":I
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setMaxNumOfStation(I)Z

    .line 7718
    .end local v0    # "max_num_sta":I
    :cond_0
    return-void
.end method

.method public SimStateCheck()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1070
    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimAbsent:Z

    if-ne v1, v0, :cond_0

    .line 1075
    :goto_0
    return v0

    .line 1072
    :cond_0
    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSimInserted:Z

    if-ne v1, v0, :cond_1

    .line 1073
    const/4 v0, 0x2

    goto :goto_0

    .line 1075
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1107
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useOpProfile()Z

    move-result v5

    if-eq v6, v5, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v6

    .line 1111
    :cond_1
    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->IsModifiableProfileForKT(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_2

    move v6, v7

    .line 1112
    goto :goto_0

    .line 1116
    :cond_2
    const-string v5, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addOrUpdateNetwork: mThisIsFirstEnableing = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mThisIsFirstEnableing:Z

    if-nez v5, :cond_3

    .line 1127
    sget-boolean v5, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    if-eqz v5, :cond_3

    .line 1128
    const-string v5, "WifiServerServiceExt"

    const-string v8, "addOrUpdateNetwork: Test"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v8, "LoveAP2"

    invoke-static {v8}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1132
    const-string v5, "WifiServerServiceExt"

    const-string v6, "Cannot add or update the LoveAP2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1133
    goto :goto_0

    .line 1270
    :cond_3
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, v11, :cond_7

    move v4, v6

    .line 1273
    .local v4, "newNetwork":Z
    :goto_1
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v8, "KR"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1274
    const/4 v2, 0x0

    .line 1283
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1287
    if-eqz v2, :cond_0

    .line 1289
    invoke-static {p1}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->isConfigForUtf8Hidden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    .line 1290
    .local v0, "bConfigForUtf8Hidden":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1291
    .local v1, "config_item":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-nez v0, :cond_5

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v9, "\u200b"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-ne v0, v6, :cond_4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_6
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v7

    if-nez v5, :cond_8

    move v5, v6

    :goto_2
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_9

    move v8, v6

    :goto_3
    if-ne v5, v8, :cond_4

    .line 1305
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_b

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    if-eq v5, v11, :cond_b

    .line 1307
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    if-eq v5, v11, :cond_a

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    if-ne v5, v8, :cond_a

    .line 1310
    const-string v5, "WifiServerServiceExt"

    const-string v8, "[LGE_WLAN] addOrUpdateNetwork() same eap value exist."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v5, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addOrUpdateNetwork Block KT/LGU duplicated eap ssid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_ip_settings_duplicated_ssid_NORMAL:I

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v0    # "bConfigForUtf8Hidden":Z
    .end local v1    # "config_item":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newNetwork":Z
    :cond_7
    move v4, v7

    .line 1270
    goto/16 :goto_1

    .restart local v0    # "bConfigForUtf8Hidden":Z
    .restart local v1    # "config_item":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "newNetwork":Z
    :cond_8
    move v5, v7

    .line 1291
    goto :goto_2

    :cond_9
    move v8, v7

    goto :goto_3

    .line 1332
    :cond_a
    const-string v5, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE_WLAN] addOrUpdateNetwork() same eap value doesn\'t exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1349
    :cond_b
    const-string v5, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addOrUpdateNetwork Block duplicated ssid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_ip_settings_duplicated_ssid_NORMAL:I

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public addWifiConnectionList(II)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "success"    # I

    .prologue
    .line 4993
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4998
    :goto_0
    return-void

    .line 4996
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    const/4 v2, 0x6

    new-instance v3, Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public broadcastAutoIPIntent(Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 2
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 4021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mIsDlnaReadyInDHCP:Z

    .line 4022
    const-string v0, "WifiServerServiceExt"

    const-string v1, "broadcastAutoIPIntent is not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    return-object p1
.end method

.method public changeSsidString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "bQuoted"    # Z

    .prologue
    .line 1457
    return-object p1
.end method

.method public checkAndstartDhcpL2ConnectedState(II)Z
    .locals 7
    .param p1, "prevNetId"    # I
    .param p2, "curNetId"    # I

    .prologue
    const/4 v5, 0x0

    .line 6149
    move v4, p1

    .line 6150
    .local v4, "prev_net_id":I
    move v2, p2

    .line 6152
    .local v2, "cur_net_id":I
    if-ne v4, v2, :cond_3

    .line 6153
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 6155
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 6170
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    :goto_0
    return v5

    .line 6159
    .restart local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6160
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, v6, :cond_2

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 6161
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->isCorporationHotspot(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 6170
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public checkFraudAP(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .param p1, "mWifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2611
    return-void
.end method

.method public checkNotiPannel()V
    .locals 0

    .prologue
    .line 3924
    return-void
.end method

.method public checkP2pPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "postfix"    # Ljava/lang/String;

    .prologue
    .line 8040
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 8041
    .local v0, "postfix_source":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkStringByte(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    .line 8042
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8044
    :cond_0
    return-object v0
.end method

.method public checkWifiEnableCondition()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 3615
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 3616
    .local v3, "usbManager":Landroid/hardware/usb/UsbManager;
    if-eqz v3, :cond_1

    .line 3619
    const/4 v1, 0x0

    .line 3620
    .local v1, "enableUSB":Z
    if-eqz v1, :cond_0

    .line 3632
    new-instance v0, Landroid/content/Intent;

    const-string v5, "lge.wifi.action.FORCE_DISABLE_FOR_TMUS_DIALOG"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3634
    .local v0, "dialog_intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3636
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3637
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3638
    const-string v5, "wifi_state"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3640
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3642
    const-string v4, "WifiServerServiceExt"

    const-string v5, "checkWifiEnableCondition(), return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    const/4 v4, 0x0

    .line 3649
    .end local v0    # "dialog_intent":Landroid/content/Intent;
    .end local v1    # "enableUSB":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return v4

    .line 3645
    .restart local v1    # "enableUSB":Z
    :cond_0
    const-string v5, "WifiServerServiceExt"

    const-string v6, "checkWifiEnableCondition(), USB Tethering is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    .end local v1    # "enableUSB":Z
    :cond_1
    const-string v5, "WifiServerServiceExt"

    const-string v6, "checkWifiEnableCondition(), return true"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public convertEapEventToLge(Ljava/lang/String;)I
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 4115
    const/4 v0, 0x0

    .line 4118
    .local v0, "event":I
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-nez v1, :cond_0

    .line 4119
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertEapEventToN3(Ljava/lang/String;)I

    move-result v1

    .line 4162
    :goto_0
    return v1

    .line 4123
    :cond_0
    const-string v1, "EAP-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4124
    const/16 v0, 0xc8

    :goto_1
    move v1, v0

    .line 4162
    goto :goto_0

    .line 4126
    :cond_1
    const-string v1, "EAP-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4127
    const/16 v0, 0xc9

    goto :goto_1

    .line 4129
    :cond_2
    const-string v1, "EAP-NOTIFICATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4130
    const/16 v0, 0xca

    goto :goto_1

    .line 4132
    :cond_3
    const-string v1, "EAP-STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4133
    const/16 v0, 0xcb

    goto :goto_1

    .line 4135
    :cond_4
    const-string v1, "EAP-PROPOSED-METHOD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4136
    const/16 v0, 0xcc

    goto :goto_1

    .line 4138
    :cond_5
    const-string v1, "EAP-METHOD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4139
    const/16 v0, 0xcd

    goto :goto_1

    .line 4141
    :cond_6
    const-string v1, "EAP-AKA-NOTIFICATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4142
    const/16 v0, 0xce

    goto :goto_1

    .line 4144
    :cond_7
    const-string v1, "EAP-AKA-UMTS-AUTH-ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4145
    const/16 v0, 0xcf

    goto :goto_1

    .line 4147
    :cond_8
    const-string v1, "EAP-AKA-AUTH-TIMEOUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4148
    const/16 v0, 0xd0

    goto :goto_1

    .line 4150
    :cond_9
    const-string v1, "EAP-FAILURE-WITH-ERROR-CODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4151
    const/16 v0, 0xd1

    goto :goto_1

    .line 4153
    :cond_a
    const-string v1, "SCAN-RESULTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4154
    const/16 v0, 0x64

    goto :goto_1

    .line 4156
    :cond_b
    const-string v1, "SSID-TEMP-DISABLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4157
    const/16 v0, 0x65

    goto :goto_1

    .line 4160
    :cond_c
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public convertEapEventToN3(Ljava/lang/String;)I
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 2865
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2866
    const/16 v0, 0x9

    .line 2887
    :goto_0
    return v0

    .line 2869
    :cond_0
    const/4 v0, 0x0

    .line 2871
    .local v0, "event":I
    const-string v1, "EAP-NOTIFICATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2872
    const-string v1, "N3"

    const-string v2, "EAP-Notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    const/16 v0, 0xa

    goto :goto_0

    .line 2875
    :cond_1
    const-string v1, "MSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2876
    const-string v1, "N3"

    const-string v2, "EAP-MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const/16 v0, 0xb

    goto :goto_0

    .line 2879
    :cond_2
    const-string v1, "CUSTOM-EVENT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2880
    const-string v1, "N3"

    const-string v2, "CUSTOM-EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    const/16 v0, 0xc

    goto :goto_0

    .line 2884
    :cond_3
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public delayStartWifi()Z
    .locals 2

    .prologue
    .line 3607
    sget-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    if-nez v0, :cond_0

    .line 3608
    new-instance v0, Landroid/net/wifi/WifiManagerProxy;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    .line 3610
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public delayUnregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 2980
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2981
    const-string v0, "WifiServerServiceExt"

    const-string v1, "delayUnregisterBroadcastReceiver 200ms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2990
    :cond_0
    :goto_0
    return-void

    .line 2984
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableOta()V
    .locals 5

    .prologue
    .line 8416
    const-string v2, "WifiServerServiceExt"

    const-string v3, "Disable OTA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8417
    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v2, :cond_0

    .line 8418
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/config"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8419
    .local v0, "from":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/wifi/config.temp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8420
    .local v1, "to":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8421
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 8432
    .end local v0    # "from":Ljava/io/File;
    .end local v1    # "to":Ljava/io/File;
    :goto_0
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8438
    const-string v2, "wlan.fastl2roaming.notuse"

    const-string v3, "NO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8441
    const-string v2, "wlan.ota_enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8444
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_suspend_optimizations_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8445
    return-void

    .line 8423
    :cond_0
    invoke-static {}, Lcom/lge/wifi/impl/WifiHiddenNative;->OtaDisable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8424
    const-string v2, "WifiServerServiceExt"

    const-string v3, "QCT : disable OTA success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8426
    :cond_1
    const-string v2, "WifiServerServiceExt"

    const-string v3, "QCT : disable OTA fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disable_auto_connection()V
    .locals 0

    .prologue
    .line 8559
    invoke-static {}, Lcom/lge/wifi/impl/WifiLgeExtNative;->sendDisableStaAutoConnect()Z

    .line 8560
    return-void
.end method

.method public enableOta()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 8362
    const-string v3, "WifiServerServiceExt"

    const-string v4, "Eanble OTA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8363
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v3, :cond_1

    .line 8364
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/misc/wifi/config"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8365
    .local v0, "from":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/config.temp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8366
    .local v2, "to":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 8367
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8368
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 8369
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8370
    .local v1, "parentDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8371
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8374
    .end local v1    # "parentDir":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->ota_config_create()V

    .line 8385
    .end local v0    # "from":Ljava/io/File;
    .end local v2    # "to":Ljava/io/File;
    :goto_0
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_sleep_policy"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8389
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8392
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8396
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_data_continuity_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8400
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_rssi_polling_threshold_db"

    const/16 v5, -0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8403
    const-string v3, "wlan.fastl2roaming.notuse"

    const-string v4, "YES"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8406
    const-string v3, "wlan.ota_enable"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8409
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_suspend_optimizations_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8412
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_passpoint_enable"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8413
    return-void

    .line 8376
    :cond_1
    invoke-static {}, Lcom/lge/wifi/impl/WifiHiddenNative;->OtaEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8377
    const-string v3, "WifiServerServiceExt"

    const-string v4, "QCT : enable OTA success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8379
    :cond_2
    const-string v3, "WifiServerServiceExt"

    const-string v4, "QCT : enable OTA fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fetchSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3966
    const-string v0, "WifiServerServiceExt"

    const-string v1, "fetchSSID is not used any more. return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBootCompleted()Z
    .locals 1

    .prologue
    .line 3988
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBootCompleted:Z

    return v0
.end method

.method public getDefaultWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v10, 0x4

    .line 3200
    move-object v3, p1

    .line 3202
    .local v3, "mConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v3, :cond_0

    .line 3203
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    .end local v3    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3208
    .restart local v3    # "mConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MPCS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3209
    :cond_1
    invoke-static {}, Lcom/lge/wifi/impl/WifiLgeExtNative;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 3210
    .local v4, "macString":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 3211
    const-string v4, "000000000000"

    .line 3213
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.model"

    const-string v9, "Android"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    const/16 v9, 0xc

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3214
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3216
    const-string v0, "/carrier/wifi/si"

    .line 3217
    .local v0, "cmln_sap_ssid":Ljava/lang/String;
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->readChameleonStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3250
    .end local v0    # "cmln_sap_ssid":Ljava/lang/String;
    .end local v4    # "macString":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v5, 0x0

    .line 3251
    .local v5, "phoneNumber":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 3252
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 3256
    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_8

    .line 3257
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultWifiApConfiguration  phonenumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_hotspot_passwd"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3260
    const-string v7, "0000"

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3261
    const-string v5, "0000000000"

    .line 3267
    :cond_4
    :goto_1
    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3272
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 3274
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultWifiApConfiguration  SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " allowedKeyManagement : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " preSharedKey : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    return-object v3

    .line 3221
    .end local v5    # "phoneNumber":Ljava/lang/String;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "USC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3222
    const/4 v2, 0x0

    .line 3225
    .local v2, "esn":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3234
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_7

    const-string v7, "00000000"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3235
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDefaultSoftApConfigUSC ESN :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.model"

    const-string v9, "Android"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 3227
    :catch_0
    move-exception v1

    .line 3228
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    if-nez v2, :cond_6

    .line 3231
    const-string v2, "00000000"

    goto :goto_2

    .line 3240
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v2, "00000000"

    goto :goto_3

    .line 3263
    .end local v2    # "esn":Ljava/lang/String;
    .restart local v5    # "phoneNumber":Ljava/lang/String;
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    if-eqz v5, :cond_9

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4

    .line 3264
    :cond_9
    const-string v7, "WifiServerServiceExt"

    const-string v8, "phone MDN is null or empty "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    const-string v5, "0000000000"

    goto/16 :goto_1
.end method

.method public getGWSScanResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5753
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResults:Ljava/util/List;

    return-object v0
.end method

.method public getManualConneciton()Z
    .locals 1

    .prologue
    .line 6014
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z

    return v0
.end method

.method public getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I
    .param p2, "ssidVarName"    # Ljava/lang/String;

    .prologue
    .line 3954
    const/4 v0, 0x0

    .line 3955
    .local v0, "value_ssid_byte":[B
    invoke-static {p1, p2}, Lcom/lge/wifi/impl/WifiLgeExtNative;->getNetworkVariableCommand_byte(ILjava/lang/String;)[B

    move-result-object v0

    .line 3957
    if-eqz v0, :cond_0

    .line 3958
    invoke-static {v0}, Lcom/lge/wifi/extension/LgWifiSsidUtil;->setSSIDcheckingUniCode([B)Ljava/lang/String;

    move-result-object v1

    .line 3960
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNvMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8549
    invoke-static {}, Lcom/lge/wifi/impl/WifiLgeExtNative;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 8550
    .local v0, "macAddress":Ljava/lang/String;
    return-object v0
.end method

.method public getSoftApDefaultKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3665
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->setDefaultMobileHotspotUS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3666
    const-string v0, "oi3afjo93n"

    .line 3668
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSoftApMaxScb(I)I
    .locals 3
    .param p1, "defaultMaxScb"    # I

    .prologue
    .line 3419
    move v0, p1

    .line 3421
    .local v0, "maxScb":I
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3423
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getSoftApMaxuserInRoaming()I

    move-result v1

    .line 3424
    .local v1, "maxScbChameleon":I
    if-ge v1, v0, :cond_0

    move v0, v1

    .line 3431
    .end local v0    # "maxScb":I
    .end local v1    # "maxScbChameleon":I
    :cond_0
    return v0
.end method

.method public getSoftApName(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/16 v9, 0x2328

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3442
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3461
    const-string v0, "/carrier/wifi/si"

    .line 3462
    .local v0, "cmln_sap_ssid":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3463
    .local v3, "fh":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3464
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Lcom/lge/wifi/impl/WifiServerServiceExt;->readChameleonStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3465
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSoftApName [SPRINT] Rename : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3548
    .end local v0    # "cmln_sap_ssid":Ljava/lang/String;
    .end local v3    # "fh":Ljava/io/File;
    :goto_0
    return-object v7

    .line 3474
    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "US"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3478
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 3483
    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MPCS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "US"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3484
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3485
    .local v5, "randomUUID":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.model"

    const-string v9, "Android"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3487
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 3491
    .end local v5    # "randomUUID":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TLS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3493
    const-string v7, "Android AP"

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3494
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 3498
    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TEL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3500
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3501
    .restart local v5    # "randomUUID":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Telstra"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3502
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 3507
    .end local v5    # "randomUUID":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TLF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ES"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_6
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TLF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "COM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "COM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3511
    :cond_8
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 3512
    .local v4, "random":Ljava/util/Random;
    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e8

    rem-int/lit16 v6, v7, 0x2710

    .line 3513
    .local v6, "random_4digit":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.model"

    const-string v9, "Android"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3514
    iput-boolean v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSoftapConfIsFirst:Z

    .line 3516
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 3521
    .end local v4    # "random":Ljava/util/Random;
    .end local v6    # "random_4digit":I
    :cond_9
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 3522
    .restart local v4    # "random":Ljava/util/Random;
    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e8

    rem-int/lit16 v6, v7, 0x2710

    .line 3524
    .restart local v6    # "random_4digit":I
    :try_start_0
    const-string v1, ""

    .line 3527
    .local v1, "device_name":Ljava/lang/String;
    const-string v7, "ro.lge.petname"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v7, "ro.lge.petname"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_b

    .line 3528
    const-string v7, "ro.lge.petname"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3536
    :goto_1
    if-nez v1, :cond_a

    .line 3537
    const-string v1, "My LG Mobile"

    .line 3539
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3546
    .end local v1    # "device_name":Ljava/lang/String;
    :goto_2
    iput-boolean v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSoftapConfIsFirst:Z

    .line 3547
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSoftApName Rename : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 3531
    .restart local v1    # "device_name":Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3532
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lg_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3534
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lg_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 3541
    .end local v1    # "device_name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3542
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSoftApName exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.model"

    const-string v9, "LG"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 3

    .prologue
    .line 8202
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupplicantState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->msupplicant_state:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8203
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->msupplicant_state:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getWifiAdhocDisable()Z
    .locals 1

    .prologue
    .line 3996
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApDisableIfNotUsed(Ljava/lang/String;)Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;
    .locals 3
    .param p1, "softApIface"    # Ljava/lang/String;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-direct {v0, v1, v2, p1}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiApDisableIfNotUsed:Lcom/lge/wifi/extension/WifiApDisableIfNotUsedIface;

    return-object v0
.end method

.method public getWifiDualbandAPConnection()I
    .locals 4

    .prologue
    .line 3745
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_skt_dualband_connection"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3751
    .local v0, "nWIFIDualbandAPConnection":I
    return v0
.end method

.method public getWifiOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;
    .locals 4

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wifi/impl/WifiOffDelayIfNotUsed;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiOffDelayIfNotUsedIface;

    return-object v0
.end method

.method public getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiP2pOffDelayIfNotUsed;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pOffDelayIfNotUsed:Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    return-object v0
.end method

.method public getWifiState()I
    .locals 3

    .prologue
    .line 2960
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2963
    :goto_0
    return v1

    .line 2961
    :catch_0
    move-exception v0

    .line 2962
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiServerServiceExt"

    const-string v2, "getWifiState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public handleCMCCEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8059
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 8060
    const-string v10, "wifi_state"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 8062
    .local v9, "wifiState":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 8063
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    .line 8064
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 8065
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    .line 8178
    .end local v9    # "wifiState":I
    :cond_0
    :goto_0
    return-void

    .line 8069
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 8070
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 8071
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->setWifiAutoConnectValue(I)V

    .line 8072
    sget-object v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManagerProxy;->startScan()Z

    .line 8073
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 8074
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 8077
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 8078
    const-string v10, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8080
    .local v4, "coverState":I
    const/4 v10, 0x1

    if-ne v4, v10, :cond_3

    .line 8081
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 8082
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->setWifiAutoConnectValue(I)V

    .line 8083
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 8084
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 8087
    :cond_3
    if-nez v4, :cond_0

    .line 8088
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 8089
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_connect_select"

    sget v12, Lcom/lge/wifi/impl/WifiServerServiceExt;->ASK_ON_CONNECTION:I

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 8091
    .local v5, "how_to_connect":I
    sget v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->ASK_ON_CONNECTION:I

    if-ne v5, v10, :cond_0

    .line 8092
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->setWifiAutoConnectValue(I)V

    .line 8093
    sget-object v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManagerProxy;->startScan()Z

    goto/16 :goto_0

    .line 8099
    .end local v4    # "coverState":I
    .end local v5    # "how_to_connect":I
    :cond_4
    const-string v10, "networkid"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 8100
    .local v6, "networkid":I
    const/4 v7, 0x0

    .line 8101
    .local v7, "ssidvalue":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v6, v10, :cond_5

    .line 8102
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v10, v6}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 8103
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_5

    .line 8104
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8108
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    if-nez v10, :cond_0

    if-eqz v7, :cond_0

    .line 8109
    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v11, Lcom/lge/R$style;->Theme_LGE_White:I

    invoke-direct {v8, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8110
    .local v8, "themeContext":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8111
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, v8}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 8112
    .local v2, "checkBox":Landroid/widget/CheckBox;
    sget v10, Lcom/lge/internal/R$string;->wifi_auto_select_checkbox:I

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 8114
    new-instance v10, Lcom/lge/wifi/impl/WifiServerServiceExt$12;

    invoke-direct {v10, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$12;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8120
    sget v10, Lcom/lge/internal/R$string;->wifi_auto_select_confirm_title:I

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v12, Lcom/lge/internal/R$string;->wifi_auto_select_confirm_msg:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lcom/lge/internal/R$string;->alert_dialog_yes:I

    new-instance v12, Lcom/lge/wifi/impl/WifiServerServiceExt$15;

    invoke-direct {v12, p0, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt$15;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lcom/lge/internal/R$string;->alert_dialog_no:I

    new-instance v12, Lcom/lge/wifi/impl/WifiServerServiceExt$14;

    invoke-direct {v12, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$14;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/lge/wifi/impl/WifiServerServiceExt$13;

    invoke-direct {v11, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$13;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 8164
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    .line 8165
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d3

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 8167
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_6

    .line 8168
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 8170
    :cond_6
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->setWifiAutoConnectValue(I)V

    .line 8171
    sget-object v10, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManagerProxy;->startScan()Z

    .line 8172
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public handleLgeEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 4170
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 4171
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendGWSScanResults()V

    .line 4182
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-nez v0, :cond_1

    .line 4183
    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->handleN3Event(ILjava/lang/String;)V

    .line 4186
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->handleLgeEapEvent(ILjava/lang/String;)V

    .line 4187
    return-void

    .line 4173
    :cond_2
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 4174
    invoke-direct {p0, p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->handleLgeAuthFailEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4177
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    .line 4178
    invoke-direct {p0, p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->akaNotification(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public handleN3Event(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 2892
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2926
    :cond_0
    :goto_0
    return-void

    .line 2896
    :cond_1
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleN3Event event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  remainder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2906
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->akaNotification(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2908
    const-string v1, "N3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netcube.wifi.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2910
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NOTIFICATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2911
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2899
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    const-string v1, "N3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netcube.wifi.msg"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2901
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "MSG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2902
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2917
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    const-string v1, "N3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentCustom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netcube.wifi.customevent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2919
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "CUSTOMEVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2920
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2897
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasService()Z
    .locals 4

    .prologue
    .line 2407
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    .line 2408
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2417
    const/4 v0, 0x1

    .line 2423
    .local v0, "retVal":Z
    :goto_0
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FCC, hasService: mServiceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    return v0

    .line 2410
    .end local v0    # "retVal":Z
    :pswitch_0
    const/4 v0, 0x0

    .line 2411
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 2414
    .end local v0    # "retVal":Z
    :pswitch_1
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2415
    .restart local v0    # "retVal":Z
    :goto_1
    goto :goto_0

    .line 2414
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2421
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 2408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initAutoConnectionProfile()V
    .locals 3

    .prologue
    .line 5947
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5948
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_connect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 5949
    const-string v0, "WifiServerServiceExt"

    const-string v1, "SUPPLICANT CONNECTED  DISABLE NETWORK ID 0 when auto Connection is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    .line 5953
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    .line 5956
    :cond_0
    return-void
.end method

.method public initWifiServerSerivceExt(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStoreProxy;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "wifiConfigStoreProxy"    # Lcom/android/server/wifi/WifiConfigStoreProxy;
    .param p5, "wlanInterface"    # Ljava/lang/String;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    .line 767
    invoke-static {}, Lcom/lge/wifi/impl/WifiServiceExtension;->getInstance()Lcom/lge/wifi/impl/WifiServiceExtension;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiServiceExtentsion:Lcom/lge/wifi/impl/WifiServiceExtension;

    .line 770
    iput-object p2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 774
    new-instance v4, Lcom/android/server/wifi/WifiNative;

    sget-object v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->mStaInterfaceName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 778
    iput-object p4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    .line 782
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 784
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 786
    new-instance v4, Lcom/lge/wifi/impl/LgWifiInternetCheck;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-direct {v4, v5, v6, v7}, Lcom/lge/wifi/impl/LgWifiInternetCheck;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStoreProxy;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgWifiInternetCheck:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .line 790
    const-string v4, "0"

    const-string v5, "wlan.lge.traffic.trigger"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 791
    new-instance v4, Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/lge/wifi/impl/WifiServerServiceExt;->mStaInterfaceName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgWifiTrafficPoller:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi/extension/WifiP2pOffDelayIfNotUsedIface;

    .line 797
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v5, "wifip2p"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 798
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mAlarmManager:Landroid/app/AlarmManager;

    .line 799
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const/16 v5, 0x64

    new-instance v6, Landroid/content/Intent;

    const-string v7, "p2p_off_delay"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pOffDelayIntent:Landroid/app/PendingIntent;

    .line 801
    new-instance v4, Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-direct {v4}, Lcom/lge/wifi/impl/WifiExtInfo;-><init>()V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    .line 803
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const/16 v5, 0xa

    new-instance v6, Landroid/content/Intent;

    const-string v7, "no_service_time_out"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNoServiceTimeOutIntent:Landroid/app/PendingIntent;

    .line 806
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiServerManager;->getDataContinuityServiceIface()Lcom/lge/wifi/extension/IWifiDataContinuityService;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    .line 807
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    if-eqz v4, :cond_1

    .line 808
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p2, p4}, Lcom/lge/wifi/extension/IWifiDataContinuityService;->initWifiDataContinuityService(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStoreProxy;)V

    .line 811
    :cond_1
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_d

    .line 812
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 813
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v4, :cond_c

    .line 815
    const-string v4, "WifiServerServiceExt"

    const-string v5, "Failed to set up connection with wifi p2p service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 858
    :goto_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 860
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ssid_update_completed"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_e

    .line 861
    const-string v4, "WifiServerServiceExt"

    const-string v5, "SSID DB isn\'t set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->initCheckWifiEnabledBefore()Z

    .line 875
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->registerWifiExtBroadcastReceiver()V

    .line 877
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiServerServiceExt"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 878
    .local v3, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 879
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 880
    .local v1, "loop":Landroid/os/Looper;
    if-eqz v1, :cond_3

    .line 881
    new-instance v4, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-direct {v4, p0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    .line 885
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 887
    new-instance v4, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-direct {v4, p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabledSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;

    .line 889
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabledSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt$AutoConnectionEnabledSettingObserver;->register()V

    .line 893
    new-instance v4, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-direct {v4, p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabledSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;

    .line 895
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabledSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->register()V

    .line 901
    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MPCS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 902
    new-instance v4, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-direct {v4, p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTxPowerModeSettingsObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;

    .line 903
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mTxPowerModeSettingsObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt$TxPowerModeSettingsObserver;->register()V

    .line 910
    :cond_6
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 911
    new-instance v4, Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    invoke-direct {v4}, Lcom/lge/wifi/impl/offloading/WifiOffLoading;-><init>()V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiOffloading:Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    .line 916
    :cond_7
    new-instance v4, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    invoke-direct {v4, p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pDeviceNameSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;

    .line 917
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mP2pDeviceNameSettingObserver:Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/WifiServerServiceExt$P2pDeviceNameSettingObserver;->register()V

    .line 921
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->registerForRSSIThreshold()V

    .line 924
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->registerForDualbandSettingChange()V

    .line 926
    sget-boolean v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    if-eqz v4, :cond_8

    .line 927
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->registerForPasspointEnabledState()V

    .line 934
    :cond_8
    const-string v4, "wlan.lge.softap5g"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_frequency_band"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 936
    const-string v4, "wlan.lge.softap5g"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v4, "WifiServerServiceExt"

    const-string v5, "Disable 5G hotspot feature"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_9
    new-instance v4, Landroid/util/LruCache;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Landroid/util/LruCache;-><init>(I)V

    sput-object v4, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGWSScanResultCache:Landroid/util/LruCache;

    .line 943
    iget-boolean v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v4, :cond_a

    .line 944
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string v4, "com.lge.wifi.WIFI_MANUAL_CONNECTION"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 947
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/lge/wifi/impl/WifiServerServiceExt$3;

    invoke-direct {v5, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$3;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 978
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_a
    sget-boolean v4, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v4, :cond_b

    .line 979
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/lge/wifi/impl/WifiServerServiceExt$4;

    invoke-direct {v5, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$4;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.lge.wifi.sap.WIFI_SAP_DRIVER_HUNG_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 992
    :cond_b
    return-void

    .line 819
    .end local v1    # "loop":Landroid/os/Looper;
    .end local v3    # "wifiThread":Landroid/os/HandlerThread;
    :cond_c
    new-instance v4, Lcom/lge/wifi/impl/WifiServerServiceExt$1;

    invoke-direct {v4, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$1;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 824
    new-instance v4, Lcom/lge/wifi/impl/WifiServerServiceExt$2;

    invoke-direct {v4, p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$2;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    goto/16 :goto_0

    .line 835
    :cond_d
    const-string v4, "WifiServerServiceExt"

    const-string v5, "WifiP2pManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 863
    :cond_e
    const-string v4, "wlan.lge.siminserted"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, "siminserted":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 865
    const-string v4, "wlan.lge.siminserted"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_f
    const-string v4, "WifiServerServiceExt"

    const-string v5, "SSID DB is already set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isAutoConnectEnabled()Z
    .locals 1

    .prologue
    .line 8555
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mAutoConnectionEnabled:Z

    return v0
.end method

.method public isBtWifiP2pPreventState()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 7973
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 7975
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$string;->wifi_p2p_prevent_connect_when_BT_WiFi_connected:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7977
    .local v2, "message":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 7978
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 7982
    .local v3, "wifiInfo":Landroid/net/NetworkInfo;
    iget v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mBTAclCount:I

    .line 7983
    .local v0, "btCount":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v0, :cond_2

    .line 7984
    const-string v6, "WifiServerServiceExt"

    const-string v7, "WiFi and BT are connected"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7985
    if-eqz v2, :cond_0

    .line 7986
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 7990
    .end local v0    # "btCount":I
    .end local v3    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 7980
    goto :goto_0

    .restart local v0    # "btCount":I
    .restart local v3    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_2
    move v4, v5

    .line 7990
    goto :goto_0
.end method

.method public isDisconnectRssiLevel(I)Z
    .locals 4
    .param p1, "Rssi"    # I

    .prologue
    const/4 v0, 0x0

    .line 7861
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisconnectRssiLevel - new RSSI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7862
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    .line 7873
    :cond_0
    :goto_0
    return v0

    .line 7866
    :cond_1
    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabled:Z

    if-eqz v1, :cond_0

    const/16 v1, -0x55

    if-gt p1, v1, :cond_0

    .line 7870
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 7871
    const-string v0, "WifiServerServiceExt"

    const-string v1, "isDisconnectRssiLevel - send Disconnection command"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7873
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFirstUserSignOnSeen()Z
    .locals 1

    .prologue
    .line 6176
    iget-boolean v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method public isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2430
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "softap set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persist.sys.hotssid.ksc5601"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2433
    const-string v1, "WifiServerServiceExt"

    const-string v2, "isHotspotKSC5601 is true ==> ksc5601"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isP2PConnected()Z
    .locals 3

    .prologue
    .line 7962
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7963
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JK]is GO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7964
    const/4 v0, 0x1

    .line 7967
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->isP2pConneted:Z

    goto :goto_0
.end method

.method public isRemovableNetwork(I)Z
    .locals 7
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1370
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useOpProfile()Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return v4

    .line 1374
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    .local v0, "compValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v5, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    if-eqz v5, :cond_4

    .line 1377
    const-string v5, "LoveAP2"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1424
    const/4 v2, 0x0

    .line 1431
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1435
    if-eqz v2, :cond_0

    .line 1436
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1438
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_3

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSecurityType(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1441
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot remove ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const/4 v4, 0x0

    goto :goto_0

    .line 1378
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1379
    const-string v5, "attwifi"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1393
    :cond_5
    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    if-eqz v5, :cond_6

    .line 1394
    const-string v5, "ollehWiFi"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1399
    :cond_6
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BELL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1400
    const-string v5, "BELL_WIFI"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    const-string v5, "5099251212"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    const-string v5, "SaskTel Select Wi-Fi 1"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1403
    :cond_7
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TLS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1404
    const-string v5, "#TELUSDirect"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1405
    :cond_8
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1406
    const-string v5, "MTS Wireless"

    invoke-static {v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public isShowKTPayPopup()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3677
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3682
    :goto_0
    return v0

    :cond_0
    const-string v1, "persist.sys.ktpopup"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isTethered()Z
    .locals 15

    .prologue
    .line 4952
    iget-object v13, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 4954
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v4, :cond_0

    .line 4955
    const/4 v13, 0x0

    .line 4979
    :goto_0
    return v13

    .line 4958
    :cond_0
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v12

    .line 4959
    .local v12, "tethered":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 4960
    .local v1, "Usbtetherable":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4962
    .local v0, "Bluetoothtetherable":[Ljava/lang/String;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v9, v2, v6

    .local v9, "o":Ljava/lang/String;
    move-object v11, v9

    .line 4963
    check-cast v11, Ljava/lang/String;

    .line 4964
    .local v11, "s":Ljava/lang/String;
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v10, v3, v5

    .line 4965
    .local v10, "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4966
    const-string v13, "WifiServerServiceExt"

    const-string v14, "Now USB Tethering is enabled!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    const/4 v13, 0x1

    goto :goto_0

    .line 4964
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4971
    .end local v10    # "regex":Ljava/lang/String;
    :cond_2
    move-object v3, v0

    array-length v8, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_4

    aget-object v10, v3, v5

    .line 4972
    .restart local v10    # "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 4973
    const-string v13, "WifiServerServiceExt"

    const-string v14, "Now Bluetooth Tethering is enabled!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    const/4 v13, 0x1

    goto :goto_0

    .line 4971
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4962
    .end local v10    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_1

    .line 4978
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v9    # "o":Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    :cond_5
    const-string v13, "WifiServerServiceExt"

    const-string v14, "USB/Bluetooth Tethering is disabled!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public isUpdateableWifiApConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    .line 3299
    const-string v1, "oi3afjo93n"

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3300
    const-string v1, "WifiServerServiceExt"

    const-string v2, "isUpdateableWifiApConfig : true, default PWD key is same  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :goto_0
    return v0

    .line 3302
    :cond_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkNewUpdatedMDN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3303
    const-string v1, "WifiServerServiceExt"

    const-string v2, "isUpdateableWifiApConfig : should set pwd to default MDN "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVTRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2827
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2840
    :cond_0
    :goto_0
    return v0

    .line 2831
    :cond_1
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVTRunning  getDetailedNetworkState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mVTStarted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVTStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-boolean v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVTStarted:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    .line 2834
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->sp_wifi_notify_prohibit_connect_ap_NORMAL:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2837
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWEPSecurity()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 5170
    const/4 v0, 0x0

    .line 5171
    .local v0, "key_mgmt":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5173
    .local v1, "security_type":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    if-nez v3, :cond_1

    .line 5184
    :cond_0
    :goto_0
    return v2

    .line 5175
    :cond_1
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiExtInfo;->getKeyMgmt()Ljava/lang/String;

    move-result-object v0

    .line 5176
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiExtInfo;->getSECTYPE()Ljava/lang/String;

    move-result-object v1

    .line 5178
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5179
    const-string v3, "NONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WEP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 5180
    const-string v2, "WifiServerServiceExt"

    const-string v3, "isWEPSecurity : true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5181
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isWifiAvailableInCN(ZI)Z
    .locals 9
    .param p1, "enable"    # Z
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 8213
    const/4 v2, 0x0

    .line 8217
    .local v2, "isAirplaneModeOn":Z
    if-nez p1, :cond_1

    .line 8254
    :cond_0
    :goto_0
    return v5

    .line 8222
    :cond_1
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 8223
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v3

    .line 8225
    .local v3, "mWifiState":I
    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    const/16 v6, 0x2710

    if-le p2, v6, :cond_0

    if-eqz v4, :cond_0

    .line 8228
    const-string v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "lge"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "itectokyo.wiflus"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.netcube.smartmobilizer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8234
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CMCC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "com.chinamobile.cmccwifi"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8239
    :cond_2
    const-string v6, "WifiServerServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setWifiEnabled called 3rd part App by ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8241
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8242
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8243
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.wifi.WifiEnableRequestDialog"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8244
    const/high16 v6, 0x34000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8247
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8248
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 8249
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 8250
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "WifiServerServiceExt"

    const-string v7, "WifiEnableRequestDialog not found!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isWifiPowerSaveModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7917
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_power_save_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public notifyFrequencyConflict(Ljava/lang/String;)V
    .locals 8
    .param p1, "sccDevName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1080
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1081
    .local v0, "mInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 1082
    .local v2, "ssid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1084
    .local v1, "msg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1085
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1089
    :goto_0
    if-eqz p1, :cond_0

    .line 1090
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->wifi_p2p_connection_failed_channel_limitation:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1093
    :cond_0
    return-void

    .line 1087
    :cond_1
    const-string v2, "Wi-Fi AP"

    goto :goto_0
.end method

.method public notifyWifiDisconnect(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 2759
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2777
    :cond_0
    :goto_0
    return-void

    .line 2763
    :cond_1
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWifiDisconnect  state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prevState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->prevState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2766
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 2767
    const-string v1, "WifiServerServiceExt"

    const-string v2, "conMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2770
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2772
    :cond_3
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->prevState:Landroid/net/NetworkInfo$DetailedState;

    .line 2773
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/internal/R$string;->sp_wifi_notify_disconnected_NORMAL:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public ota_config_create()V
    .locals 20

    .prologue
    .line 8448
    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    .line 8449
    .local v3, "con":[Ljava/lang/String;
    const-string v11, ""

    .line 8450
    .local v11, "long_str":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    const-string v17, "/data/misc/wifi/config"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8451
    .local v12, "outFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 8454
    .local v13, "outputFile":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "outputFile":Ljava/io/FileOutputStream;
    .local v14, "outputFile":Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 8466
    .end local v14    # "outputFile":Ljava/io/FileOutputStream;
    .restart local v13    # "outputFile":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8467
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8468
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8471
    const/16 v17, 0x0

    const-string v18, "btc_mode=1"

    aput-object v18, v3, v17

    .line 8473
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v17

    const-string v18, "JP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 8474
    const/16 v17, 0x1

    const-string v18, "country=JP/5"

    aput-object v18, v3, v17

    .line 8481
    :goto_1
    const-string v17, "wlan.chip.version"

    const-string v18, "bcm4330"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8482
    .local v2, "chipVersion":Ljava/lang/String;
    const-string v17, "bcm4335"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "bcm4339"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 8483
    :cond_1
    const/16 v17, 0x1

    const-string v18, "country=BW/0"

    aput-object v18, v3, v17

    .line 8484
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v17

    const-string v18, "US"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v17

    const-string v18, "TMO"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v17

    const-string v18, "US"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ATT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 8485
    :cond_3
    const/16 v17, 0x1

    const-string v18, "country=US/118"

    aput-object v18, v3, v17

    .line 8491
    :cond_4
    :goto_2
    const/16 v17, 0x2

    const-string v18, "vlan_mode=0"

    aput-object v18, v3, v17

    .line 8492
    const/16 v17, 0x3

    const-string v18, "mpc=1"

    aput-object v18, v3, v17

    .line 8493
    const/16 v17, 0x4

    const-string v18, "wme=1"

    aput-object v18, v3, v17

    .line 8494
    const/16 v17, 0x5

    const-string v18, "wme_apsd=0"

    aput-object v18, v3, v17

    .line 8495
    const/16 v17, 0x6

    const-string v18, "wme_qosinfo=0x00"

    aput-object v18, v3, v17

    .line 8496
    const/16 v17, 0x7

    const-string v18, "wme_auto_trigger=1"

    aput-object v18, v3, v17

    .line 8497
    const/16 v17, 0x8

    const-string v18, "wme_apsd_trigger=0"

    aput-object v18, v3, v17

    .line 8498
    const/16 v17, 0x9

    const-string v18, "roam_off=1"

    aput-object v18, v3, v17

    .line 8499
    const/16 v17, 0xa

    const-string v18, "roam_scan_period=10"

    aput-object v18, v3, v17

    .line 8500
    const/16 v17, 0xb

    const-string v18, "roam_delta=20"

    aput-object v18, v3, v17

    .line 8501
    const/16 v17, 0xc

    const-string v18, "roam_trigger=-99"

    aput-object v18, v3, v17

    .line 8502
    const/16 v17, 0xd

    const-string v18, "PM=0"

    aput-object v18, v3, v17

    .line 8503
    const/16 v17, 0xe

    const-string v18, "assoc_listen=1"

    aput-object v18, v3, v17

    .line 8504
    const/16 v17, 0xf

    const-string v18, "assoc_retry_max=7"

    aput-object v18, v3, v17

    .line 8505
    const/16 v17, 0x10

    const-string v18, "cur_etheraddr=00:90:4c:82:11:12"

    aput-object v18, v3, v17

    .line 8506
    const/16 v17, 0x11

    const-string v18, "lpc=0"

    aput-object v18, v3, v17

    .line 8508
    const/16 v4, 0x12

    .line 8510
    .local v4, "configValueCount":I
    const-string v17, "bcm4356"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 8511
    const-string v17, "wlan.mimo.chain"

    const-string v18, "3"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 8512
    .local v16, "strCurrentChainValue":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 8513
    .local v10, "intCurrentChainValue":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v10, v0, :cond_5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v10, v0, :cond_5

    .line 8514
    const/16 v17, 0x12

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rxchain="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 8515
    const/16 v17, 0x13

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "txchain="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 8516
    const/16 v4, 0x14

    .line 8520
    .end local v10    # "intCurrentChainValue":I
    .end local v16    # "strCurrentChainValue":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v4, :cond_b

    .line 8521
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v3, v9

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 8522
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 8520
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 8455
    .end local v2    # "chipVersion":Ljava/lang/String;
    .end local v4    # "configValueCount":I
    .end local v9    # "i":I
    :catch_0
    move-exception v5

    .line 8457
    .local v5, "e":Ljava/io/FileNotFoundException;
    if-eqz v13, :cond_0

    .line 8458
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 8460
    :catch_1
    move-exception v6

    .line 8546
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_4
    return-void

    .line 8475
    :cond_7
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v17

    const-string v18, "US"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 8476
    const/16 v17, 0x1

    const-string v18, "country=US/100"

    aput-object v18, v3, v17

    goto/16 :goto_1

    .line 8478
    :cond_8
    const/16 v17, 0x1

    const-string v18, "country=KR/24"

    aput-object v18, v3, v17

    goto/16 :goto_1

    .line 8487
    .restart local v2    # "chipVersion":Ljava/lang/String;
    :cond_9
    const-string v17, "bcm4354"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "bcm4356"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 8488
    :cond_a
    const/16 v17, 0x1

    const-string v18, "country=AU/0"

    aput-object v18, v3, v17

    goto/16 :goto_2

    .line 8525
    .restart local v4    # "configValueCount":I
    .restart local v9    # "i":I
    :cond_b
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8529
    if-eqz v13, :cond_c

    .line 8531
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 8538
    :cond_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    .line 8540
    .local v15, "runtime":Ljava/lang/Runtime;
    :try_start_4
    const-string v17, "su -c chmod 777 /data/misc/wifi/config"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 8542
    :catch_2
    move-exception v5

    .line 8543
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 8532
    .end local v5    # "e":Ljava/io/IOException;
    .end local v15    # "runtime":Ljava/lang/Runtime;
    :catch_3
    move-exception v8

    .line 8533
    .local v8, "e3":Ljava/io/IOException;
    goto :goto_4

    .line 8526
    .end local v8    # "e3":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 8529
    .local v7, "e2":Ljava/io/IOException;
    if-eqz v13, :cond_6

    .line 8531
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 8532
    :catch_5
    move-exception v8

    .line 8533
    .restart local v8    # "e3":Ljava/io/IOException;
    goto :goto_4

    .line 8529
    .end local v7    # "e2":Ljava/io/IOException;
    .end local v8    # "e3":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    if-eqz v13, :cond_d

    .line 8531
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 8533
    :cond_d
    throw v17

    .line 8532
    :catch_6
    move-exception v8

    .line 8533
    .restart local v8    # "e3":Ljava/io/IOException;
    goto :goto_4
.end method

.method public processMessageAtDriverStartedState(Landroid/os/Message;)Z
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6232
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 6429
    const/16 v21, 0x0

    .line 6431
    :goto_0
    return v21

    .line 6234
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setProhibitConnectAP()Z

    .line 6431
    :cond_0
    :goto_1
    const/16 v21, 0x1

    goto :goto_0

    .line 6237
    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setWifiDualbandAPConnection(I)V

    goto :goto_1

    .line 6240
    :sswitch_2
    const-string v21, "WifiServerServiceExt"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "set CMD_DISCONNECT_RSSI_LVL : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6241
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setDisConnectRssiLevel(I)Ljava/lang/String;

    goto :goto_1

    .line 6244
    :sswitch_3
    const-string v21, "WifiServerServiceExt"

    const-string v22, "set CMD_KT_SCAN_INTERVAL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6245
    invoke-static {}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setKTScanInterval()Ljava/lang/String;

    goto :goto_1

    .line 6250
    :sswitch_4
    const-string v21, "WifiServerServiceExt"

    const-string v22, "WPS: set CMD_WPS_NFC_PWD_TOKEN_GEN"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6251
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setWPSNfcTokenEnable(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendWpsNfcPwdTokenIntent(Ljava/lang/String;)V

    goto :goto_1

    .line 6254
    :sswitch_5
    const-string v21, "WifiServerServiceExt"

    const-string v22, "WPS: set CMD_WPS_NFC_HANDOVER_REQ_GEN"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6255
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWpsNfcHandoverNdef(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendWpsNfcHandoverReqIntent(Ljava/lang/String;)V

    goto :goto_1

    .line 6258
    :sswitch_6
    const-string v21, "WifiServerServiceExt"

    const-string v22, "WPS: set CMD_WPS_NFC_CONFIG_TOKEN_SET"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->ndefString:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setWPSNfcReadNdef(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 6262
    :sswitch_7
    const-string v21, "WifiServerServiceExt"

    const-string v22, "WPS: set CMD_WPS_NFC_RX_HANDOVER_SEL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6263
    const/16 v19, 0x1

    .line 6264
    .local v19, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSelNdef:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mSelNdef:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setWpsNfcReportHandoverMsg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 6265
    .local v15, "result":Z
    if-eqz v15, :cond_0

    .line 6266
    new-instance v9, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.WPS_NFC_RX_HANDOVER_SEL_FINISHED"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6267
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 6274
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v15    # "result":Z
    .end local v19    # "type":I
    :sswitch_8
    const-string v21, "WifiServerServiceExt"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "set CMD_SET_SCAN_INTERVAL_MAX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6275
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/WifiLgeExtNative;->sendSetScanIntervalMax(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 6280
    :sswitch_9
    const-string v21, "WifiServerServiceExt"

    const-string v22, "set CMD_CAPTIVE_CHECK_COMPLETED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6281
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 6282
    .local v11, "isShowing":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 6283
    .local v10, "isCaptivePortal":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 6284
    .local v20, "url":Ljava/lang/String;
    const/4 v12, -0x1

    .line 6285
    .local v12, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 6286
    .local v8, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_1

    .line 6287
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    .line 6289
    :cond_1
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 6290
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 6291
    .local v5, "curConfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_4

    if-eqz v5, :cond_4

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_4

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v21

    const-string v22, "VZW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 6293
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_3

    if-nez v11, :cond_3

    .line 6294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/wifi/extension/IWifiDataContinuityService;->isInternetCheckAvailable()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 6295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiDataContinuityService:Lcom/lge/wifi/extension/IWifiDataContinuityService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lcom/lge/wifi/extension/IWifiDataContinuityService;->reportWiFiNetworkisValid(Z)V

    .line 6297
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6298
    .restart local v9    # "intent":Landroid/content/Intent;
    const/high16 v21, 0x34000000

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6302
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    iput v12, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6303
    iput v10, v4, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    .line 6304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->updateSimpleNetworkNative(Landroid/net/wifi/WifiConfiguration;)V

    .line 6305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_1

    .line 6306
    :cond_4
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v21

    const-string v22, "VZW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_0

    if-eqz v5, :cond_0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_0

    if-nez v11, :cond_0

    .line 6307
    const-string v21, "WifiServerServiceExt"

    const-string v22, "start VZW CaptivePortal Pop Up"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 6309
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const-string v17, "com.android.LGSetupWizard"

    .line 6312
    .local v17, "setupWizard":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->checkSetupWizardReqSupportedModel()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 6314
    const-string v21, "WifiServerServiceExt"

    const-string v22, "captiveportal in setupwizard enabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6315
    iput v12, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6316
    iput v10, v4, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    .line 6317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->updateSimpleNetworkNative(Landroid/net/wifi/WifiConfiguration;)V

    .line 6318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 6326
    :catch_0
    move-exception v6

    .line 6328
    .local v6, "e":Ljava/lang/Exception;
    const-string v21, "WifiServerServiceExt"

    const-string v22, "exception about captiveportal in setupwizard enabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6329
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->showVZWCativePortalPopUp()V

    .line 6330
    iput v12, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6331
    iput v10, v4, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    .line 6332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->updateSimpleNetworkNative(Landroid/net/wifi/WifiConfiguration;)V

    .line 6333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z

    goto/16 :goto_1

    .line 6320
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->showVZWCativePortalPopUp()V

    .line 6321
    iput v12, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6322
    iput v10, v4, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    .line 6323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->updateSimpleNetworkNative(Landroid/net/wifi/WifiConfiguration;)V

    .line 6324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigStoreProxy;->saveConfig()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 6339
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "info":Landroid/net/wifi/WifiInfo;
    .end local v10    # "isCaptivePortal":I
    .end local v11    # "isShowing":I
    .end local v12    # "netId":I
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "setupWizard":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    :sswitch_a
    const-string v21, "WifiServerServiceExt"

    const-string v22, "set CMD_DISCONNECT_BY_WIFI_DCF"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6340
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 6341
    .restart local v12    # "netId":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 6342
    .local v14, "reason":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 6346
    .local v18, "ssid":Ljava/lang/String;
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_0

    if-eqz v18, :cond_0

    .line 6347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 6348
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_0

    .line 6349
    const/16 v21, 0x80

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 6350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v14}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(II)Z

    goto/16 :goto_1

    .line 6356
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "netId":I
    .end local v14    # "reason":I
    .end local v18    # "ssid":Ljava/lang/String;
    :sswitch_b
    const-string v21, "WifiServerServiceExt"

    const-string v22, "set CMD_RESTORE_DISABLED_NETS_BY_DCF"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6357
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 6358
    .restart local v12    # "netId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 6362
    .restart local v18    # "ssid":Ljava/lang/String;
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_0

    if-eqz v18, :cond_0

    .line 6363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 6364
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_0

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/WifiServerServiceExt;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 6368
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 6369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->enableNetwork(IZ)Z

    goto/16 :goto_1

    .line 6376
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "netId":I
    .end local v18    # "ssid":Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    sget-boolean v21, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnectionDelayed:Z

    if-eqz v21, :cond_0

    .line 6377
    :cond_6
    const-string v21, "WifiServerServiceExt"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "set CMD_SET_MANUAL_CONNECT : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6378
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setManualConnection(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 6382
    :sswitch_d
    invoke-static {}, Lcom/lge/wifi/impl/WifiLgeExtNative;->getGWSscanResults()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setGWSScanResults(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6385
    :sswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->updateNetworkPriority(I)V

    goto/16 :goto_1

    .line 6389
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 6393
    .local v16, "roam_mode":I
    invoke-static/range {v16 .. v16}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setFastL2Roaming(I)Z

    goto/16 :goto_1

    .line 6398
    .end local v16    # "roam_mode":I
    :sswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setWifiPasspointEnabled(I)V

    goto/16 :goto_1

    .line 6404
    :sswitch_11
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 6405
    .local v7, "enableAkaProfiles":I
    const-string v21, "WifiServerServiceExt"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "set CMD_SET_MULTI_SIMSLOT_REARRANGE enableAkaProfiles : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6406
    invoke-virtual/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 6407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->autoSimSlotArrage()V

    .line 6408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigStoreProxy;->loadConfiguredNetworks()V

    .line 6411
    :cond_7
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_8

    .line 6412
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->enableSimAkaNetworks(Z)V

    goto/16 :goto_1

    .line 6414
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->enableSimAkaNetworks(Z)V

    goto/16 :goto_1

    .line 6420
    .end local v7    # "enableAkaProfiles":I
    :sswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->CheckOperatorProfileValidity()V

    goto/16 :goto_1

    .line 6424
    :sswitch_13
    const-string v21, "WifiServerServiceExt"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "set CMD_SET_FRAMEWORK_AUTO_JOIN "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6425
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/WifiLgeExtNative;->sendAutoJoinStatus(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 6232
    nop

    :sswitch_data_0
    .sparse-switch
        0x20400 -> :sswitch_2
        0x20401 -> :sswitch_3
        0x20402 -> :sswitch_8
        0x20403 -> :sswitch_9
        0x20404 -> :sswitch_a
        0x20405 -> :sswitch_b
        0x20406 -> :sswitch_12
        0x2040a -> :sswitch_1
        0x2040b -> :sswitch_0
        0x20414 -> :sswitch_c
        0x20415 -> :sswitch_d
        0x20416 -> :sswitch_e
        0x2041e -> :sswitch_f
        0x2041f -> :sswitch_10
        0x20428 -> :sswitch_4
        0x20429 -> :sswitch_5
        0x2042a -> :sswitch_6
        0x2042b -> :sswitch_7
        0x20432 -> :sswitch_11
        0x2043c -> :sswitch_13
    .end sparse-switch
.end method

.method public resetWpaSupplicant()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 8334
    const-string v7, "WifiServerServiceExt"

    const-string v8, "SEAN Reset wpa_supplicant"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8336
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8337
    .local v6, "sWpaProfileFile":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/misc/wifi/p2p_supplicant.conf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8338
    .local v5, "sP2pProfileFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8339
    .local v3, "profileFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8340
    .local v2, "p2profileFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-ne v7, v9, :cond_0

    .line 8341
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 8343
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-ne v7, v9, :cond_1

    .line 8344
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8347
    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8348
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/misc/wifi/lge_eap_info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8349
    .local v4, "sEapInfoFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8350
    .local v1, "infoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-ne v7, v9, :cond_2

    .line 8351
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8357
    .end local v1    # "infoFile":Ljava/io/File;
    .end local v4    # "sEapInfoFile":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiManagerProxy:Landroid/net/wifi/WifiManagerProxy;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiManagerProxy;->setWifiEnabled(Z)V

    .line 8358
    .end local v2    # "p2profileFile":Ljava/io/File;
    .end local v3    # "profileFile":Ljava/io/File;
    .end local v5    # "sP2pProfileFile":Ljava/lang/String;
    .end local v6    # "sWpaProfileFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 8354
    :catch_0
    move-exception v0

    .line 8355
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2930
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2933
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2937
    :cond_0
    :goto_0
    return-void

    .line 2934
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendToastMessageId(I)V
    .locals 6
    .param p1, "resid"    # I

    .prologue
    .line 8183
    const-string v2, "WifiServerServiceExt"

    const-string v3, "==========sendToastMessageId================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8184
    move v0, p1

    .line 8185
    .local v0, "id":I
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8186
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/lge/wifi/impl/WifiServerServiceExt$16;

    invoke-direct {v2, p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt$16;-><init>(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8193
    return-void
.end method

.method public sendWPSOverlapToastMessage()V
    .locals 3

    .prologue
    .line 8329
    const-string v0, "WifiServerServiceExt"

    const-string v1, "Wps Overlap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8330
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "WPS Overlap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8331
    return-void
.end method

.method public sendWifiConnectionChangeBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 1522
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Wi-Fi connection change intent: connected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_0
    return-void
.end method

.method public sendWifiDualbandAPConnection()V
    .locals 5

    .prologue
    .line 5813
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 5820
    :goto_0
    return-void

    .line 5817
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiDualbandAPConnection()I

    move-result v0

    .line 5818
    .local v0, "nWIFIDualbandAPConnection":I
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x2040a

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendWifiPasspointEnabled()V
    .locals 5

    .prologue
    .line 3894
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3901
    :goto_0
    return-void

    .line 3898
    :cond_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiPasspointEnabled()I

    move-result v0

    .line 3899
    .local v0, "nWifiPasspointEnabled":I
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x2041f

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendWifiPasspointRemove()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3912
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_passpoint_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3914
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x2041f

    const/4 v3, 0x4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3917
    :cond_0
    return-void
.end method

.method public sendWifiPasspointTry()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3904
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_passpoint_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3906
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x2041f

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3909
    :cond_0
    return-void
.end method

.method public setAPSecurityType(Ljava/util/List;I)V
    .locals 9
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "configList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v8, 0x0

    .line 2617
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_1

    .line 2685
    :cond_0
    :goto_0
    return-void

    .line 2621
    :cond_1
    const/4 v4, 0x0

    .line 2622
    .local v4, "phase2":I
    const/4 v2, -0x1

    .line 2623
    .local v2, "eap":I
    const/4 v1, 0x0

    .line 2625
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v5, Lcom/lge/wifi/impl/WifiServerServiceExt;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_passpoint_enable"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    if-eqz v5, :cond_2

    const-string v5, "empty"

    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-virtual {v6}, Lcom/lge/wifi/impl/WifiExtInfo;->getEAPMETHOD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2628
    const-string v5, "WifiServerServiceExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AP is connected via EAP (SecurityType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-virtual {v7}, Lcom/lge/wifi/impl/WifiExtInfo;->getEAPMETHOD()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->ENTERPRISE_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    .line 2634
    :cond_2
    if-eqz p1, :cond_0

    .line 2636
    const/4 v0, 0x0

    .line 2637
    .local v0, "SizeofWifiList":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2639
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 2641
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p2, :cond_3

    .line 2643
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2644
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_4

    .line 2646
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 2647
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 2639
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2649
    :cond_4
    const-string v5, "WifiServerServiceExt"

    const-string v6, "setAPSecurityType config is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->OPEN_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    goto :goto_2

    .line 2655
    :cond_5
    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    .line 2656
    const-string v5, "WifiServerServiceExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAPSecurityType eap : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phase2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->ENTERPRISE_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    .line 2659
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->AKA_AP:I

    if-ne v2, v5, :cond_6

    .line 2660
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->AKA_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    .line 2663
    :cond_6
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 2664
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->MSCHAP_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    goto/16 :goto_0

    .line 2668
    :cond_7
    if-eqz v1, :cond_0

    .line 2672
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v8

    if-nez v5, :cond_8

    .line 2674
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->OPEN_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    goto/16 :goto_0

    .line 2676
    :cond_8
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v8

    if-eqz v5, :cond_9

    .line 2678
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->WEP_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    goto/16 :goto_0

    .line 2681
    :cond_9
    sget v5, Lcom/lge/wifi/config/LgeServiceExtConstant;->WPA_AP:I

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setSecurityType(I)V

    goto/16 :goto_0
.end method

.method public setDefaultSoftApConfigUSC(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x4

    .line 3314
    const/4 v1, 0x0

    .line 3315
    .local v1, "esn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3317
    .local v2, "mdn":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 3318
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3329
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    const-string v4, "00000000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3330
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultSoftApConfigUSC esn :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    .line 3336
    :cond_1
    const-string v2, "0000000000"

    .line 3339
    :cond_2
    move-object v3, p1

    .line 3341
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v3, :cond_3

    .line 3342
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3345
    .restart local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3346
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v4, :cond_4

    .line 3347
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 3349
    :cond_4
    iput-object v2, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3352
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultSoftApConfigUSC - newSSID= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Esn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Mdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    return-object v3

    .line 3319
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v0

    .line 3320
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiServerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    if-nez v1, :cond_5

    .line 3322
    const-string v1, "00000000"

    .line 3324
    :cond_5
    if-nez v2, :cond_0

    .line 3325
    const-string v2, "0000000000"

    goto/16 :goto_0

    .line 3332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v1, "00000000"

    goto/16 :goto_1
.end method

.method public setKeepAlivePacketInterval(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "mWifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2795
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2796
    :cond_0
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->keepAlivePacketTimeSet(I)Z

    .line 2805
    :goto_0
    return-void

    .line 2798
    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2800
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->keepAlivePacketTimeSet(I)Z

    goto :goto_0

    .line 2803
    :cond_2
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->keepAlivePacketTimeSet(I)Z

    goto :goto_0
.end method

.method public setManualConneciton(IZ)Z
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5998
    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v2, :cond_0

    .line 5999
    if-ne p1, v0, :cond_0

    .line 6000
    if-eqz p2, :cond_1

    .line 6001
    .local v0, "value":I
    :goto_0
    sput-boolean p2, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z

    .line 6002
    const-string v2, "WifiServerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received setManualConneciton enable ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6003
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 6004
    sput-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnectionDelayed:Z

    .line 6005
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20414

    invoke-static {v3, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 6010
    .end local v0    # "value":I
    :cond_0
    sget-boolean v1, Lcom/lge/wifi/impl/WifiServerServiceExt;->mManualConnection:Z

    return v1

    :cond_1
    move v0, v1

    .line 6000
    goto :goto_0
.end method

.method public setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "ssidVarName"    # Ljava/lang/String;
    .param p3, "SSID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3929
    const/4 v0, 0x0

    .line 3931
    .local v0, "bytes_ssid":[B
    const-string v4, "\u200b\""

    invoke-virtual {p3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3941
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setNetworkVariableCommand_byte(ILjava/lang/String;[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3949
    :goto_1
    return v2

    .line 3935
    :cond_0
    :try_start_0
    const-string v4, "KSC5601"

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3936
    :catch_0
    move-exception v1

    .line 3937
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "WifiServerServiceExt"

    const-string v5, "KSC5601 Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    move v2, v3

    .line 3949
    goto :goto_1
.end method

.method public setProhibitConnectAP()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2848
    iget-boolean v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mVTStarted:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 2849
    .local v0, "enable":I
    :goto_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    if-ne v0, v1, :cond_1

    .line 2855
    :goto_1
    return v2

    .end local v0    # "enable":I
    :cond_0
    move v0, v2

    .line 2848
    goto :goto_0

    .line 2853
    .restart local v0    # "enable":I
    :cond_1
    const-string v1, "WifiServerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProhibitConnectAP enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getDetailedNetworkState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->getDetailedNetworkState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setProhibitConnectAP(I)Z

    move-result v2

    goto :goto_1
.end method

.method public setScanResultsCommand()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3972
    const-string v0, "WifiServerServiceExt"

    const-string v1, "setScanResultsCommand is not used any more. return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowKTPayPopup(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 3686
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3703
    :goto_0
    return-void

    .line 3692
    :cond_0
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowKTPayPopup  set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3696
    :try_start_0
    const-string v0, "persist.sys.ktpopup"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3701
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3699
    :cond_1
    const-string v0, "persist.sys.ktpopup"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setShowKTPayPopupDelay(ZJ)V
    .locals 6
    .param p1, "set"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v3, 0x1

    .line 3708
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3729
    :goto_0
    return-void

    .line 3714
    :cond_0
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowKTPayPopupDelay  set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->removeMessages(I)V

    .line 3719
    if-ne p1, v3, :cond_1

    .line 3720
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->setShowKTPayPopup(Z)V

    .line 3721
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3726
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3724
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiHandler:Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/lge/wifi/impl/WifiServerServiceExt$MyWifiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 3
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 8197
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupplicantState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8198
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->msupplicant_state:Landroid/net/wifi/SupplicantState;

    .line 8199
    return-void
.end method

.method public setWifiDualbandAPConnection(I)V
    .locals 3
    .param p1, "band"    # I

    .prologue
    .line 3734
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiDualbandAPConnection band : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 3737
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->selectDualbandAP(I)Z

    .line 3741
    :goto_0
    return-void

    .line 3739
    :cond_1
    invoke-static {p1}, Lcom/lge/wifi/impl/WifiLgeExtNative;->selectDualbandAP(I)Z

    goto :goto_0
.end method

.method public setWifiP2pNotificationIcon(Z)V
    .locals 11
    .param p1, "visible"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1029
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1031
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_1

    .line 1032
    const-string v6, "WifiServerServiceExt"

    const-string v7, "setWifiP2pNotificationIcon() notificationManager=null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    if-eqz p1, :cond_3

    .line 1036
    const-string v6, "WifiServerServiceExt"

    const-string v7, "setWifiP2pNotificationIcon() set visible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    if-eqz v6, :cond_2

    .line 1038
    const-string v6, "WifiServerServiceExt"

    const-string v7, "setWifiP2pNotificationIcon() mNotification not null, return"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1042
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v0, "intent":Landroid/content/Intent;
    const v6, 0x10808000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1044
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1046
    .local v3, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1047
    .local v4, "r":Landroid/content/res/Resources;
    const v6, 0x10404e4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1048
    .local v5, "title":Ljava/lang/CharSequence;
    sget v6, Lcom/lge/internal/R$string;->wifi_p2p_connected:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1050
    .local v1, "message":Ljava/lang/CharSequence;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    .line 1051
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 1052
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    sget v7, Lcom/lge/internal/R$drawable;->stat_sys_wifidirect:I

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 1053
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 1054
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1055
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    iput-object v1, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1056
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1058
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1060
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_3
    const-string v6, "WifiServerServiceExt"

    const-string v7, "setWifiP2pNotificationIcon() set unvisible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    if-eqz v6, :cond_0

    .line 1063
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1064
    iput-object v10, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mNotification:Landroid/app/Notification;

    goto/16 :goto_0
.end method

.method public switchWifiOperationMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2606
    return-void
.end method

.method public updateAutoConnectProfile(ILandroid/net/wifi/SupplicantState;)V
    .locals 7
    .param p1, "networkId"    # I
    .param p2, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    const/4 v6, 0x1

    .line 5959
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ATT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 5960
    :cond_0
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 5961
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v3, "WifiServerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUPPLICANT_STATE_CHANGE_EVENT netid=0 state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5963
    if-eqz v1, :cond_2

    .line 5964
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5965
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-nez v3, :cond_1

    .line 5966
    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p2, v3, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_connect"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 5968
    const-string v3, "WifiServerServiceExt"

    const-string v4, "db and real state mismatched #2 (config.networkId == 0)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5969
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(I)Z

    .line 5992
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public updateConnectionInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 27
    .param p1, "mWifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2444
    const/16 v17, -0x1

    .line 2445
    .local v17, "netId":I
    const/4 v8, 0x0

    .line 2446
    .local v8, "freq":I
    const/4 v3, 0x0

    .line 2447
    .local v3, "SSID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2448
    .local v2, "BSSID":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2449
    .local v21, "suppState":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2450
    .local v12, "key_mgmt":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2451
    .local v5, "cipher":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2452
    .local v19, "secType":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2453
    .local v9, "groupCipher":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2454
    .local v7, "eapMethod":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2457
    .local v6, "devMode":Ljava/lang/String;
    const/16 v23, 0x0

    .line 2460
    .local v23, "vhtCapability":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v20

    .line 2461
    .local v20, "status":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 2552
    :goto_0
    return-void

    .line 2465
    :cond_0
    const-string v24, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2466
    .local v15, "lines":[Ljava/lang/String;
    move-object v4, v15

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v13, :cond_d

    aget-object v14, v4, v10

    .line 2467
    .local v14, "line":Ljava/lang/String;
    const-string v24, " *= *"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2468
    .local v18, "prop":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 2466
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2471
    :cond_2
    const/16 v24, 0x0

    aget-object v16, v18, v24

    .line 2472
    .local v16, "name":Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v22, v18, v24

    .line 2473
    .local v22, "value":Ljava/lang/String;
    const-string v24, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2474
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto :goto_2

    .line 2476
    :cond_3
    const-string v24, "ssid"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 2477
    move-object/from16 v3, v22

    goto :goto_2

    .line 2479
    :cond_4
    const-string v24, "bssid"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 2480
    move-object/from16 v2, v22

    goto :goto_2

    .line 2482
    :cond_5
    const-string v24, "wpa_state"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 2483
    move-object/from16 v21, v22

    goto :goto_2

    .line 2485
    :cond_6
    const-string v24, "freq"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 2486
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    .line 2488
    :cond_7
    const-string v24, "key_mgmt"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 2489
    move-object/from16 v12, v22

    goto :goto_2

    .line 2491
    :cond_8
    const-string v24, "mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 2492
    move-object/from16 v6, v22

    goto :goto_2

    .line 2494
    :cond_9
    const-string v24, "pairwise_cipher"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 2495
    move-object/from16 v5, v22

    goto/16 :goto_2

    .line 2497
    :cond_a
    const-string v24, "selectedMethod"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 2498
    move-object/from16 v7, v22

    goto/16 :goto_2

    .line 2500
    :cond_b
    const-string v24, "group_cipher"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2501
    move-object/from16 v9, v22

    goto/16 :goto_2

    .line 2505
    :cond_c
    const-string v24, "vht_capa"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 2506
    move-object/from16 v23, v22

    goto/16 :goto_2

    .line 2510
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "prop":[Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_d
    if-nez v12, :cond_f

    .line 2511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    const-string v25, "empty"

    invoke-virtual/range {v24 .. v25}, Lcom/lge/wifi/impl/WifiExtInfo;->setSECTYPE(Ljava/lang/String;)V

    .line 2525
    :goto_3
    if-nez v7, :cond_12

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    const-string v25, "empty"

    invoke-virtual/range {v24 .. v25}, Lcom/lge/wifi/impl/WifiExtInfo;->setEAPMETHOD(Ljava/lang/String;)V

    .line 2530
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/lge/wifi/impl/WifiExtInfo;->setFreq(I)V

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/lge/wifi/impl/WifiExtInfo;->setDevMode(Ljava/lang/String;)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/lge/wifi/impl/WifiExtInfo;->setKeyMgmt(Ljava/lang/String;)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/lge/wifi/impl/WifiExtInfo;->setCipher(Ljava/lang/String;)V

    .line 2536
    if-eqz v23, :cond_14

    const-string v24, "TRUE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 2537
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mLgeKtCm:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    const-string v24, "ollehWiFi"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    const-string v24, "ollehWiFi "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 2538
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiServiceExtentsion:Lcom/lge/wifi/impl/WifiServiceExtension;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/lge/wifi/impl/WifiServiceExtension;->setVhtCapabilityType(Z)V

    .line 2547
    :goto_5
    new-instance v11, Landroid/content/Intent;

    const-string v24, "com.lge.wifi.WIFI_UPDATE_WIFI_EXTINFO"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2548
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v24, 0x4000000

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2549
    const-string v24, "wifi_extinfo"

    new-instance v25, Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/lge/wifi/impl/WifiExtInfo;-><init>(Lcom/lge/wifi/impl/WifiExtInfo;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2551
    const-string v24, "WifiServerServiceExt"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "wifiInfo ==> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2513
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_f
    const-string v24, "NONE"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2514
    if-nez v9, :cond_10

    .line 2515
    const-string v19, "empty"

    .line 2522
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiExtInfo;->setSECTYPE(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2517
    :cond_10
    move-object/from16 v19, v9

    goto :goto_6

    .line 2520
    :cond_11
    move-object/from16 v19, v12

    goto :goto_6

    .line 2528
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/lge/wifi/impl/WifiExtInfo;->setEAPMETHOD(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2540
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiServiceExtentsion:Lcom/lge/wifi/impl/WifiServiceExtension;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/lge/wifi/impl/WifiServiceExtension;->setVhtCapabilityType(Z)V

    goto/16 :goto_5

    .line 2543
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiServiceExtentsion:Lcom/lge/wifi/impl/WifiServiceExtension;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/lge/wifi/impl/WifiServiceExtension;->setVhtCapabilityType(Z)V

    goto/16 :goto_5
.end method

.method public updateNetworkID(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 8563
    sput p1, Lcom/lge/wifi/impl/WifiServerServiceExt;->sLastNetId:I

    .line 8564
    return-void
.end method

.method public updateRssiAndLinkSpeedNative(IIII)V
    .locals 10
    .param p1, "newRssi"    # I
    .param p2, "newLinkSpeed"    # I
    .param p3, "minRssi"    # I
    .param p4, "maxRssi"    # I

    .prologue
    .line 2555
    const/4 p1, -0x1

    .line 2556
    const/4 p2, -0x1

    .line 2558
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v6

    .line 2560
    .local v6, "signalPoll":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 2561
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2562
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 2563
    .local v3, "line":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2564
    .local v5, "prop":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 2562
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2568
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    const-string v8, "RSSI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2569
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 2570
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "LINKSPEED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2571
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_1

    .line 2578
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "prop":[Ljava/lang/String;
    :cond_3
    const-string v7, "WifiServerServiceExt"

    const-string v8, "updateRssiAndLinkSpeedNative : signalPoll is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_4
    const/4 v7, -0x1

    if-eq p1, v7, :cond_6

    if-ge p3, p1, :cond_6

    if-ge p1, p4, :cond_6

    .line 2589
    if-lez p1, :cond_5

    .line 2590
    add-int/lit16 p1, p1, -0x100

    .line 2597
    :cond_5
    :goto_2
    return-void

    .line 2593
    :cond_6
    const-string v7, "WifiServerServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRssiAndLinkSpeedNative : unknown rssi ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    move p1, p3

    goto :goto_2

    .line 2573
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v5    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3978
    const-string v0, "WifiServerServiceExt"

    const-string v1, "waitForEvent is not used any more. return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    const/4 v0, 0x0

    return-object v0
.end method
