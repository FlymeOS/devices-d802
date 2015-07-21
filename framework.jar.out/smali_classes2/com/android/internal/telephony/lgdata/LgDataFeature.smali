.class public Lcom/android/internal/telephony/lgdata/LgDataFeature;
.super Ljava/lang/Object;
.source "LgDataFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/LgDataFeature$1;,
        Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    }
.end annotation


# static fields
.field public static final ACG:I = 0x20

.field public static final ATANDT:I = 0x4

.field public static final BELL:I = 0xc

.field public static final CLR:I = 0x13

.field public static final CMCC:I = 0x1b

.field public static final CTC:I = 0x1a

.field public static final CUCC:I = 0x1d

.field public static final DCM:I = 0x3

.field public static final DTAG:I = 0x18

.field public static final HKOPEN:I = 0x1e

.field public static final KDDI:I = 0x8

.field public static final KT:I = 0x5

.field public static final LGUPLUS:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LgDataFeature"

.field public static final LPP_FEATURE_TYPE_BOOLEAN:I = 0x0

.field public static final LPP_FEATURE_TYPE_BYTE:I = 0x6

.field public static final LPP_FEATURE_TYPE_CHAR:I = 0x7

.field public static final LPP_FEATURE_TYPE_DOUBLE:I = 0x5

.field public static final LPP_FEATURE_TYPE_FLOAT:I = 0x4

.field public static final LPP_FEATURE_TYPE_INTEGER:I = 0x1

.field public static final LPP_FEATURE_TYPE_LONG:I = 0x3

.field public static final LPP_FEATURE_TYPE_OBJECT:I = -0x1

.field public static final LPP_FEATURE_TYPE_SHORT:I = 0x2

.field public static final LPP_FEATURE_TYPE_STRING:I = 0x8

.field public static final MON:I = 0x11

.field public static final MPCS:I = 0x7

.field public static final MPDN_NOTSUPPORT:I = 0x0

.field public static final OPEN:I = 0xf

.field public static final ORG:I = 0x15

.field public static final RGS:I = 0xd

.field public static final SBM:I = 0x21

.field public static final SHB:I = 0x10

.field public static final SKT:I = 0x6

.field public static final SPCS:I = 0x9

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_NAME:Ljava/lang/String; = "name"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_FEATURE_ATTRIBUTE_LPP_VALUE:Ljava/lang/String; = "value"

.field private static final TAG_ROOT:Ljava/lang/String; = "lpp"

.field private static final TAG_ROOT_ATTRIBUTE_MODEL:Ljava/lang/String; = "model"

.field private static final TAG_ROOT_ATTRIBUTE_OPERATOR:Ljava/lang/String; = "operator"

.field private static final TAG_ROOT_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field public static final TCL:I = 0x14

.field public static final TLF:I = 0x19

.field public static final TLS:I = 0xe

.field public static final TMUS:I = 0xb

.field public static final TRF_PP:I = 0x17

.field public static final USC:I = 0x1c

.field public static final VDF:I = 0xa

.field public static final VIV:I = 0x12

.field public static final VZW:I = 0x1

.field public static final VZW_LTE_PP:I = 0x1f

.field public static final VZW_PP:I = 0x16

.field private static final XML_FILENAME:Ljava/lang/String; = "lpp_data"

.field public static lgp_data_apn_mismatch_modem_ehrpd_apn_info_num:I

.field private static sFeatureSet:I

.field private static sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;


# instance fields
.field public MPDNset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 100
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->lgp_data_apn_mismatch_modem_ehrpd_apn_info_num:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "featureset"    # Ljava/lang/String;

    .prologue
    .line 4394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setFeatureSet(Ljava/lang/String;)V

    .line 4396
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/lgdata/LgDataFeature$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/internal/telephony/lgdata/LgDataFeature$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/lgdata/LgDataFeature;)Lcom/android/internal/telephony/lgdata/LgDataFeature;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .prologue
    .line 55
    sput-object p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    return-object p0
.end method

.method public static getFeatureSet()I
    .locals 1

    .prologue
    .line 4415
    sget v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;
    .locals 3

    .prologue
    .line 4407
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    if-nez v0, :cond_0

    .line 4409
    new-instance v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    const-string v1, "ro.afwdata.LGfeatureset"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    .line 4411
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sLgDataFeature:Lcom/android/internal/telephony/lgdata/LgDataFeature;

    return-object v0
.end method

.method private setFeatureSet(Ljava/lang/String;)V
    .locals 10
    .param p1, "featureset"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4419
    const-string v2, "VZWBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4420
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4422
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4423
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4424
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4425
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4426
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_RESET_PERMANENT_FAIL_ON_ROAMING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4427
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_RETRY_NO_USE_PERMANENTFAIL_ON_AFW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4428
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4429
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_AUTOPROFILE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4430
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SVLTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4431
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4432
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4433
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4434
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_RESET_DATA_CONNECTION_WHEN_DCTRACKER_DISPOSE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4435
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4436
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4437
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4438
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_CLAT_FOR_DEFAULT_ONLY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4439
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4440
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_ADD_VT_IMS_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4441
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEFAULT_TYPE_SET_DATAENABLED_TRUE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4442
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_INFINITE_RETRY_WIFI_SCORE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4445
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4446
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4447
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_KEEP_EMERGENCY_INFO_ON_PHONE_TYPE_CHANGED_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4448
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_NOTIFY_WHEN_IMS_APN_CHANGED_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4449
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_NOT_SEND_APNSYNC_WHEN_SINGLE_RAT_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4450
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4451
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_TRYSETUP_ANY_BEARER_FOR_GLOBAL_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4452
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TOOL_MODEM_TEST_MODE_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4453
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4454
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4455
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4456
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SEND_NONE_APN_FOR_APN_SYNC_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4457
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4458
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_NODE_HANDLER_FOR_FOTA_SDM_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4459
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BACKUP_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4460
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SET_EST_CAUSE_FOR_EMERGENCY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4461
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4462
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4463
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4464
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4465
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4466
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4467
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4468
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4469
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_INTERNETAPN_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4470
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4471
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_GET_MTU_FROM_NETWORK_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4472
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_WHEN_EMERGENCY_STATE_EXCEPT_EPDN_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4473
    const-string v2, "ro.product.board"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msm8994"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ro.product.board"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msm8992"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4475
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_CLEAN_UP_WHEN_EMERGENCY_CALL_EXCEPT_IMS_EMERGENCY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4477
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOT_DISCONNECT_IMS_EMERGENCY_WHEN_RECOVERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4478
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_USE_DATA_ROAMING_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4479
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL_NO_SIM:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4480
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UPDATE_ISAVAILABLE_FOR_MMS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4482
    const-string/jumbo v2, "true"

    const-string v3, "persist.lg.data.hvolte_vzw"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4483
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_HVOLTE_CONFIG_FOR_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4485
    :cond_1
    const-string/jumbo v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4487
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_LTE_PCO_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4491
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5157
    :cond_3
    :goto_0
    const-string v2, "persist.lg.data.load_feature"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

    .line 5160
    :cond_4
    return-void

    .line 4493
    :cond_5
    const-string v2, "VZWBASE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4494
    const/16 v2, 0x16

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto :goto_0

    .line 4495
    :cond_6
    const-string v2, "TRFBASE_PP"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4496
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LG_DATA_CDMA_DUMMY_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4497
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4498
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BLOCK_DATA_CALL_AT_DEFAULT_MEID_ESN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4499
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4500
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NO_SIM_CDMA_DATA_CALL_SEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4502
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4503
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4504
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4505
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4506
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4507
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4508
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4509
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4510
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4512
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4513
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4514
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_INFINITE_RETRY_WIFI_SCORE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4515
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UPDATE_ISAVAILABLE_FOR_MMS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4516
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_ABNORMAL_REFCOUNT_IN_NO_SIM_TRF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4517
    const/16 v2, 0x17

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 4518
    :cond_7
    const-string v2, "ATTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4519
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4521
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4522
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4523
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4524
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4525
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4526
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4527
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4528
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4529
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4530
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REMOVE_INTERNET_CAPABILITY_IF_DATA_DISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4531
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4532
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.lg.data.recovery"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4533
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.service.privacy.enable"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4534
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4535
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_CLAT_FOR_DEFAULT_ONLY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4536
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_MERGE_SKIP_SAME_TYPE_CHECK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4537
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4538
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL_NO_SIM:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4539
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_ADD_VT_IMS_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4540
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_INFINITE_RETRY_WIFI_SCORE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4541
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4544
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4545
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4546
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4547
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4548
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MMS_TYPE_BLOCK_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4549
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ALLOW_HIPRI_ON_PREFERRED_APN_ONLY_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4550
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DOMESTIC_INTERNATIONAL_DATAMENU_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4551
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BACKUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4552
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SECRECTCODE_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4553
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATARECOVERY_HIDDENMENU_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4554
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEFAULT_TYPE_SET_DATAENABLED_TRUE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4555
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UPDATE_ISAVAILABLE_FOR_MMS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4556
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATARECOVERY_BLOCK_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4559
    const-string v2, "persist.lg.data.IMSSupport"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4560
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4561
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4562
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4563
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4564
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4565
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ATT_IMS_DAM:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4566
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4567
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4568
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4569
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USER_DATA_MENU_CONTROL_ONLY_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4570
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_IMSPDN_BY_ALLTYPE_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4571
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_Enhanced4GLTE_IMS_ON_DATAROAMINGDISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4572
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_DATARECOVERY_EXCEPTION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4575
    :cond_8
    const-string v2, "CRK"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "TRF"

    const-string v3, "ro.build.target_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4576
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DOMESTIC_INTERNATIONAL_DATAMENU_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4578
    :cond_a
    const-string/jumbo v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4579
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4581
    :cond_b
    const-string v2, "TMUSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4582
    const/16 v2, 0xb

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4583
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UPDATE_ISAVAILABLE_FOR_MMS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4584
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4585
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4586
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4587
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4588
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4589
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4590
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4591
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4592
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.lgiqc.ext"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4593
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.lg.data.recovery"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4594
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4595
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4596
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4597
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4598
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_REMOVE_WIFI_UPSTREAM_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4599
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG_TMUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.service.privacy.enable"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4600
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.service.privacy.enable"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4601
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4602
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4603
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_IMSPDN_BY_ALLTYPE_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4604
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_CLAT_FOR_DEFAULT_ONLY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4605
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEFAULT_TYPE_SET_DATAENABLED_TRUE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4606
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_INFINITE_RETRY_WIFI_SCORE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4607
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_DATARECOVERY_EXCEPTION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4608
    :cond_c
    const-string v2, "BELLBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4609
    const/16 v2, 0xc

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4610
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4611
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4612
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4613
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4614
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4615
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DISABLE_PROTOCOL_UI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4616
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_IMSPDN_BY_ALLTYPE_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4617
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4618
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4619
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4620
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4621
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4622
    :cond_d
    const-string v2, "RGSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4623
    const/16 v2, 0xd

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4624
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4625
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4626
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4627
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4628
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_IPV4_FALLBACK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4629
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4630
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4631
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4632
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_IMSPDN_BY_ALLTYPE_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4633
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4634
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4635
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_EMERGENCY_APN_SYNC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4636
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4637
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4638
    :cond_e
    const-string v2, "TLSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4639
    const/16 v2, 0xe

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 4640
    :cond_f
    const-string v2, "SKTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4641
    sput v9, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4642
    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v9, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4644
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4645
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.lg.data.recovery"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4646
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4647
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4648
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4649
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4650
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4651
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4652
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4653
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4654
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4655
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4656
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_CLAT_FOR_DEFAULT_ONLY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4657
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REMOVE_INTERNET_CAPABILITY_IF_DATA_DISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4658
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4659
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4663
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_SIM_ACTION_REQ:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4664
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4665
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4666
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4667
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4668
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4669
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4670
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4671
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4672
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4673
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4674
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4675
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4676
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4677
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4678
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4679
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4680
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4681
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4682
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4683
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4684
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4685
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REFCOUNT_ON_AIRPLANE_ONOFF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4686
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_CYCLEDAY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4687
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_INFINITE_RETRY_WIFI_SCORE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4688
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4690
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4691
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4692
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4693
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4694
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4695
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4696
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4697
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4698
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DROP_NOTIFY_WHEN_USING_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4699
    const-string/jumbo v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4700
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4701
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4703
    :cond_10
    const-string/jumbo v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4704
    iput v9, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4705
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4710
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4711
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4712
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4713
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4714
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4715
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4716
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4717
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4718
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4719
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4720
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4721
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4722
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4723
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_IPV6_MTU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4724
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SKTCATS_PORTFORWARDING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4726
    :cond_12
    const-string v2, "KTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4727
    sput v8, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4728
    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v8, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4731
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.lg.data.recovery"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4732
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4733
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4734
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4735
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4736
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4737
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4738
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4739
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4740
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4741
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4742
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4743
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_CLAT_FOR_DEFAULT_ONLY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4744
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REMOVE_INTERNET_CAPABILITY_IF_DATA_DISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4745
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4746
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4750
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_SIM_ACTION_REQ:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4751
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4752
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4753
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4754
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4755
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4756
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4757
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4758
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4759
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4760
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4761
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4762
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4763
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4764
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4765
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4766
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4767
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4768
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REFCOUNT_ON_AIRPLANE_ONOFF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4769
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_CYCLEDAY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4770
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_INFINITE_RETRY_WIFI_SCORE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4771
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4773
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4774
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4775
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4776
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4777
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4778
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4779
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4780
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4781
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4782
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DROP_NOTIFY_WHEN_USING_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4783
    const-string/jumbo v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4784
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4785
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4787
    :cond_13
    const-string/jumbo v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4788
    iput v8, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4789
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4790
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4795
    :cond_14
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4796
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4797
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4798
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4799
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4800
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4801
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4802
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4803
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4804
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4805
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_IPV6_MTU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4807
    :cond_15
    const-string v2, "LGTBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4808
    sput v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4809
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v7, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4810
    const/4 v0, 0x0

    .line 4811
    .local v0, "isSVLTE":I
    const-string/jumbo v2, "telephony.lteOnCdmaDevice"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4812
    const-string v2, "ro.product.device"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4814
    .local v1, "product_model":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4815
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4816
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4817
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.lg.data.recovery"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4818
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4819
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4820
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4821
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_MPDN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4822
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4823
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4824
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4825
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4826
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4827
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4828
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4829
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4830
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_CLAT_FOR_DEFAULT_ONLY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4831
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4835
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_SIM_ACTION_REQ:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4836
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4837
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4838
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4839
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4840
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4841
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4842
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4843
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4844
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4845
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4846
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4847
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4848
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4849
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4850
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4851
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4852
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4853
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4854
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_DELETE_UID_LOCK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4855
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REFCOUNT_ON_AIRPLANE_ONOFF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4856
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_CYCLEDAY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4857
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_INFINITE_RETRY_WIFI_SCORE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4858
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4860
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4861
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4862
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4863
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_NOTSHOW_PAYPOPUP_BEFORE_BOOTCOMPLETE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4864
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4865
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4866
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4867
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4868
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DROP_NOTIFY_WHEN_USING_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4869
    const-string/jumbo v2, "true"

    const-string v3, "persist.lg.data.usim_mobility"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4870
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4872
    :cond_16
    const-string/jumbo v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4873
    iput v7, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 4874
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4875
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4880
    :cond_17
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4882
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4884
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4885
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4886
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4887
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4888
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4889
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4890
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4891
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4892
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4893
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4894
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4895
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4896
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4897
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4898
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_IPV6_MTU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4899
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DISCONNECT_DEFAULT_PDN_WITHOUT_DNS_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4900
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UNPAID_NOTIFICATION_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4901
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_REMOVE_BACKGROUND_RESTRICT_NOTI_ON_ROAMING_NO_SVC_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4902
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_LGU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4905
    const/4 v2, 0x0

    const-string v3, "intel_modem"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4906
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_AVOID_EXCEPTION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4907
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_ROAMING_MODE_CHANGE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4908
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_SUPPORT_GCF_TEST:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4909
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_NOTIFY_DATACONNECTION_ON_RECORDS_LOADED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4910
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_SUPPORT_THERMAL_TEST:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4911
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_UPDATA_UICC_IN_NOSVC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4912
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_DATACONNECTION_APN_PROFILE_ID:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4913
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_EMERGENCY_FAIL_CHECK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4914
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_DATACONNECTION_LG_DATA_RECOVERY_SKIP_SCREEN_OFF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4915
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_APNSYNC_NO_SYNC_LTE_ROAMING_OFF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4916
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_UIAPP_DATA_ACTIVITY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4917
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_PCSCF_ADDR_FIX:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4918
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_APN_SELECT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4920
    :cond_18
    if-ne v0, v5, :cond_19

    .line 4921
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4922
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4923
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4924
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4925
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4926
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4927
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4928
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4929
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DISCONNECT_DEFAULT_PDN_WITHOUT_DNS_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4930
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UNPAID_NOTIFICATION_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4931
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_REMOVE_BACKGROUND_RESTRICT_NOTI_ON_ROAMING_NO_SVC_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4932
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BLOCK_RIL_REQUEST_ALLOW_DATA_FOR_FUSION3:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4934
    :cond_19
    const-string v2, "omegar"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4935
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4936
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BLOCK_RIL_REQUEST_ALLOW_DATA_FOR_FUSION3:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4938
    .end local v0    # "isSVLTE":I
    .end local v1    # "product_model":Ljava/lang/String;
    :cond_1a
    const-string v2, "DCMBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4939
    const/4 v2, 0x3

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4940
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4941
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_APN_CHANGE_DCM:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4942
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ENABLE_PROFILE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4943
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4944
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_DISABLE_FETCHDUN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4945
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4946
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ALLOW_LTE_NETWORK_MODE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4947
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_ALL_NETWORK_CAPABILITY_FOR_DEFAULT_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4948
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_USE_FIXED_SUBID:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4949
    :cond_1b
    const-string v2, "MPCSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4950
    const/4 v2, 0x7

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 4951
    :cond_1c
    const-string v2, "KDDIBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4952
    const-string v2, "ro.product.model"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4953
    .restart local v1    # "product_model":Ljava/lang/String;
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 4955
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4956
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4957
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4958
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4959
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4960
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4961
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4962
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4963
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4964
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4965
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4966
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4967
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4968
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4969
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4970
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4971
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4972
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4975
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4976
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4977
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4978
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4979
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4980
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4981
    const-string v2, "LG-D722J"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4982
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MVNO_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4983
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CPA_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4987
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4988
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4989
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ONLY_CONNECT_IMS_WHEN_RADIO_OFF_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4990
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_DNS_LOCAL_ADDR_ALLOWED_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4991
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_VOLTE_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4992
    const-string v2, "GEM"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4993
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SUPPORT_VOLTE_ROAMING_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 4995
    :cond_1d
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_ROAMING_CAPABILITIES_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 4985
    :cond_1e
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CPA_KDDI:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto :goto_1

    .line 4997
    .end local v1    # "product_model":Ljava/lang/String;
    :cond_1f
    const-string v2, "SPCSBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4998
    const/16 v2, 0x9

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 5001
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5002
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5003
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5004
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5005
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5006
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5007
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5008
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5009
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5010
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5011
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BACKUP:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5012
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5013
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5014
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5015
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UPDATE_ISAVAILABLE_FOR_MMS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5016
    const-string/jumbo v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5017
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.service.privacy.enable"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5022
    :cond_20
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_GSM_GLOBAL_PREFERED_APN_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5023
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5024
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5025
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_FAIL_ICON_DISPLAY_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5026
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5027
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5028
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5029
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5030
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5032
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5033
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5034
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_GET_APNLIST_FOR_SLATE_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5035
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5036
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_CDMA_DUMMY_APN_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5037
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_MPDN_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5038
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_HANDLE_IA_TYPE_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5039
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_TETHERING_PDN_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5040
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5041
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_UPDATE_MMS_INFO_FROM_NV:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5043
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_HIDDENMENU_APN_RESTORE_TIMER_EXTEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5044
    const-string/jumbo v2, "true"

    const-string v3, "persist.lg.data.non_csim"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5046
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MATCHING_SUBID_PHONEID_FOR_NO_SIM_DATACALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5048
    :cond_21
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_OMADM_SPRINT_EXTENSION_TO_CONTROL_DATA_CONNECTION_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5049
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BACKUP_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5050
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BLOCK_DUN_WHEN_DM_RESTRICTED_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5051
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CDMA_TETHER_DUN_NAI_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5052
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_TETHERING_DUN_PDN_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5053
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ADD_NET_CAPABILITY_FOR_SINGLE_RAT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5054
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_CHECK_OTA_PERMISSION_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 5056
    :cond_22
    const-string v2, "USCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5057
    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 5059
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_DUN_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5061
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MMS_IS_NOT_RETRIEVED_AFTER_VOICECALL_END_WHEN_WIFION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5062
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5063
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5064
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5065
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5066
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5067
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UPDATE_ISAVAILABLE_FOR_MMS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5068
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5069
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_MERGE_IGNORE_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5071
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5072
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC_USC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5073
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_USC_DEFAULT_CONFIG_USC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5074
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_MTU_SET_USC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 5075
    :cond_23
    const-string v2, "ACGBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 5076
    const/16 v2, 0x20

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 5078
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5079
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5080
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5081
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5082
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5083
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5084
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5085
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DISCONNECT_ONLY_CHANGED_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5086
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MMS_IS_NOT_RETRIEVED_AFTER_VOICECALL_END_WHEN_WIFION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5087
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_ONLY_CHANGED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5090
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_APNSYNC_ADD_FOR_ACG:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5091
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ACG_SET_APN_DB_FROM_NV:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5092
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ACG_ADD_APN_INFO_TO_TELEPHONY_DB:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5093
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ACG_ADD_APN_LIST:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5094
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ACG_SEQUENCE_DETECTOR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5095
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 5098
    :cond_24
    const-string v2, "SHBBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5099
    const/16 v2, 0x10

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 5100
    :cond_25
    const-string v2, "MONBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5101
    const/16 v2, 0x11

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    goto/16 :goto_0

    .line 5102
    :cond_26
    const-string v2, "CMCCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5103
    const/16 v2, 0x1b

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 5105
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5106
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5107
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5108
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5109
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5110
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5111
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v3, "persist.lg.data.recovery"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5112
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5113
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_WIFI_OFF_CMCC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5114
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UI_SERVICE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5115
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 5116
    :cond_27
    const-string v2, "CTCBASE"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 5117
    const/16 v2, 0x1a

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 5118
    const-string/jumbo v2, "true"

    const-string v3, "ro.support_mpdn"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5119
    const/16 v2, 0x1a

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    .line 5123
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5124
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SELECT_CTC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5125
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_SLAAC_IPV6_ALLOCATION_BOOSTER:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5127
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PPPOE_UPDATE_ROUTE_CTC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5128
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_USE_FIRST_SIM_OPERRATOR_NUMERIC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5129
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IGNORE_HIPRI_APN_FOR_CDMA_MMS_CT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5130
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTOIN_SWITCH_APN_FOR_CDMA_MMS_CT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5131
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTOIN_MMS_BLOCK_ON_ROAMING_CT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5133
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TRAFFIC_STATS_API_FOR_CTC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5134
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CONNECTIVITYSERVICE_CTTL_CMCC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5135
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5136
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5137
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5138
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5139
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5140
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_NOT_ALLOW_BEFORE_SIM_LOADED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5141
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_SYNC_ONLY_SLOT1:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5142
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_CTC_BLOCK_MMS_OVER_TDLTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5143
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_PPP_DIALING_NUMBER_CTC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5144
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_ROAMING_POPUP_CTC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5145
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING_ALWAYS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5146
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IPV6_ADDR_ACQUISITION_FAIL_ON_EHRPD:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5147
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_C2K_WAIT_30SEC_OVER_EHRPD_CTC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5148
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UI_SERVICE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5149
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UPDATE_CURRENT_CARRIER_IN_PROVIDER_CTC:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5150
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_RETRY_FAIL_CAUSE_FOR_MMDR_EHRPD_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0

    .line 5121
    :cond_28
    iput v6, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    goto/16 :goto_2

    .line 5152
    :cond_29
    const/16 v2, 0xf

    iput v2, p0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    sput v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    .line 5153
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSet()V

    .line 5154
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_XXXX_YYYYY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    goto/16 :goto_0
.end method

.method private setGlobalCommonFeatureSet()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5163
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_MATCH_PROTOCOL_TYPE_OF_IA_WITH_DEFAULT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5164
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5165
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5166
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_RCS_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5167
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5168
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5169
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IGNORE_CHECKSUM_OF_APNXML:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5170
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_OPEN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5171
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_KEEP_USERAPN_AND_PREFERAPN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5172
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_CHECK_EXEMPT_TYPE_TO_ADD_ROUTE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5173
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5174
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5175
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REDIAL_FOR_NO_CAUSE_CODE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5176
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5177
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5178
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5179
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5180
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_ADD_XCAP_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5181
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ALLOW_XCAPTYPE_ON_DATADISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5182
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5183
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5184
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_CLAT_FOR_DEFAULT_ONLY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5185
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_REMOVE_INTERNET_CAPABILITY_IF_DATA_DISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5186
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5187
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5188
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_MERGE_IGNORE_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5189
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VALIDATE_SUBID:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5190
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_BUGFIX_IPV6_ADDRCONF_KERNEL_CRASH:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5191
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_UPDATE_ISAVAILABLE_FOR_MMS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5192
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PDP_RETRY_BUG_FIX:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5197
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_LEGACY_FAST_DORMANCY_OFF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5198
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5199
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5200
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5201
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v1, "persist.lg.data.recovery"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5202
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5203
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_SIM_MSIM_BLOCK_DATA_ENABLED_CHANGE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5204
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_NETD_CLATD_RECONFIGURATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5205
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_STOP_RETRY_NI_NOT_AVAILABLE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5206
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_ALLOW_MULTIPLE_MMS_APN_EXCEPTION_CASE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5207
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE_FOR_IA_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    const-string v1, "ro.lge.supportvolte"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5209
    const-string v0, "mtk"

    const-string v1, "ro.lge.chip.vendor"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5210
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setGlobalCommonFeatureSetForMTK()V

    .line 5212
    :cond_0
    return-void
.end method

.method private setGlobalCommonFeatureSetForMTK()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5216
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ENV_MODIFICATION_BY_MTK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5217
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_EVN_MODIFICATION_FOR_LAMP_JOIN_FOR_MTK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5218
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_MSIM_NOTIFY_DDS_CHANGED_ON_ATTACHED_MTK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5219
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_START_CLATD_ON_PREFIX_RECEIVED_FOR_MTK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5220
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_DELIVERY_DNS_AS_USING_RDNSS_OPTION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5221
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_BLOCK_UNUSED_APN_TYPE_INIT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5222
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_IPV6_SUPPORT_FOR_MTK:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5223
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_MSIM_VALIDATE_DDS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->setValue(Z)V

    .line 5226
    return-void
.end method

.method private writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5253
    if-eqz p2, :cond_0

    const-string v0, "LGP_DATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5255
    :cond_0
    const-string v0, "LgDataFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeFeatureAttribute(): Not LPP Data Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    :goto_0
    return-void

    .line 5259
    :cond_1
    const-string v0, "    "

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5260
    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5261
    const-string v0, "name"

    invoke-interface {p1, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5262
    const-string/jumbo v0, "type"

    invoke-interface {p1, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5263
    const-string/jumbo v0, "value"

    invoke-interface {p1, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5264
    const-string v0, "feature"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5265
    const-string v0, "\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public deleteFeatureFile()V
    .locals 5

    .prologue
    .line 5457
    const/4 v0, 0x0

    .line 5462
    .local v0, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 5464
    new-instance v1, Ljava/io/File;

    const-string v3, "lpp_data.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5467
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5471
    :goto_0
    return-void

    .line 5468
    :catch_0
    move-exception v2

    .line 5469
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "LgDataFeature"

    const-string v4, "deleteFeatureFile(): Error to delte file - lpp_data.xml"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllFeatureNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 5477
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_ENUM_MAX:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getCode()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5479
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->values()[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5480
    .local v3, "name":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5482
    .end local v3    # "name":Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getBooleanFeatureValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 5532
    const/4 v3, 0x0

    .line 5536
    .local v3, "ret":Z
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5538
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 5549
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    .line 5540
    :catch_0
    move-exception v2

    .line 5542
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5544
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 5546
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFeatureValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 5688
    const/4 v3, 0x0

    .line 5692
    .local v3, "ret":Ljava/lang/Object;
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5693
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 5704
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 5695
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 5697
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5699
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 5701
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIntegerFeatureValue(Ljava/lang/String;)I
    .locals 7
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 5584
    const/4 v3, -0x1

    .line 5588
    .local v3, "ret":I
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5590
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 5601
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    .line 5592
    :catch_0
    move-exception v2

    .line 5594
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerFeatureValue(): There is no such field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5596
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 5598
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LgDataFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerFeatureValue(): Exception found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStringFeatureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 5636
    const/4 v4, 0x0

    .line 5640
    .local v4, "ret":Ljava/lang/String;
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5642
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5653
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v4

    .line 5644
    :catch_0
    move-exception v3

    .line 5646
    .local v3, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringFeatureValue(): There is no such field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5648
    .end local v3    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 5650
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringFeatureValue(): Exception found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)I
    .locals 6
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 5500
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5502
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5504
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 5527
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 5505
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 5506
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    .line 5507
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    .line 5508
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_0

    .line 5509
    :cond_4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_0

    .line 5510
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    goto :goto_0

    .line 5511
    :cond_6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    goto :goto_0

    .line 5515
    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    goto :goto_0

    .line 5518
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 5520
    .local v2, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v3, "LgDataFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType(): There is no such field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5527
    .end local v2    # "nsfe":Ljava/lang/NoSuchFieldException;
    :cond_8
    :goto_1
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 5522
    :catch_1
    move-exception v0

    .line 5524
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LgDataFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType(): Exception found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public loadFeatures()V
    .locals 21

    .prologue
    .line 5358
    const/4 v3, 0x0

    .line 5363
    .local v3, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 5365
    new-instance v6, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5367
    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 5370
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5376
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): Load all features from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5379
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 5380
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v15, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5382
    const/16 v16, 0x0

    .line 5383
    .local v16, "type":I
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 5384
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    goto :goto_0

    .line 5371
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .line 5372
    .local v9, "fnfe":Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5452
    .end local v9    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 5387
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_0
    :try_start_2
    const-string v18, "lpp"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 5388
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file does not start with lpp tag."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5436
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catch_1
    move-exception v17

    .line 5437
    .local v17, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error parsing LPP features. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5444
    if-eqz v8, :cond_1

    .line 5446
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .end local v17    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    move-object v7, v8

    .line 5452
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 5396
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_2
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 5392
    :cond_3
    :goto_3
    :try_start_5
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v16

    .line 5393
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 5444
    if-eqz v8, :cond_1

    .line 5446
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 5447
    :catch_2
    move-exception v18

    goto :goto_2

    .line 5399
    :cond_4
    :try_start_7
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 5400
    .local v14, "nodeName":Ljava/lang/String;
    const-string v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 5401
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "LPP Feature file not well-formed."

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5439
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catch_3
    move-exception v4

    .line 5440
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v18, "LgDataFeature"

    const-string v19, "loadFeatures(): Error loading LPP features. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5444
    if-eqz v8, :cond_1

    .line 5446
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 5447
    :catch_4
    move-exception v18

    goto :goto_2

    .line 5404
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_5
    const/16 v18, 0x0

    :try_start_a
    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5405
    .local v10, "lpp_name":Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5406
    .local v11, "lpp_type":Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5407
    .local v12, "lpp_value":Ljava/lang/String;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures():  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getType(Ljava/lang/String;)I

    move-result v5

    .line 5411
    .local v5, "feature_type":I
    if-nez v5, :cond_7

    .line 5413
    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setBooleanFeatureValue(Ljava/lang/String;Z)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 5444
    .end local v5    # "feature_type":I
    .end local v10    # "lpp_name":Ljava/lang/String;
    .end local v11    # "lpp_type":Ljava/lang/String;
    .end local v12    # "lpp_value":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    :catchall_0
    move-exception v18

    if-eqz v8, :cond_6

    .line 5446
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 5449
    :cond_6
    :goto_4
    throw v18

    .line 5415
    .restart local v5    # "feature_type":I
    .restart local v10    # "lpp_name":Ljava/lang/String;
    .restart local v11    # "lpp_type":Ljava/lang/String;
    .restart local v12    # "lpp_value":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "type":I
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 5419
    :try_start_c
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setIntegerFeatureValue(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 5421
    :catch_5
    move-exception v13

    .line 5423
    .local v13, "nfe":Ljava/lang/NumberFormatException;
    :try_start_d
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): fail to parseInt, "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") as "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5426
    .end local v13    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 5428
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setStringFeatureValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5432
    :cond_9
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadFeatures(): fail to set "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") as "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 5447
    .end local v5    # "feature_type":I
    .end local v10    # "lpp_name":Ljava/lang/String;
    .end local v11    # "lpp_type":Ljava/lang/String;
    .end local v12    # "lpp_value":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "type":I
    .restart local v17    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v18

    goto/16 :goto_2

    .end local v17    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v19

    goto/16 :goto_4
.end method

.method public saveFeatures()V
    .locals 22

    .prologue
    .line 5271
    const/4 v5, 0x0

    .line 5276
    .local v5, "XML_FILE_PATH":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 5278
    new-instance v9, Ljava/io/File;

    const-string v18, "lpp_data.xml"

    move-object/from16 v0, v18

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5280
    .local v9, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 5283
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5289
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    const-string v18, "LgDataFeature"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "saveFeatures(): Save all features to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5291
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v17

    .line 5294
    .local v17, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v17, :cond_7

    .line 5295
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5296
    const-string v18, "UTF-8"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5297
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5298
    const/16 v18, 0x0

    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5299
    const/16 v18, 0x0

    const-string v19, "model"

    const-string v20, "ro.product.device"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5300
    const/16 v18, 0x0

    const-string v19, "operator"

    const-string v20, "ro.afwdata.LGfeatureset"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5301
    const/16 v18, 0x0

    const-string/jumbo v19, "version"

    const-string v20, "ro.lge.swversion"

    const-string v21, "NULL"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5302
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5304
    const-class v18, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 5306
    .local v15, "lgFeagureFields":[Ljava/lang/reflect/Field;
    move-object v6, v15

    .local v6, "arr$":[Ljava/lang/reflect/Field;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v8, v6, v13

    .line 5307
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-eqz v18, :cond_3

    .line 5310
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 5311
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "boolean"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5306
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5284
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    .end local v17    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 5285
    .local v10, "fnfe":Ljava/io/FileNotFoundException;
    const-string v18, "LgDataFeature"

    const-string v19, "saveFeatures(): Error to open file - lpp_data.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5353
    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 5314
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    .restart local v17    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 5315
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "int"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 5317
    :catch_1
    move-exception v7

    .line 5318
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 5340
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :catch_2
    move-exception v7

    .line 5341
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5345
    if-eqz v12, :cond_2

    .line 5347
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    move-object v11, v12

    .line 5353
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 5322
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :cond_3
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    const-class v19, Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 5323
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "string"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 5328
    :catch_3
    move-exception v7

    .line 5329
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 5345
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v18

    if-eqz v12, :cond_4

    .line 5347
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 5350
    :cond_4
    :goto_4
    throw v18

    .line 5325
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :cond_5
    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 5326
    .local v16, "obj":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "object"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 5334
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "obj":Ljava/lang/Object;
    :cond_6
    const/16 v18, 0x0

    :try_start_b
    const-string v19, "lpp"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5335
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5336
    const-string v18, "\n"

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 5345
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "lgFeagureFields":[Ljava/lang/reflect/Field;
    :goto_5
    if-eqz v12, :cond_2

    .line 5347
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    .line 5348
    :catch_4
    move-exception v18

    goto/16 :goto_3

    .line 5338
    :cond_7
    :try_start_d
    const-string v18, "LgDataFeature"

    const-string v19, "saveFeatures() XmlSerializer is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 5348
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v18

    goto/16 :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v19

    goto :goto_4
.end method

.method public setBooleanFeatureValue(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 5556
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5558
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5560
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 5561
    .local v5, "old":Z
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 5562
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBooleanFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5580
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Z
    :cond_0
    :goto_0
    return-void

    .line 5564
    :catch_0
    move-exception v4

    .line 5566
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBooleanFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5568
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 5570
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBooleanFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5572
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 5574
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBooleanFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5576
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 5578
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBooleanFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFeatureValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 5711
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5713
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 5714
    .local v5, "old":Ljava/lang/Object;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5715
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5733
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Ljava/lang/Object;
    :goto_0
    return-void

    .line 5717
    :catch_0
    move-exception v4

    .line 5719
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5721
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 5723
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5725
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 5727
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5729
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 5731
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIntegerFeatureValue(Ljava/lang/String;I)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 5608
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5610
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5612
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 5613
    .local v5, "old":I
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 5614
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIntegerFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5632
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":I
    :cond_0
    :goto_0
    return-void

    .line 5616
    :catch_0
    move-exception v4

    .line 5618
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIntegerFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5620
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 5622
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIntegerFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5624
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 5626
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIntegerFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5628
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 5630
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setIntegerFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStringFeatureValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 5660
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5662
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5664
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5665
    .local v5, "old":Ljava/lang/String;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5666
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStringFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5684
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "old":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5668
    :catch_0
    move-exception v4

    .line 5670
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStringFeatureValue(): There is no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5672
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 5674
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStringFeatureValue(): Illegal value is assigned for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5676
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 5678
    .local v3, "ipe":Ljava/lang/IllegalAccessException;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStringFeatureValue(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5680
    .end local v3    # "ipe":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 5682
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LgDataFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStringFeatureValue(): Exception found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public test()V
    .locals 8

    .prologue
    .line 5737
    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getBooleanFeatureValue(Ljava/lang/String;)Z

    .line 5738
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 1. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->saveFeatures()V

    .line 5740
    const-string v5, "LGP_DATA_TETHER_BLOCK_GOOGLE_DNS"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->setBooleanFeatureValue(Ljava/lang/String;Z)V

    .line 5741
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 2. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->loadFeatures()V

    .line 5743
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: 3. LGP_DATA_TETHER_BLOCK_GOOGLE_DNS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v7}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getAllFeatureNames()[Ljava/lang/String;

    move-result-object v1

    .line 5746
    .local v1, "features":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 5748
    .local v4, "s":Ljava/lang/String;
    const-string v5, "LgDataFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LPP_TEST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5750
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5230
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " FeatureSet Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->sFeatureSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
