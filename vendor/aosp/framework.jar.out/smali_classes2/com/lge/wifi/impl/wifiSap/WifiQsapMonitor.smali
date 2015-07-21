.class public Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;
.super Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;
.source "WifiQsapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiQsapMonitor"

.field private static final eventApShutdown:Ljava/lang/String; = "105"

.field private static final eventSapDisabled:Ljava/lang/String; = "101"

.field private static final eventSapEnabled:Ljava/lang/String; = "100"

.field private static final eventStaAssociated:Ljava/lang/String; = "102"

.field private static final eventStaDisassociated:Ljava/lang/String; = "103"

.field private static final eventUnrecoverableError:Ljava/lang/String; = "104"

.field private static mThreadRunning:Z


# instance fields
.field private mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

.field private final mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;Landroid/content/Context;)V
    .locals 3
    .param p1, "sapHandler"    # Landroid/os/Handler;
    .param p2, "qsapApi"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;-><init>(Landroid/os/Handler;)V

    .line 204
    iput-object p2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    .line 207
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    return p0
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;)Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;
    .param p1, "x1"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->handleWifiApStateChanged(I)V

    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 225
    const-string v0, "WifiQsapMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiApStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 272
    :goto_0
    :pswitch_0
    return-void

    .line 237
    :pswitch_1
    const-string v0, "WifiQsapMonitor"

    const-string v1, "handleWifiApStateChanged [MESSAGE_AP_DISABLED]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->clearAssoStaMacList()V

    .line 250
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->notifySoftApDisabled()V

    goto :goto_0

    .line 254
    :pswitch_2
    const-string v0, "WifiQsapMonitor"

    const-string v1, "handleWifiApStateChanged [MESSAGE_AP_FAILED]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->clearAssoStaMacList()V

    .line 267
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->notifySoftApDisabled()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public startMonitoring()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    .line 278
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    .line 283
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mQsapMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->start()V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "WifiQsapMonitor"

    const-string v1, "QsapMonitorThread is already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z

    .line 306
    return-void
.end method
