.class public Lcom/lge/wifi/config/LgeServiceExtConstant;
.super Ljava/lang/Object;
.source "LgeServiceExtConstant.java"


# static fields
.field public static final ACTION_CAPTIVE_NETWORK_CHECK_COMPLETED:Ljava/lang/String; = "com.lge.wifi.CAPTIVE_NETWORK_CHECK_COMPLETED"

.field public static final ACTION_CHANGE_WIFI_NETWORK_VALIDATE:Ljava/lang/String; = "com.lge.wifi.CHANGE_WIFI_NETWORK_VALIDATE"

.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static AKA_AP:I = 0x0

.field public static final AUTOIP_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.AUTOIP_CONNECTION_NOTIFICATION"

.field public static ENTERPRISE_AP:I = 0x0

.field public static final EXTRA_CAPTIVE_URL:Ljava/lang/String; = "extra_captive_url"

.field public static final EXTRA_GWS_SCAN_RESULT:Ljava/lang/String; = "gws_scan_result"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_MANUAL_CONNECTION_CMD:Ljava/lang/String; = "manual_connection_cmd"

.field public static final EXTRA_MANUAL_CONNECTION_VALUE:Ljava/lang/String; = "manual_connection_value"

.field public static final EXTRA_NO_RESPONSE_SSID:Ljava/lang/String; = "wifi_no_response_ssid"

.field public static final EXTRA_P2P_WIFI_STATE:Ljava/lang/String; = "lge_wifi_p2p_state"

.field public static final EXTRA_WIFI_DELETE_CONN_LIST_STATUS:Ljava/lang/String; = "wifi_delete_conn_list_status"

.field public static final EXTRA_WIFI_EXTINFO:Ljava/lang/String; = "wifi_extinfo"

.field public static final EXTRA_WIFI_SETTINGS_STATUS:Ljava/lang/String; = "wifi_setting_status"

.field public static MSCHAP_AP:I = 0x0

.field public static OPEN_AP:I = 0x0

.field public static WEP_AP:I = 0x0

.field public static final WIFI_CURRENT_AP_FRAUD:I = 0x3

.field public static final WIFI_CURRENT_AP_OPEN:I = 0x1

.field public static final WIFI_CURRENT_AP_WEP:I = 0x2

.field public static final WIFI_DATA_CONTINUITY_ENABLED:Ljava/lang/String; = "wifi_data_continuity_enabled"

.field public static final WIFI_DELETE_CONN_LIST_ACTION:Ljava/lang/String; = "com.lge.wifi.WIFI_DELETE_CONN_LIST_ACTION"

.field public static final WIFI_DELETE_FAIL_CONN_LIST:I = 0x1

.field public static final WIFI_DELETE_SUCCESS_CONN_LIST:I = 0x0

.field public static final WIFI_GWS_SCAN_RESULT:Ljava/lang/String; = "com.lge.wifi.WIFI_GWS_SCAN_RESULT"

.field public static final WIFI_GWS_SCAN_UPDATE:Ljava/lang/String; = "com.lge.wifi.WIFI_GWS_SCAN_UPDATE"

.field public static final WIFI_MANUAL_CONNECTION:Ljava/lang/String; = "com.lge.wifi.WIFI_MANUAL_CONNECTION"

.field public static final WIFI_NETWORK_BEARER_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.WIFI_NETWORK_BEARER_CHANGED_ACTION"

.field public static final WIFI_NOTIFY_IMS_STOP_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NOTIFY_IMS_STOP_ACTION"

.field public static final WIFI_NOTIFY_IMS_STOP_REPLY_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NOTIFY_IMS_STOP_REPLY_ACTION"

.field public static final WIFI_NOTIFY_VT_END_ACTION:Ljava/lang/String; = "com.lge.ims.action.VT_ENDED"

.field public static final WIFI_NOTIFY_VT_START_ACTION:Ljava/lang/String; = "com.lge.ims.action.VT_STARTED"

.field public static final WIFI_NO_RESPONSE_FROM_INTERNET_ACTION:Ljava/lang/String; = "com.lge.wifi.WIFI_NO_RESPONSE_FROM_INTERNET_ACTION"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_DISABLING:I = 0x0

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x3

.field public static final WIFI_P2P_STATE_ENABLING:I = 0x2

.field public static final WIFI_P2P_STATE_NOT_SUPPORTED:I = -0x1

.field public static final WIFI_P2P_STATE_UNKNOWN:I = 0x4

.field public static final WIFI_SETTINGS_STATUS_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

.field public static final WIFI_SETTINGS_STATUS_PAUSE:I = 0x0

.field public static final WIFI_SETTINGS_STATUS_RESUME:I = 0x1

.field public static final WIFI_UPDATE_WIFI_EXTINFO:Ljava/lang/String; = "com.lge.wifi.WIFI_UPDATE_WIFI_EXTINFO"

.field public static WPA_AP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/lge/wifi/config/LgeServiceExtConstant;->OPEN_AP:I

    .line 50
    const/4 v0, 0x1

    sput v0, Lcom/lge/wifi/config/LgeServiceExtConstant;->WEP_AP:I

    .line 57
    const/4 v0, 0x2

    sput v0, Lcom/lge/wifi/config/LgeServiceExtConstant;->WPA_AP:I

    .line 64
    const/4 v0, 0x3

    sput v0, Lcom/lge/wifi/config/LgeServiceExtConstant;->ENTERPRISE_AP:I

    .line 71
    const/4 v0, 0x4

    sput v0, Lcom/lge/wifi/config/LgeServiceExtConstant;->MSCHAP_AP:I

    .line 78
    const/4 v0, 0x5

    sput v0, Lcom/lge/wifi/config/LgeServiceExtConstant;->AKA_AP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method
