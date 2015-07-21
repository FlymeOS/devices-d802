.class public Lcom/android/internal/telephony/cdma/CDMAPhoneEx;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "CDMAPhoneEx.java"


# static fields
.field private static final BACKUPED_MDN:Ljava/lang/String; = "pref_key_msg_backuped_mdn"

.field protected static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "CDMAPhoneEx"

.field protected static final VDBG:Z


# instance fields
.field gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

.field private mSimState:Ljava/lang/String;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 513
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->processRegistering(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 513
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->processRegistering(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 513
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->processRegistering(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CDMAPhoneEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CDMAPhoneEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CDMAPhoneEx;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->isUSimSmsDeleted:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->isUSimSmsDeleted:Z

    return p0
.end method

.method private getBackupedPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 550
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "pref_key_msg_backuped_mdn"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    return-object v0
.end method

.method private processRegistering(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->init(Landroid/content/Context;I)V

    .line 154
    const/16 v0, 0x3a

    invoke-virtual {p0, p0, v0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method private setBackupedPhoneNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 557
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 558
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_msg_backuped_mdn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 560
    return-void
.end method


# virtual methods
.method protected CheckCarrierEri(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 126
    const/4 v0, 0x0

    const-string v1, "vzw_eri"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManagerEx;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/telephony/cdma/EriManagerEx;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 132
    :goto_0
    return v2

    .line 130
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManagerEx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/cdma/EriManagerEx;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    goto :goto_0
.end method

.method public PlayVZWERISound()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getAlertId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->PlayVZWERISoundforMTCall(I)V

    .line 449
    return-void
.end method

.method public StopVZWERISound()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->StopVZWERISound()V

    .line 454
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 182
    const/4 v0, 0x0

    const-string v1, "vzw_gfit"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->dispose()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mIsPhoneInEcmExitDelayState:Z

    .line 333
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SUPPORT_E911_FOR_VOLTE"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getIsE911ForVolte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 326
    const-string v1, "CDMAPhoneEx"

    const-string v2, "exitEmergencyCallbackMode - ACTION_ECBM_EXIT_FOR_VOLTE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    goto :goto_0
.end method

.method public getAlertId()I
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 480
    .local v1, "roamInd":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 481
    .local v0, "defRoamInd":I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getAlertId(II)I

    move-result v2

    return v2
.end method

.method public getCdmaEriHomeSystems()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriHomeSystems()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaLteEhrpdForced()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getLteEhrpdForced()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    const-string v1, "VZW"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LRA"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "mDeviceId":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    const-string v1, "^0*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "support_vzw_Los_upgrade"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "CDMAPhoneEx"

    const-string v2, "getDeviceId(): returns IMEI(14) in CDMA-LTE Phone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 266
    .end local v0    # "mDeviceId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "ro.lge.swversion"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->getEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getEriManager()Lcom/android/internal/telephony/cdma/EriManager;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 508
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHDRRoamingIndicator()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHDRRoamingIndicator()I

    move-result v0

    return v0
.end method

.method public getLTERoamingIndicator()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getLTERoamingIndicator()I

    move-result v0

    return v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    const-string v3, "VZW"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "mdnNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/telephony/LGSpecialNumberUtils;->getValidMdnForVZW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .end local v0    # "mdnNumber":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 217
    :cond_0
    const-string v3, "CTC"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 219
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v3, "46011"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "46003"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "20404"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 296
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getPhoneId()I

    move-result v1

    .line 297
    .local v1, "phoneId":I
    if-nez v1, :cond_1

    const-string v4, "vm_number_key_cdma0"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "vm_number_key_cdma"

    .line 299
    .local v3, "vmNumberKey":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    const-string v5, "show_Mdn_For_VMS"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_0
    :goto_1
    return-object v0

    .line 297
    .end local v3    # "vmNumberKey":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vm_number_key_cdma"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 302
    .restart local v3    # "vmNumberKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    const-string v4, "*86"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected handleEnterEmergencyCallbackMode(J)V
    .locals 3
    .param p1, "delayInMillis"    # J

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mIsPhoneInEcmState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 460
    const-string v0, "CDMAPhoneEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnterEmergencyCallbackMode, delayInMillis= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 465
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 369
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mIsTheCurrentActivePhone:Z

    if-nez v8, :cond_1

    .line 370
    const-string v8, "CDMAPhoneEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] while being destroyed. Ignoring."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 441
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 377
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 378
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getBackupedPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "backupedMdn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "currentMdn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getPhoneId()I

    move-result v4

    .line 382
    .local v4, "phoneId":I
    if-nez v4, :cond_5

    const-string v8, "vm_number_key_cdma0"

    invoke-interface {v5, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v7, "vm_number_key_cdma"

    .line 383
    .local v7, "vmNumberKey":Ljava/lang/String;
    :goto_1
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "vmNumber":Ljava/lang/String;
    const-string v8, "ro.build.type"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "userdebug"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    const-string v8, "CDMAPhoneEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BEGIN] currentMdn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", backupedMdn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vmNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    if-eqz v2, :cond_4

    .line 390
    if-nez v1, :cond_6

    .line 392
    const-string v8, "change_mdn_sync_vms"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 393
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 407
    :cond_3
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->setBackupedPhoneNumber(Ljava/lang/String;)V

    .line 410
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getBackupedPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 414
    const-string v8, "ro.build.type"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "userdebug"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 415
    const-string v8, "CDMAPhoneEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[END] currentMdn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", backupedMdn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vmNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    .end local v6    # "vmNumber":Ljava/lang/String;
    .end local v7    # "vmNumberKey":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vm_number_key_cdma"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 397
    .restart local v6    # "vmNumber":Ljava/lang/String;
    .restart local v7    # "vmNumberKey":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 399
    const-string v8, "change_mdn_sync_vms"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 400
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 403
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHANGE_CALLBACK_NUM_TO_MDN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 421
    .end local v1    # "backupedMdn":Ljava/lang/String;
    .end local v2    # "currentMdn":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "phoneId":I
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "vmNumber":Ljava/lang/String;
    .end local v7    # "vmNumberKey":Ljava/lang/String;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 422
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8

    .line 423
    const-string v8, "CDMAPhoneEx"

    const-string v9, "EVENT_SET_ERI_VERSION : FAIL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 425
    :cond_8
    const-string v8, "CDMAPhoneEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SET_ERI_VERSION: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 433
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string v8, "CDMAPhoneEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_RETRY_GET_DEVICE_IDENTITY : retryNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->retryNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->retryNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->retryNum:I

    .line 435
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x416 -> :sswitch_1
        0x420 -> :sswitch_2
    .end sparse-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mIsPhoneInEcmExitDelayState:Z

    .line 117
    const-string v0, "vzw_gfit"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/PhoneBaseEx;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

    .line 121
    :cond_0
    return-void
.end method

.method protected initInstance()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTrackerEx;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 101
    return-void
.end method

.method protected initSstIcc()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 106
    return-void
.end method

.method public isSystemInPrl()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSystemInPrl()Z

    move-result v0

    return v0
.end method

.method public isUiccInserted()Z
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x1

    .line 240
    .local v0, "mIsUiccInserted":Z
    const-string v1, "CDMAPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccInserted(), mSimState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v1, "ABSENT"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 246
    :goto_0
    const-string v1, "CDMAPhoneEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccInserted(), mIsUiccInserted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 198
    const-string v0, "vzw_gfit"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->gfUtils:Lcom/android/internal/telephony/gfit/GfitUtils;

    .line 202
    :cond_0
    return-void
.end method

.method public resetVoiceMessageCount()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->setVoiceMessageCount(I)V

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset Voice Mail Count = 0 for imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for mVmCountKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vm_count_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vmId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vm_id_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in preferences."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->log(Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 353
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 354
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vm_count_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 356
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mContext:Landroid/content/Context;

    const-string v4, "cdma_urgent_vmwi"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->setVoiceMessageUrgent(Z)V

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vm_priority_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 361
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    return-void
.end method

.method public setCdmaEriVersion()V
    .locals 3

    .prologue
    .line 488
    const/4 v0, 0x0

    const-string v1, "vzw_eri"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const-string v0, "CDMAPhoneEx"

    const-string v1, "Eri file load start!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->prepareEri()V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriFileVersion()I

    move-result v1

    const/16 v2, 0x416

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaEriVersion(ILandroid/os/Message;)V

    .line 495
    :cond_1
    return-void
.end method

.method protected setOperatorAlpha(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alphaStr"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "ro_cdma_operator_alpha"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "newOperatorAlpha":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    move-object p2, v0

    .line 168
    const-string v1, "ro.cdma.home.operator.alpha"

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "newOperatorAlpha":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 169
    .restart local v0    # "newOperatorAlpha":Ljava/lang/String;
    :cond_1
    const-string v1, "US"

    const-string v2, "USC"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string p2, "U.S. Cellular"

    .line 171
    const-string v1, "ro.cdma.home.operator.alpha"

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneEx;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
