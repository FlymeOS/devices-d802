.class interface abstract Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;
.super Ljava/lang/Object;
.source "LgeNetworkNameConstants.java"


# static fields
.field public static final DBG:Z

.field public static final DELIMITER_MULTIPLE_VALUES:Ljava/lang/String; = ";"

.field public static final IS_TEST_MODE:Z

.field public static final ITEM_COUNTRY:Ljava/lang/String; = "country"

.field public static final ITEM_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"

.field public static final ITEM_GID:Ljava/lang/String; = "gid"

.field public static final ITEM_IMSI:Ljava/lang/String; = "imsi"

.field public static final ITEM_MCC:Ljava/lang/String; = "mcc"

.field public static final ITEM_MNC:Ljava/lang/String; = "mnc"

.field public static final ITEM_NETWORK_NAME_TEST_MODE:Ljava/lang/String; = "networkNameTest"

.field public static final ITEM_NETWORK_OPERATOR:Ljava/lang/String; = "networkOperator"

.field public static final ITEM_OPERATOR:Ljava/lang/String; = "operator"

.field public static final ITEM_OPERATOR_NUMERIC:Ljava/lang/String; = "operatorNumeric"

.field public static final ITEM_PLMN:Ljava/lang/String; = "plmn"

.field public static final ITEM_REGION:Ljava/lang/String; = "region"

.field public static final ITEM_ROAMING:Ljava/lang/String; = "roaming"

.field public static final ITEM_SERVICE_STATE:Ljava/lang/String; = "serviceState"

.field public static final ITEM_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final ITEM_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final ITEM_SPN:Ljava/lang/String; = "spn"

.field public static final ITEM_VALUE_FUNCTION_GET_OPERTOR_ALPHA_LONG:Ljava/lang/String; = "LONG_NAME"

.field public static final ITEM_VALUE_FUNCTION_GET_OPERTOR_ALPHA_SHORT:Ljava/lang/String; = "SHORT_NAME"

.field public static final ITEM_VALUE_NOT_NULL:Ljava/lang/String; = "not null"

.field public static final ITEM_VALUE_NULL:Ljava/lang/String; = "null"

.field public static final PROP_COUNTRY:Ljava/lang/String; = "ro.build.target_country"

.field public static final PROP_NETWORK_NAME_TEST_DBG:Ljava/lang/String; = "persist.nwnametest.dbg"

.field public static final PROP_NETWORK_NAME_TEST_MODE_COUNTRY:Ljava/lang/String; = "persist.nwnametest.country"

.field public static final PROP_NETWORK_NAME_TEST_MODE_EMERGENCY_ONLY:Ljava/lang/String; = "persist.nwnametest.emergonly"

.field public static final PROP_NETWORK_NAME_TEST_MODE_GID:Ljava/lang/String; = "persist.nwnametest.gid"

.field public static final PROP_NETWORK_NAME_TEST_MODE_IMSI:Ljava/lang/String; = "persist.nwnametest.imsi"

.field public static final PROP_NETWORK_NAME_TEST_MODE_MCC:Ljava/lang/String; = "persist.nwnametest.mcc"

.field public static final PROP_NETWORK_NAME_TEST_MODE_MNC:Ljava/lang/String; = "persist.nwnametest.mnc"

.field public static final PROP_NETWORK_NAME_TEST_MODE_NETWORK_OPERATOR:Ljava/lang/String; = "persist.nwnametest.nwoperator"

.field public static final PROP_NETWORK_NAME_TEST_MODE_OPERATOR:Ljava/lang/String; = "persist.nwnametest.operator"

.field public static final PROP_NETWORK_NAME_TEST_MODE_OPERATOR_NUMERIC:Ljava/lang/String; = "persist.nwnametest.opnumeric"

.field public static final PROP_NETWORK_NAME_TEST_MODE_PLMN:Ljava/lang/String; = "persist.nwnametest.plmn"

.field public static final PROP_NETWORK_NAME_TEST_MODE_REGION:Ljava/lang/String; = "persist.nwnametest.region"

.field public static final PROP_NETWORK_NAME_TEST_MODE_ROAMING:Ljava/lang/String; = "persist.nwnametest.roaming"

.field public static final PROP_NETWORK_NAME_TEST_MODE_SERVICE_STATE:Ljava/lang/String; = "persist.nwnametest.ss"

.field public static final PROP_NETWORK_NAME_TEST_MODE_SHOW_PLMN:Ljava/lang/String; = "persist.nwnametest.showplmn"

.field public static final PROP_NETWORK_NAME_TEST_MODE_SHOW_SPN:Ljava/lang/String; = "persist.nwnametest.showspn"

.field public static final PROP_NETWORK_NAME_TEST_MODE_SPN:Ljava/lang/String; = "persist.nwnametest.spn"

.field public static final PROP_NETWORK_NAME_TEST_VDBG:Ljava/lang/String; = "persist.nwnametest.vdbg"

.field public static final PROP_OPERATOR:Ljava/lang/String; = "ro.build.target_operator"

.field public static final PROP_REGION:Ljava/lang/String; = "ro.build.target_region"

.field public static final SUPPORT_MULTIPLE_REQUIREMENT:Z = true

.field public static final TAG_NAME_CONDITION:Ljava/lang/String; = "condition"

.field public static final TAG_NAME_CORRECTION:Ljava/lang/String; = "correction"

.field public static final VDBG:Z

.field public static final XML_PATH:Ljava/lang/String; = "/system/etc/networkNameMod.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "persist.nwnametest.dbg"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;->DBG:Z

    .line 22
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "persist.nwnametest.vdbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;->VDBG:Z

    .line 28
    const-string v0, "persist.nwnametest"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;->IS_TEST_MODE:Z

    return-void

    :cond_0
    move v0, v2

    .line 16
    goto :goto_0

    :cond_1
    move v1, v2

    .line 22
    goto :goto_1
.end method
