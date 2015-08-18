.class public Lcom/lge/bluetooth/LGBluetoothFeatureConfig;
.super Ljava/lang/Object;
.source "LGBluetoothFeatureConfig.java"


# static fields
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final DEBUG:Z = false

.field private static final PROPERTY_BTUI_PRIVACY_LOG:Ljava/lang/String; = "persist.service.bdroid.btui_log"

.field private static final TAG:Ljava/lang/String; = "LGBluetoothFeatureConfig"

.field private static btFeature:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static isFeatureLoaded:Z

.field private static final mLGFeatureSet:Ljava/lang/String;

.field private static mNetworkMode:Ljava/lang/String;

.field private static mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

.field private static mTargetCountry:Ljava/lang/String;

.field private static mTargetOp:Ljava/lang/String;

.field public static sBtSpecFeature:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCharacteristics:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    .line 65
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    .line 67
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sCharacteristics:Ljava/lang/String;

    .line 70
    const-string v0, "ro.telephony.default_network"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mNetworkMode:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sBtSpecFeature:Ljava/util/Hashtable;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 79
    sput-boolean v2, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SPR"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "TMO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MPCS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

    .line 88
    const-string v0, "ro.afwdata.LGfeatureset"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mLGFeatureSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disablePrivacyLogsInUserBuild()V
    .locals 8

    .prologue
    .line 336
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isTargetBuildTypeUSER()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 338
    .local v3, "operator":Ljava/lang/String;
    sget-object v5, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    const-string v5, "persist.service.bdroid.btui_log"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "result":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    const-string v5, "LGBluetoothFeatureConfig"

    const-string v6, "already set to 1 via hidden menu. so, enable logs"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v3    # "operator":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 346
    .restart local v3    # "operator":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    const-string v5, "LGBluetoothFeatureConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disablePrivacyLogsInUserBuild(), result is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and property is set to 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v5, "persist.service.bdroid.btui_log"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    .end local v4    # "result":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Z
    .locals 3
    .param p0, "svcName"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-boolean v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    if-nez v0, :cond_0

    .line 318
    const-string v0, "LGBluetoothFeatureConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " get() - isFeatureLoaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->loadXml()V

    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 327
    :cond_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/Boolean;

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static getBluetoothSpecInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "specFeature"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sBtSpecFeature:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "specResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isBRCMSolution()Z
    .locals 2

    .prologue
    .line 246
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "brcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChameleonFeaturedCarrier()Z
    .locals 2

    .prologue
    .line 370
    const-string v0, "US"

    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMTKSolution()Z
    .locals 2

    .prologue
    .line 266
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPrivacyLogsEnabled()Z
    .locals 4

    .prologue
    .line 282
    const-string v1, "persist.service.bdroid.btui_log"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 283
    .local v0, "isPrivacyLogsEnabled":Z
    const-string v1, "LGBluetoothFeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrivacyLogsEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v0
.end method

.method public static isQCTSolution()Z
    .locals 2

    .prologue
    .line 256
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "svcName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSigFeature()Z
    .locals 2

    .prologue
    .line 276
    const-string v0, "persist.service.btui.sig"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFtp()Z
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x1

    .line 488
    .local v0, "support":Z
    const-string v1, "BT_SUPPORT_FTP"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 491
    :cond_0
    return v0
.end method

.method public static isSupportMap()Z
    .locals 2

    .prologue
    .line 467
    const/4 v0, 0x1

    .line 471
    .local v0, "support":Z
    const-string v1, "BT_SUPPORT_MAP"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 474
    :cond_0
    return v0
.end method

.method public static isSupportPan()Z
    .locals 7

    .prologue
    .line 391
    const/4 v2, 0x1

    .line 392
    .local v2, "ret_value":Z
    const-string v4, "LGBluetoothFeatureConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportPan() :  mTargetOp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isChameleonFeaturedCarrier()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    new-instance v0, Ljava/lang/String;

    const-string v4, "/carrier/data/td"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "cmln_data_tether":Ljava/lang/String;
    const/4 v1, 0x1

    .line 399
    .local v1, "ref_value":I
    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 401
    .local v3, "tetherMode":I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 402
    const/4 v2, 0x0

    .line 406
    :goto_0
    const-string v4, "LGBluetoothFeatureConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportPan() :  tetherMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "cmln_data_tether":Ljava/lang/String;
    .end local v1    # "ref_value":I
    .end local v3    # "tetherMode":I
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 418
    const-string v4, "bluetooth.pan"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_2
    return v2

    .line 404
    .restart local v0    # "cmln_data_tether":Ljava/lang/String;
    .restart local v1    # "ref_value":I
    .restart local v3    # "tetherMode":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "cmln_data_tether":Ljava/lang/String;
    .end local v1    # "ref_value":I
    .end local v3    # "tetherMode":I
    :cond_2
    const-string v4, "BT_COMMON_FUNCTION_PAN_ENABLE"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 408
    const/4 v2, 0x0

    .line 410
    const-string v4, "TMO"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "COM"

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    const/4 v2, 0x1

    goto :goto_1

    .line 420
    :cond_3
    const-string v4, "bluetooth.pan"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isSupportSap()Z
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 437
    .local v0, "support":Z
    const-string v1, "persist.service.bt.support.sap"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 440
    :cond_0
    return v0
.end method

.method public static isSupportSplitView()Z
    .locals 3

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 447
    .local v0, "support":Z
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sCharacteristics:Ljava/lang/String;

    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const/4 v0, 0x1

    .line 450
    :cond_0
    return v0
.end method

.method public static isTabletDevice()Z
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isSupportSplitView()Z

    move-result v0

    return v0
.end method

.method public static isTargetBuildTypeUSER()Z
    .locals 2

    .prologue
    .line 289
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static listPrintDebug()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public static loadXml()V
    .locals 20

    .prologue
    .line 97
    const/16 v17, 0x1

    sput-boolean v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 98
    const/4 v8, 0x0

    .line 101
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/File;

    const-string v17, "etc/bluetooth/feature_config.xml"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v16, "xmlFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    if-nez v9, :cond_1

    .line 105
    :try_start_1
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "fis == null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 183
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "xmlFile":Ljava/io/File;
    .local v6, "e":Ljava/io/IOException;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    const-string v17, "LGBluetoothFeatureConfig"

    const-string v18, "IOException is occured when reading feature_config.xml"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    if-eqz v8, :cond_0

    .line 187
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 194
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 108
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "xmlFile":Ljava/io/File;
    :cond_1
    :try_start_4
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v17, :cond_2

    .line 109
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 112
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_5
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v17

    sput-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 117
    :try_start_6
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v18, Lcom/lge/bluetooth/LGBluetoothFeatureConfig$1;

    invoke-direct/range {v18 .. v18}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig$1;-><init>()V

    invoke-virtual/range {v17 .. v18}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 133
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_2
    const/4 v5, 0x0

    .line 136
    .local v5, "doc":Lorg/w3c/dom/Document;
    :try_start_7
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    .line 141
    :goto_2
    const/16 v17, 0x4

    :try_start_8
    move/from16 v0, v17

    new-array v14, v0, [Lorg/w3c/dom/NodeList;

    const/16 v17, 0x0

    const-string v18, "COMMON"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x1

    sget-object v18, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x2

    const-string v18, "SERVICE"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x3

    const-string v18, "DEBUG"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 148
    .local v14, "nodeList":[Lorg/w3c/dom/NodeList;
    if-nez v14, :cond_6

    .line 185
    if-eqz v9, :cond_3

    .line 187
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_3
    :goto_3
    move-object v8, v9

    .line 190
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 113
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "nodeList":[Lorg/w3c/dom/NodeList;
    .restart local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .line 114
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_a
    new-instance v17, Ljava/lang/Error;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v17
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 185
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_0
    move-exception v17

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "xmlFile":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v8, :cond_4

    .line 187
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 190
    :cond_4
    :goto_5
    throw v17

    .line 137
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "xmlFile":Ljava/io/File;
    :catch_2
    move-exception v6

    .line 138
    .local v6, "e":Lorg/xml/sax/SAXException;
    :try_start_c
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 173
    .end local v6    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v6

    .line 174
    .local v6, "e":Ljava/io/IOException;
    :try_start_d
    const-string v17, "LGBluetoothFeatureConfig"

    const-string v18, "IOException is occured when reading feature_config.xml"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 185
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    if-eqz v9, :cond_b

    .line 187
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    move-object v8, v9

    .line 190
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 188
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "nodeList":[Lorg/w3c/dom/NodeList;
    :catch_4
    move-exception v6

    .line 189
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 152
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    :try_start_f
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 153
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_7
    aget-object v17, v14, v10

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_a

    .line 154
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 155
    .local v4, "attributeMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 157
    .local v3, "attributeLength":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_8
    if-ge v12, v3, :cond_9

    .line 158
    invoke-interface {v4, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 159
    .local v2, "attNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, "value":Ljava/lang/String;
    const-string v17, "BT_BLUETOOTH_VERSION"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "BT_BLUETOOTH_STACK"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "BT_BLUETOOTH_CHIPSET"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "BT_BLUETOOTH_PROFILE"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 163
    :cond_7
    const-string v17, "LGBluetoothFeatureConfig"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BLUETOOTH KEY : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " value : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sBtSpecFeature:Ljava/util/Hashtable;

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 166
    :cond_8
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    new-instance v18, Ljava/lang/Boolean;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    .line 153
    .end local v2    # "attNode":Lorg/w3c/dom/Node;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 152
    .end local v3    # "attributeLength":I
    .end local v4    # "attributeMap":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "k":I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 188
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "nodeList":[Lorg/w3c/dom/NodeList;
    :catch_5
    move-exception v6

    .line 189
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 190
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 188
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "xmlFile":Ljava/io/File;
    :catch_6
    move-exception v6

    .line 189
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 188
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 189
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 185
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    goto/16 :goto_4

    .line 182
    :catch_8
    move-exception v6

    goto/16 :goto_0

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "xmlFile":Ljava/io/File;
    :cond_b
    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static readChameleonIntValue(Ljava/lang/String;I)I
    .locals 12
    .param p0, "fn"    # Ljava/lang/String;
    .param p1, "ref_value"    # I

    .prologue
    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, "fr":Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 499
    .local v9, "value":Ljava/lang/String;
    move v6, p1

    .line 501
    .local v6, "ret_value":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "fh":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 503
    const-string v10, "LGBluetoothFeatureConfig"

    const-string v11, "readChameleonIntValue() : tethered data does not exit."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 540
    .end local v6    # "ret_value":I
    .local v7, "ret_value":I
    :goto_0
    return v7

    .line 508
    .end local v7    # "ret_value":I
    .restart local v6    # "ret_value":I
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .end local v2    # "fr":Ljava/io/FileReader;
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 510
    .local v4, "inFile":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 512
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 513
    .local v8, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 520
    .end local v8    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz v3, :cond_2

    .line 521
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 530
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "inFile":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-eqz v9, :cond_5

    .line 531
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    :goto_2
    move v7, v6

    .line 540
    .end local v6    # "ret_value":I
    .restart local v7    # "ret_value":I
    goto :goto_0

    .line 524
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v7    # "ret_value":I
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "inFile":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "ret_value":I
    :catch_0
    move-exception v10

    move-object v2, v3

    .line 526
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 517
    .end local v4    # "inFile":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 520
    :goto_3
    if-eqz v2, :cond_3

    .line 521
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 524
    :catch_2
    move-exception v10

    goto :goto_1

    .line 519
    :catchall_0
    move-exception v10

    .line 520
    :goto_4
    if-eqz v2, :cond_4

    .line 521
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 525
    :cond_4
    :goto_5
    throw v10

    .line 533
    :cond_5
    move v6, p1

    goto :goto_2

    .line 536
    :catch_3
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    move v6, p1

    goto :goto_2

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 519
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 517
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v10

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static set(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "svcName"    # Ljava/lang/String;
    .param p1, "bYn"    # Z

    .prologue
    .line 302
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method
