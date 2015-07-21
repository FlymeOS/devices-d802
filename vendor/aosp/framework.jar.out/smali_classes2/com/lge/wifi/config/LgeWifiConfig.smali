.class public Lcom/lge/wifi/config/LgeWifiConfig;
.super Ljava/lang/Object;
.source "LgeWifiConfig.java"


# static fields
.field public static final CONFIG_LGE_WLAN_BRCM_PATCH:Z

.field public static final CONFIG_LGE_WLAN_DCF:Z

.field public static final CONFIG_LGE_WLAN_MTK_PATCH:Z

.field public static final CONFIG_LGE_WLAN_PATCH:Z

.field public static final CONFIG_LGE_WLAN_QCOM_PATCH:Z

.field public static final CONFIG_LGE_WLAN_TEST:Z

.field public static final CONFIG_LGE_WLAN_TEST_PROFILE:Z

.field public static final HOTSPOT_2_4G_MODE_LOW:I = 0x0

.field public static final HOTSPOT_5G_MODE_LOW:I = 0x1

.field private static final HOTSPOT_TX_POWER_2_4G_VALUE_LOW_BRCM:I = 0x4b0

.field private static final HOTSPOT_TX_POWER_2_4G_VALUE_LOW_QCT:I = 0x8

.field private static final HOTSPOT_TX_POWER_5G_VALUE_LOW_BRCM:I = 0x4b0

.field private static final HOTSPOT_TX_POWER_5G_VALUE_LOW_QCT:I = 0x8

.field public static final HOTSPOT_TX_POWER_MODE_HIGH:I = 0x1

.field public static final HOTSPOT_TX_POWER_MODE_LOW:I = 0x0

.field private static final HOTSPOT_TX_POWER_VALUE_HIGH_BRCM:I = 0xbb8

.field private static final HOTSPOT_TX_POWER_VALUE_HIGH_QCT:I = 0x14

.field private static final KSC5601SSID:Z

.field private static final TAG:Ljava/lang/String; = "LgeWifiConfig"

.field public static final WPSINFO_TYPE_NFC_CONFIG:I = 0xc

.field public static final WPSINFO_TYPE_NFC_HANDOVER:I = 0xd

.field public static final WPSINFO_TYPE_NFC_PWD:I = 0xb

.field private static final mCommonHotspot:Ljava/lang/String;

.field private static mIsAvailableKtUsim:Z = false

.field private static final mLgeEap:Z = true

.field private static final mMobileHotspot:Z

.field private static final mTargetCountry:Ljava/lang/String;

.field private static final mTargetOperator:Ljava/lang/String;

.field private static final mTargetRegion:Ljava/lang/String;

.field private static final mUseFccCerti:Z

.field private static final mUseFccCountry:Z

.field private static final mWifiOffdelayAfter15alarm:Z

.field private static final mWlanChipVersion:Ljava/lang/String;

.field private static sEnableAutoJoin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string/jumbo v0, "wifi.lge.patch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    .line 36
    const-string/jumbo v0, "wlan.chip.vendor"

    const-string v2, "brcm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    .line 43
    const-string/jumbo v0, "wlan.chip.vendor"

    const-string v2, "qcom"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "brcm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    .line 50
    const-string/jumbo v0, "wlan.chip.vendor"

    const-string v2, "qcom"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mtk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_MTK_PATCH:Z

    .line 57
    const-string/jumbo v0, "wifi.lge.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST:Z

    .line 59
    const-string/jumbo v0, "wifi.lge.test_profile"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    .line 65
    const-string/jumbo v0, "wlan.lge.dcf.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    .line 71
    const-string/jumbo v0, "wlan.chip.version"

    const-string v2, "bcm4330"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWlanChipVersion:Ljava/lang/String;

    .line 78
    const-string v0, "ro.build.target_operator"

    const-string v2, "OPEN"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    .line 80
    const-string v0, "ro.build.target_country"

    const-string v2, "COM"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    .line 82
    const-string v0, "ro.build.target_region"

    const-string v2, "NA"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetRegion:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "wifi.lge.common_hotspot"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mCommonHotspot:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "wifi.lge.hanglessid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->KSC5601SSID:Z

    .line 99
    const-string/jumbo v0, "wifi.lge.offdelay"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWifiOffdelayAfter15alarm:Z

    .line 113
    const-string/jumbo v0, "wifi.lge.mhp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    .line 117
    const-string/jumbo v0, "wifi.lge.fcc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mUseFccCerti:Z

    .line 119
    const-string v0, "EU"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetRegion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetRegion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JP"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AU"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IL"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mUseFccCountry:Z

    .line 133
    sput-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    .line 139
    sput-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    return-void

    :cond_1
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableDCFRunTimeChange()Z
    .locals 2

    .prologue
    .line 609
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkLgeKtCmProfileAccess()Z
    .locals 1

    .prologue
    .line 516
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-static {p0}, Lcom/lge/wifi/config/LgeWifiConfig;->getMccMncInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "myMccMnc":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 233
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static doesSupportHotspotList()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 413
    const-string v1, "TMO"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MPCS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    :cond_1
    :goto_0
    return v0

    .line 416
    :cond_2
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    const-string v1, "VZW"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAutoJoinStatus()Z
    .locals 1

    .prologue
    .line 592
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    return-object v0
.end method

.method private static getMccMncInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 334
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 336
    .local v1, "simMccMnc":[Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v3

    .line 361
    .end local v1    # "simMccMnc":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 342
    .restart local v1    # "simMccMnc":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 346
    const/4 v4, 0x1

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 349
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo: MCC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] MNC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 352
    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 355
    goto/16 :goto_0

    .line 356
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMncInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 358
    goto/16 :goto_0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getTxPowerValue(II)I
    .locals 4
    .param p0, "txPowerMode"    # I
    .param p1, "defaultChannel"    # I

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 545
    .local v0, "txPowerValue":I
    const-string v1, "LgeWifiConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTxPowerValue : txPowerMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 547
    if-nez p0, :cond_1

    .line 548
    if-nez p1, :cond_0

    .line 549
    const/16 v0, 0x4b0

    .line 569
    :goto_0
    return v0

    .line 551
    :cond_0
    const/16 v0, 0x4b0

    goto :goto_0

    .line 555
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0

    .line 558
    :cond_2
    if-nez p0, :cond_4

    .line 559
    if-nez p1, :cond_3

    .line 560
    const/16 v0, 0x8

    goto :goto_0

    .line 562
    :cond_3
    const/16 v0, 0x8

    goto :goto_0

    .line 566
    :cond_4
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public static getWlanChipsetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWlanChipVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static isWifiACGFeaturedCarrier()Z
    .locals 2

    .prologue
    .line 456
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiChameleonFeaturedCarrier()Z
    .locals 2

    .prologue
    .line 446
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAutoJoinStatus(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 584
    if-eqz p0, :cond_0

    .line 585
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    goto :goto_0
.end method

.method public static setDefaultMobileHotspotUS()Z
    .locals 2

    .prologue
    .line 529
    const-string v0, "MPCS"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    :cond_2
    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLgeKtUsimRemoved()Z
    .locals 2

    .prologue
    .line 510
    const-string v0, "LgeWifiConfig"

    const-string/jumbo v1, "setLgeKtUsimRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method public static setWiFiAutoChannel(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string/jumbo v0, "wifi.lge.autochannel"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public static useChangeSsid()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public static useCommonHotspotAPI()Z
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "ret":Z
    const-string/jumbo v1, "true"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mCommonHotspot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useDefaultWifiOn()Z
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useDefaultWifiSleepPolicy()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 257
    const-string/jumbo v2, "wifi.lge.sleeppolicy"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, "wifiSleepPolicy":I
    packed-switch v0, :pswitch_data_0

    .line 265
    const-string v2, "LgeWifiConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown wifiSleepPolicy : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 268
    .end local v0    # "wifiSleepPolicy":I
    :pswitch_0
    return v0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static useFccCerti()Z
    .locals 1

    .prologue
    .line 618
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mUseFccCerti:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mUseFccCountry:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useHotspotHidden()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 466
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    const-string v1, "TLS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BELL"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RGS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useKoreanSsid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 303
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->KSC5601SSID:Z

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "CN"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const-string v1, "HK"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useKoreanSsid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "SSID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 317
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->KSC5601SSID:Z

    if-eqz v1, :cond_0

    .line 319
    const-string/jumbo v1, "\u200b\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    const-string v1, "CN"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    const-string v1, "HK"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useLgeEap()Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public static useLgeKtCm()Z
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static useMobileHotspot()Z
    .locals 3

    .prologue
    .line 391
    const-string v0, "LgeWifiConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "useMobileHotspot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    return v0
.end method

.method public static useOpProfile()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public static usePrioritySelectionPolicy()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 201
    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "COM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "EU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "UK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
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

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useStatefullDHCPV6()Z
    .locals 2

    .prologue
    .line 575
    const-string v0, "CN"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWiFiAggregation()Z
    .locals 2

    .prologue
    .line 484
    const-string/jumbo v0, "wifi.lge.aggregation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWiFiAutoChannel()I
    .locals 3

    .prologue
    .line 491
    const-string/jumbo v1, "wifi.lge.autochannel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 492
    .local v0, "value":I
    return v0
.end method

.method public static useWiFiOffloading()Z
    .locals 2

    .prologue
    .line 381
    const-string/jumbo v0, "wifi.lge.offloading"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiActivationWhileCharging()Z
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWifiDLNA()Z
    .locals 2

    .prologue
    .line 400
    const-string v0, "dhcp.dlna.using"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiOffDelayAfter15alarm()Z
    .locals 1

    .prologue
    .line 369
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWifiOffdelayAfter15alarm:Z

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
