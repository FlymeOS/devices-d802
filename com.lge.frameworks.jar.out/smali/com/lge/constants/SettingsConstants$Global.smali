.class public final Lcom/lge/constants/SettingsConstants$Global;
.super Ljava/lang/Object;
.source "SettingsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/constants/SettingsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final ADB_BLOCKED:Ljava/lang/String; = "adb_blocked"

.field public static final ADMIN_LOCKED:Ljava/lang/String; = "admin_locked"

.field public static final ASSISTED_GPS_ENABLED_FOR_CMCC:Ljava/lang/String; = "assisted_gps_enabled_for_cmcc"

.field public static final BATTERY_SAVER_MODE:Ljava/lang/String; = "battery_saver_mode"

.field public static final BATTERY_SAVER_MODE_VALUE:Ljava/lang/String; = "battery_saver_mode_value"

.field public static final BEFORE_COVER_STATE:Ljava/lang/String; = "before_cover_state"

.field public static final BOOT_LOCK:Ljava/lang/String; = "boot_lock"

.field public static final COVER_CLOSING_SOUND:Ljava/lang/String; = "cover_closing_sound"

.field public static final COVER_OPEN_COUNT:Ljava/lang/String; = "cover_open_count"

.field public static final COVER_TYPE:Ljava/lang/String; = "cover_type"

.field public static final LG_DEVICE_NAME:Ljava/lang/String; = "lg_device_name"

.field public static final LOG_INFOMATION_ENABLED:Ljava/lang/String; = "log_infomation_enabled"

.field public static final LOLLIPOP_COVER_TYPE:Ljava/lang/String; = "lollipop_cover_type"

.field public static final MIRRORLINK_DEVELOPER_ID:Ljava/lang/String; = "mirrorlink_developer_id"

.field public static final MY_PLACE_ENABLED:Ljava/lang/String; = "my_place_enabled"

.field public static final NFC_FIRST_ON_CHECK:Ljava/lang/String; = "nfc_first_on_check"

.field public static final OPERATOR_TEXT_ON:Ljava/lang/String; = "operator_text_on"

.field public static final OTA_DELAY:Ljava/lang/String; = "ota_delay"

.field public static final PHONE_MODE_AGREE:Ljava/lang/String; = "phone_mode_agree"

.field public static final PHONE_MODE_APPLY:Ljava/lang/String; = "phone_mode_apply"

.field public static final PHONE_MODE_SET:Ljava/lang/String; = "phone_mode_set"

.field public static final POWER_OFF_REASON:Ljava/lang/String; = "power_off_reason"

.field public static final PREVIEW_EMAILS_MESSAGES:Ljava/lang/String; = "preview_emails_messages"

.field public static final QUICK_CIRCLE_ENABLE:Ljava/lang/String; = "quick_circle_enable"

.field public static final QUICK_CIRCLE_LIGHT:Ljava/lang/String; = "quick_circle_light"

.field public static final QUICK_COVER_ENABLE:Ljava/lang/String; = "quick_cover_enable"

.field public static final QUICK_POP_MODE_SET:Ljava/lang/String; = "quick_pop_mode_set"

.field public static final QUICK_VIEW_ENABLE:Ljava/lang/String; = "quick_view_enable"

.field public static final SD_ENCRYPTION:Ljava/lang/String; = "sd_encryption"

.field public static final SECURITY_PHONE_LOCK:Ljava/lang/String; = "security_phone_lock"

.field public static final SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;

.field public static final SHOW_AIR_QUALITY:Ljava/lang/String; = "show_air_quality"

.field public static final SPECIAL_ANIMATION_ENABLED:Ljava/lang/String; = "special_animation_enabled"

.field public static final TANGIBLE_DOCK_PANEL_ENABLE:Ljava/lang/String; = "tangible_dock_panel_enable"

.field public static final TANGIBLE_EARPHONE_PANEL_ENABLE:Ljava/lang/String; = "tangible_earphone_panel_enable"

.field public static final TANGIBLE_FEATURES_ENABLE:[Ljava/lang/String;

.field public static final TANGIBLE_PEN_PANEL_ENABLE:Ljava/lang/String; = "tangible_pen_panel_enable"

.field public static final TANGIBLE_USBSTORAGE_PANEL_ENABLE:Ljava/lang/String; = "tangible_usbstorage_panel_enable"

.field public static final TETHER_PASSWORD_SET:Ljava/lang/String; = "tether_password_set"

.field public static final USB_BLOCKED:Ljava/lang/String; = "usb_blocked"

.field public static final USE_4G_NETWORK_ONOFF:Ljava/lang/String; = "use_4g_network_onoff"

.field public static final USE_4G_SINGLE_DATA_NETWORK_ONOFF:Ljava/lang/String; = "use_4g_single_data_network_onoff"

.field public static final VOLTE_ROAMING_ENABLED:Ljava/lang/String; = "volte_roaming_enabled"

.field public static final VTR_WIND_SIM_INSERTED:Ljava/lang/String; = "vtr_wind_sim_inserted"

.field public static final WIFI_LIST_SORTING:Ljava/lang/String; = "wifi_list_sorting"

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_CMCC:Ljava/lang/String; = "wifi_networks_available_notification_on_cmcc"

.field public static final WIFI_NOT_IN_RANGE:Ljava/lang/String; = "wifi_not_in_range"

.field public static final WIFI_VZW_NO_INTERNET_CONNECTION_POP_UP:Ljava/lang/String; = "wifi_vzw_no_internet_connection_pop_up"

.field public static final WIFI_WI_FI_NOTIFICATIONS:Ljava/lang/String; = "wi_fi_notifications"

.field public static final WINDOW_AUTO_UNLOCK_ENABLE:Ljava/lang/String; = "window_auto_unlock_enable"

.field public static final WINDOW_MESSAGES_ENABLE:Ljava/lang/String; = "window_messages_enable"

.field public static final WPS_NFC_PAYLOAD_HEADER_SUPPORT:Ljava/lang/String; = "wps_nfc_payload_header_support"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3775
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "assisted_gps_enabled_for_cmcc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/constants/SettingsConstants$Global;->SETTINGS_EX_TO_BACKUP:[Ljava/lang/String;

    .line 3807
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tangible_usbstorage_panel_enable"

    aput-object v1, v0, v2

    const-string v1, "tangible_earphone_panel_enable"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "tangible_dock_panel_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tangible_pen_panel_enable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/constants/SettingsConstants$Global;->TANGIBLE_FEATURES_ENABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
