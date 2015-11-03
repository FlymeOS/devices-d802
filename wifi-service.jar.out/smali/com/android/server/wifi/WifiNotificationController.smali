.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$3;,
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static final ICON_NETWORKS_AVAILABLE:I

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x6

.field private static final WFC_FEATURE:Z


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mContext:Landroid/content/Context;

.field private mLowSignal:Z

.field private mLowSignalNWs:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mWiFiOffloadingIfaceIface:Lcom/lge/wifi/extension/IWifiOffLoading;

.field private mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private wifiNetworkAvailableSettings:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_0
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_wifi_in_range_new:I

    sput v0, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    .line 75
    :goto_0
    const-string v0, "ims"

    const-string v1, "ro.product.ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "epdg"

    const-string v1, "ro.product.ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->WFC_FEATURE:Z

    .line 80
    :goto_1
    return-void

    .line 66
    :cond_2
    sget v0, Lcom/lge/internal/R$drawable;->stat_notify_wifi_in_range_fully:I

    sput v0, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    goto :goto_0

    .line 79
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->WFC_FEATURE:Z

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v5, p0, Lcom/android/server/wifi/WifiNotificationController;->wifiNetworkAvailableSettings:I

    .line 128
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    .line 129
    iput v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    .line 142
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 144
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    .line 145
    new-instance v1, Landroid/net/NetworkInfo;

    const-string v2, "WIFI"

    const-string v3, ""

    invoke-direct {v1, v5, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.net.wifi.HS20_AP_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.net.wifi.HS20_TRY_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.net.wifi.HS20_ANQP_FETCH_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    sget-boolean v1, Lcom/android/server/wifi/WifiNotificationController;->WFC_FEATURE:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$2;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "IMS_LOWSIGNAL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x384

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 235
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    .line 236
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiNotificationController;)Lcom/lge/wifi/extension/IWifiHS20;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiNotificationController;Lcom/lge/wifi/extension/IWifiHS20;)Lcom/lge/wifi/extension/IWifiHS20;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Lcom/lge/wifi/extension/IWifiHS20;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiHS20Iface:Lcom/lge/wifi/extension/IWifiHS20;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiNotificationController;ZIZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/WifiNotificationController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiNotificationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    return v0
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 9
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v8, 0x6

    .line 245
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 308
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_1
    :try_start_1
    iget v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 248
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 249
    .local v4, "state":Landroid/net/NetworkInfo$State;
    if-eqz p1, :cond_2

    .line 250
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 252
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_8

    .line 254
    :cond_3
    if-eqz p2, :cond_8

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "numOpenNetworks":I
    const/4 v2, 0x0

    .line 257
    .local v2, "numSecuredNetworks":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 258
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 262
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[ESS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 264
    add-int/lit8 v1, v1, 0x1

    .line 257
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 268
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 273
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    sget-boolean v5, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 276
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_networks_available_notification_settings"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/WifiNotificationController;->wifiNetworkAvailableSettings:I

    .line 279
    iget v5, p0, Lcom/android/server/wifi/WifiNotificationController;->wifiNetworkAvailableSettings:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 280
    if-gtz v1, :cond_6

    if-lez v2, :cond_7

    .line 281
    :cond_6
    iget v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    if-lt v5, v8, :cond_0

    .line 282
    const/4 v5, 0x1

    add-int v6, v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    .end local v1    # "numOpenNetworks":I
    .end local v2    # "numSecuredNetworks":I
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 290
    .restart local v0    # "i":I
    .restart local v1    # "numOpenNetworks":I
    .restart local v2    # "numSecuredNetworks":I
    .restart local v4    # "state":Landroid/net/NetworkInfo$State;
    :cond_7
    if-lez v1, :cond_8

    .line 291
    :try_start_2
    iget v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    if-lt v5, v8, :cond_0

    .line 299
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v1, v6, v7}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    goto/16 :goto_0

    .line 307
    .end local v0    # "i":I
    .end local v1    # "numOpenNetworks":I
    .end local v2    # "numSecuredNetworks":I
    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    .prologue
    .line 315
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    .line 317
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 339
    if-nez p1, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v5, :cond_1

    if-nez p3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const-string v5, "VZW"

    const-string v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "wifi.lge.offloading"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 344
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWiFiOffloadingIface()Lcom/lge/wifi/extension/IWifiOffLoading;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mWiFiOffloadingIfaceIface:Lcom/lge/wifi/extension/IWifiOffLoading;

    .line 345
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mWiFiOffloadingIfaceIface:Lcom/lge/wifi/extension/IWifiOffLoading;

    if-eqz v5, :cond_2

    .line 346
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mWiFiOffloadingIfaceIface:Lcom/lge/wifi/extension/IWifiOffLoading;

    invoke-interface {v5}, Lcom/lge/wifi/extension/IWifiOffLoading;->isWifiOffloadingEnabled()I

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    :cond_2
    sget-boolean v5, Lcom/android/server/wifi/WifiNotificationController;->WFC_FEATURE:Z

    if-eqz v5, :cond_3

    .line 356
    iput p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    .line 359
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 365
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    move v0, p1

    .line 367
    .local v0, "bNotiVisible":Z
    sget-boolean v5, Lcom/android/server/wifi/WifiNotificationController;->WFC_FEATURE:Z

    if-eqz v5, :cond_4

    .line 368
    if-eqz p1, :cond_7

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    if-nez v5, :cond_7

    const/4 v0, 0x1

    .line 371
    :cond_4
    :goto_1
    if-eqz v0, :cond_9

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 378
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    if-nez v5, :cond_5

    .line 380
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    .line 381
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 382
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    sget v6, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 383
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 386
    sget-boolean v5, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v5, :cond_8

    .line 387
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.WIFI_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v4, v10, v7}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 402
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140015

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 404
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140016

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 408
    .local v1, "details":Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 411
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->wifiNetworkAvailableSettings:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 412
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$plurals;->sp_wifi_open_secured_available_detailed_NORMAL:I

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 417
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 418
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->color:I

    .line 420
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 424
    sget v4, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v4, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 430
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :goto_3
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    goto/16 :goto_0

    :cond_7
    move v0, v4

    .line 368
    goto/16 :goto_1

    .line 393
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v4, v10, v7}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 427
    :cond_9
    sget v4, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_3
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationRepeatTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScansSinceNetworkStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    return-void
.end method
