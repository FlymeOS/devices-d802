.class public Lcom/lge/nfcconfig/NfcConfigure;
.super Ljava/lang/Object;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;,
        Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;,
        Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;,
        Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;,
        Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;,
        Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;,
        Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static INSTANCE:Lcom/lge/nfcconfig/NfcConfigure; = null

.field public static final NFC_HANDOVER_AUTOAPPLAUNCH:Ljava/lang/String; = "HandoverAutoAppLaunch"

.field public static final NFC_HANDOVER_TYPE:Ljava/lang/String; = "HandoverSupportType"

.field public static final NFC_POPUPDIALOG_TYPE:Ljava/lang/String; = "PopupDialogType"

.field public static final NFC_SECUREELEMENT_TYPE:Ljava/lang/String; = "SecureElementType"

.field public static final NFC_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field private static final TAG:Ljava/lang/String; = "NfcConfigure"


# instance fields
.field public mAccessControlEnable:Z

.field public mAdvancedHCEEnable:Z

.field public mAidFilterEnable:Z

.field private mContext:Landroid/content/Context;

.field public mCoverScenarioEnable:Z

.field public mDefaultOnOffType:Ljava/lang/String;

.field public mEmptyPopupSupport:Z

.field public mHandoverAutoAppLaunch:Z

.field public mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

.field public mHostCardEmulationScenario:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;",
            ">;"
        }
    .end annotation
.end field

.field public mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public mLGSharingEnable:Z

.field public mLockScreenPollingEnable:Z

.field public mMCC:Ljava/lang/String;

.field public mMTKBluetoothEnable:Z

.field public mMccMncSupport:Z

.field public mNotifyonlyValidTag:Z

.field public mPermittedSeBroadcastEnable:Z

.field public mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

.field public mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

.field public mRemoveIconWhenLockScreen:Z

.field public mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

.field public mSePatchEnabled:Z

.field public mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

.field public mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public mTagLongTimePopupSupport:Z

.field public mTargetCountry:Ljava/lang/String;

.field public mTargetDevice:Ljava/lang/String;

.field private mTargetFlag:Ljava/lang/String;

.field public mTargetOperator:Ljava/lang/String;

.field public mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

.field public mVendorStablePatch:Z

.field public mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public mWCScenarioEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/nfcconfig/NfcConfigure;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 398
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 399
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 400
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 401
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 402
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 403
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v9}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 404
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    .line 405
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 406
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 407
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMTKBluetoothEnable:Z

    .line 408
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverAutoAppLaunch:Z

    .line 409
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    .line 410
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPermittedSeBroadcastEnable:Z

    .line 411
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    .line 412
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    .line 413
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    .line 414
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    .line 415
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    .line 416
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    .line 417
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    .line 418
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    .line 419
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    .line 420
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAidFilterEnable:Z

    .line 421
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    .line 422
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    .line 423
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    .line 424
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    .line 429
    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    .line 430
    const-string v9, "ro.build.target_country"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    .line 431
    const-string v9, "ro.product.device"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    .line 433
    const-string v9, ""

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetFlag:Ljava/lang/String;

    .line 453
    iput-object p1, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    .line 454
    sput-object p0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    .line 458
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 459
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "android.hardware.nfc"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 461
    .local v5, "mIsNfcCapable":Z
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 462
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->values()[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 463
    .local v3, "list":Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    const-string v9, "lge.nfc.vendor"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, "vendorType":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 465
    iput-object v3, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "list":Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    .end local v7    # "vendorType":Ljava/lang/String;
    :cond_1
    const-string v9, "ril.temp.countrycodeforoneimage"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    .line 470
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 471
    const-string v9, "persist.sys.iccid-mcc"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    .line 474
    :cond_2
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 475
    :cond_3
    const-string v8, "NfcConfigure"

    const-string v9, "Invalid Target Operator and Country"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_4
    :goto_1
    return-void

    .line 482
    :cond_5
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/lge/internal/R$bool;->config_using_lollipop_cover:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/lge/internal/R$bool;->config_using_window_cover:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const/4 v8, 0x1

    :cond_7
    iput-boolean v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    .line 489
    const-string v8, "NfcConfigure"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC support or Not, mIsNfcCapable : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz v5, :cond_4

    .line 492
    new-instance v4, Lcom/lge/nfcconfig/NfcConfigParser;

    iget-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    iget-object v10, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-direct {v4, v8, v9, v10}, Lcom/lge/nfcconfig/NfcConfigParser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .local v4, "mConfigParser":Lcom/lge/nfcconfig/NfcConfigParser;
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigure;->setDefaultConfig()V

    .line 494
    invoke-virtual {p0}, Lcom/lge/nfcconfig/NfcConfigure;->printDefaultConfig()V

    goto :goto_1
.end method

.method public static IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 843
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 844
    .local v0, "adapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 845
    :cond_0
    const/4 v1, 0x0

    .line 848
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static getDefaultType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 685
    const-string v1, "XXX"

    .line 686
    .local v1, "mcc":Ljava/lang/String;
    const-string v2, "XX"

    .line 687
    .local v2, "mnc":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 688
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 689
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    const-string v3, "NfcConfigure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / mnc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {v1, v2}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->searchPRI(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    move-result-object v0

    .line 692
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->nfc_default:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 693
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->nfc_default:Ljava/lang/String;

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v3

    .line 700
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    :goto_0
    return-object v3

    .line 693
    .restart local v0    # "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    :cond_0
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 698
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    :cond_1
    const-string v3, "NfcConfigure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric is invalid, numeric : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_2
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getInstance()Lcom/lge/nfcconfig/NfcConfigure;
    .locals 1

    .prologue
    .line 804
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 815
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 816
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure;

    invoke-direct {v0, p0}, Lcom/lge/nfcconfig/NfcConfigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    .line 818
    :cond_0
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    return-object v0
.end method

.method public static getNfcConfigureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 861
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 862
    .local v0, "adapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 863
    :cond_0
    const-string v1, ""

    .line 866
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isBroadcom()Z
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInside()Z
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNxp()Z
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSony()Z
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultConfig()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 550
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    iget-object v12, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    iget-object v13, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-static {v9, v12, v13}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v1

    .line 552
    .local v1, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    if-nez v1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 554
    :cond_0
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 555
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->values()[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v8, v0, v5

    .line 556
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mIndicatorType:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 557
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 555
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 561
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    :cond_2
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 562
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v8, v0, v5

    .line 563
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mRingSoundScenarioType:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 564
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 562
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 567
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    :cond_4
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mWCScenarioEnable:Ljava/lang/String;

    sget-object v12, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->update:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    invoke-virtual {v12}, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v10

    :goto_3
    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    .line 569
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 570
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_7

    aget-object v8, v0, v5

    .line 571
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mSecureElementType:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 572
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 570
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    :cond_6
    move v9, v11

    .line 567
    goto :goto_3

    .line 576
    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    :cond_7
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 577
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_9

    aget-object v8, v0, v5

    .line 578
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHandoverSupportType:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_8

    .line 579
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 577
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 582
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    :cond_9
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHandoverSupportType:Ljava/lang/String;

    const-string v12, "mtkbt"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_d

    move v9, v10

    :goto_6
    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMTKBluetoothEnable:Z

    .line 583
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHandoverSupportType:Ljava/lang/String;

    const-string v12, "autoapplaunch"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_a

    move v11, v10

    :cond_a
    iput-boolean v11, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverAutoAppLaunch:Z

    .line 586
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mMccMncSupport:Ljava/lang/String;

    const-string v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    .line 588
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v9}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "defaultonoff":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/lge/internal/R$string;->config_nfc_defaultonoff:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 594
    :goto_7
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v9}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 595
    iput-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 600
    :goto_8
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    sget-object v11, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->open:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v11}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 601
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetFlag:Ljava/lang/String;

    .line 602
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigure;->setOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 606
    :cond_b
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 607
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v7, :cond_f

    aget-object v8, v0, v5

    .line 608
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mPopupDialogType:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 609
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 607
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .end local v2    # "defaultonoff":Ljava/lang/String;
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    :cond_d
    move v9, v11

    .line 582
    goto :goto_6

    .line 597
    .restart local v2    # "defaultonoff":Ljava/lang/String;
    :cond_e
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDefaultOnOffType:Ljava/lang/String;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    goto :goto_8

    .line 613
    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    :cond_f
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 614
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v7, :cond_11

    aget-object v8, v0, v5

    .line 615
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mPowerSaveType:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 616
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 614
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 620
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    :cond_11
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 621
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v7, :cond_13

    aget-object v8, v0, v5

    .line 622
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mSupportWalletType:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 623
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 621
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 627
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    :cond_13
    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    iput-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    .line 628
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v7, :cond_15

    aget-object v8, v0, v5

    .line 629
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mTransactionEventScenario:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 630
    iput-object v8, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    .line 628
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 634
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    :cond_15
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHostCardEmulationScenario:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "hceScenarioArray":[Ljava/lang/String;
    if-eqz v3, :cond_19

    array-length v9, v3

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->length()I

    move-result v11

    if-ne v9, v11, :cond_19

    .line 636
    const/4 v4, 0x0

    .end local v0    # "arr$":[Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    .local v4, "i":I
    :goto_d
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->length()I

    move-result v9

    if-ge v4, v9, :cond_1b

    .line 637
    const/4 v6, 0x0

    .line 638
    .local v6, "isParsing":Z
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v7, :cond_16

    aget-object v8, v0, v5

    .line 639
    .local v8, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 640
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v4}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v11

    invoke-interface {v9, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const/4 v6, 0x1

    .line 645
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    :cond_16
    if-nez v6, :cond_17

    .line 646
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v4}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v11

    sget-object v12, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v9, "NfcConfigure"

    const-string v11, "Invalid NFC HCE Scenario name"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v9, "ro.build.type"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "user"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 649
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid NFC HCE Scenario name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - default setting (config)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 636
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 638
    .restart local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 654
    .end local v4    # "i":I
    .end local v6    # "isParsing":Z
    .end local v8    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    :cond_19
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_f
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->length()I

    move-result v9

    if-ge v4, v9, :cond_1b

    .line 655
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v4}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v11

    sget-object v12, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v9, "NfcConfigure"

    const-string v11, "Invalid NFC HCE Scenario List"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v9, "ro.build.type"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "user"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 658
    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid NFC HCE Scenario List : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHostCardEmulationScenario:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 654
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 663
    .end local v0    # "arr$":[Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    :cond_1b
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mAccessControlEnable:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    .line 664
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mVendorStablePatch:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    .line 665
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mPermittedSeBroadcastEnable:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPermittedSeBroadcastEnable:Z

    .line 666
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mEmptyPopupSupport:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    .line 667
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mLockScreenPollingEnable:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    .line 668
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mNotifyonlyValidTag:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    .line 669
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mSePatchEnabled:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    .line 670
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mTagLongTimePopupSupport:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    .line 671
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mAdvancedHCEEnable:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    .line 672
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mAidFilterEnable:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAidFilterEnable:Z

    .line 673
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mRemoveIconWhenLockScreen:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    .line 674
    iget-object v9, v1, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mLGSharingEnable:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    goto/16 :goto_0

    .line 591
    .end local v3    # "hceScenarioArray":[Ljava/lang/String;
    .end local v4    # "i":I
    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    :catch_0
    move-exception v9

    goto/16 :goto_7
.end method

.method private setOpenarrayPowerStatus()Ljava/lang/String;
    .locals 7

    .prologue
    .line 709
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "defaulttype":Ljava/lang/String;
    const-string v4, "persist.sys.ntcode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, "ntcode":Ljava/lang/String;
    const-string v1, "FFF,FF"

    .line 712
    .local v1, "mccmnc":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_0

    .line 713
    const/4 v4, 0x5

    const/16 v5, 0xb

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 714
    const-string v4, "NfcConfigure"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmnc in NT code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    const-string v4, "208,10"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "647,10"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 717
    :cond_1
    const-string v4, "NfcConfigure"

    const-string v5, "Due to NT code, NFC off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_2
    :goto_0
    const-string v4, "NfcConfigure"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOpenarrayPowerStatus defaulttype : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-object v0

    .line 720
    :cond_3
    iget-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    if-eqz v4, :cond_6

    .line 721
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "prop":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 724
    const-string v4, "NfcConfigure"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TelephonyProperties.PROPERTY_SIM_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 727
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/nfcconfig/NfcConfigure;->getDefaultType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 728
    :cond_4
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 729
    const-string v4, "persist.sys.first-mccmnc"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/nfcconfig/NfcConfigure;->getDefaultType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 730
    :cond_5
    const-string v4, "UNKNOWN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 731
    const-string v4, ""

    invoke-static {v4}, Lcom/lge/nfcconfig/NfcConfigure;->getDefaultType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    .end local v3    # "prop":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "XX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/nfcconfig/NfcConfigure;->getDefaultType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public printDefaultConfig()V
    .locals 4

    .prologue
    .line 504
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    const-string v0, "NfcConfigure"

    const-string v1, "====================== LGE NFC Configure START ============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v0, "NfcConfigure"

    const-string v1, " Feature Name : Current Value(config_xxx.xml) / Default Value(config.xml)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v0, "NfcConfigure"

    const-string v1, "===================================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetOperator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetCountry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.iccid-mcc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lge.nfc.vendor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ VendorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecureElementType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SecureElementType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultOnOffType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DefaultOnOffType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandoverSupportType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HandoverSupportType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTKSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMTKBluetoothEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HandoverAutoAppLaunch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverAutoAppLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessControlEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AccessControlEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndicatorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IndicatorType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingSoundScenarioType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RingSoundScenarioType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaveType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PowerSaveType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupDialogType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PopupDialogType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WCScenarioEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WCScenarioEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PermittedSeBroadcastEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPermittedSeBroadcastEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PermittedSeBroadcastEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VendorStablePatch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VendorStablePatch"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupportWalletType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SupportWalletType"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SePatchEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SePatchEnabled"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmptyPopupSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EmptyPopupSupport"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LockScreenPollingEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LockScreenPollingEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyonlyValidTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NotifyonlyValidTag"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TagLongTimePopupSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TagLongTimePopupSupport"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MccMncSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MccMncSupport"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdvancedHCEEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AdvancedHCEEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AidFilterEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAidFilterEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AidFilterEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionEventScenario : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TransactionEventScenario"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveIconWhenLockScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RemoveIconWhenLockScreen"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGSharingEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LGSharingEnable"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HostCardEmulationScenario : screen_unlocked - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HostCardEmulationScenario"

    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------------------------------------screen_locked - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------------------------------------screen_off - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------------------------------------power_off - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "NfcConfigure"

    const-string v1, "====================== LGE NFC Configure END ============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    return-void
.end method

.method public resetOpenarrayPowerStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetFlag:Ljava/lang/String;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->open:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v1}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigure;->setOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 754
    :cond_0
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultOnOffType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    return-object v0
.end method
