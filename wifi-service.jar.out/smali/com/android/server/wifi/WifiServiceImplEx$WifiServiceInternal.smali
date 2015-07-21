.class final Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
.super Ljava/lang/Object;
.source "WifiServiceImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImplEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiServiceInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_WIFI_DELAYED_ON:I = 0x0

.field private static final MESSAGE_WIFI_DELAYED_ON_FOR_CA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiServiceInternal"


# instance fields
.field private final mCaReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceivedCaReceiver:Z

.field private mReceivedUSimReceiver:Z

.field private final mUSIMReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImplEx;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImplEx;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 427
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedUSimReceiver:Z

    .line 340
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z

    .line 356
    new-instance v0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$1;-><init>(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mUSIMReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    new-instance v0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$2;-><init>(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mCaReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;

    .line 429
    new-instance v0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;-><init>(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    .line 430
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 431
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedUSimReceiver:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedUSimReceiver:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mUSIMReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mCaReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private confDeleteCaOperatorCheck()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 347
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BELL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delayStartWifi(ZI)V
    .locals 6
    .param p1, "wifiEnabled"    # Z
    .param p2, "wifiState"    # I

    .prologue
    const/4 v3, 0x1

    .line 496
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->isWifiOnlyDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImplEx;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 502
    :cond_2
    const-string v1, "WifiServiceInternal"

    const-string v2, "skip delayStartWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImplEx;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 512
    .local v0, "intentFilterUSIM":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mUSIMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedUSimReceiver:Z

    .line 516
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    const-string v1, "WifiServiceInternal"

    const-string v2, "WifiService starting but wait to receive sim intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delayStartWififorCA(ZI)Z
    .locals 6
    .param p1, "wifiEnabled"    # Z
    .param p2, "wifiState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 441
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    if-eqz v3, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->isWifiOnlyDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 445
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImplEx;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    .line 446
    :cond_2
    const-string v2, "WifiServiceInternal"

    const-string v3, "skip delayStartWififorCA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z

    if-ne v3, v2, :cond_4

    .line 452
    const-string v2, "WifiServiceInternal"

    const-string v3, "skip delayStartWififorCA (mReceivedCaReceiver)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    :cond_4
    const-string v1, "WifiServiceInternal"

    const-string v3, "delayStartWififorCA"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImplEx;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .local v0, "intentFilterUSIM":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mCaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 463
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z

    .line 464
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 465
    const-string v1, "WifiServiceInternal"

    const-string v3, "WifiService starting but wait to receive sim intent"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 466
    goto :goto_0
.end method

.method public isWifiOnlyDevice()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWifiEnabledForCA(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 473
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImplEx;->access$000(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImplEx;->access$900(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImplEx;->access$900(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    move-result-object v3

    invoke-direct {v3}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->confDeleteCaOperatorCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ssid_update_completed"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 476
    if-nez p1, :cond_1

    .line 477
    const-string v2, "WifiServiceInternal"

    const-string v3, "skip setWifiEnabledForCA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImplEx;->access$000(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->SimStateCheck()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mFirstWiFiOn:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImplEx;->access$1000(Lcom/android/server/wifi/WifiServiceImplEx;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 482
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # setter for: Lcom/android/server/wifi/WifiServiceImplEx;->mFirstWiFiOn:Z
    invoke-static {v3, v1}, Lcom/android/server/wifi/WifiServiceImplEx;->access$1002(Lcom/android/server/wifi/WifiServiceImplEx;Z)Z

    .line 483
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 484
    .local v0, "wifiState":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImplEx;->access$900(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->delayStartWififorCA(ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImplEx;->access$000(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->delayStartWifi()Z

    move v1, v2

    .line 486
    goto :goto_0
.end method
