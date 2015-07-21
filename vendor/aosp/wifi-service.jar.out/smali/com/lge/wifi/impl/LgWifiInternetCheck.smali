.class public Lcom/lge/wifi/impl/LgWifiInternetCheck;
.super Ljava/lang/Object;
.source "LgWifiInternetCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;,
        Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_DNS_CHECK_INTERVAL_MS:J = 0xbb8L

.field private static final DEFAULT_DNS_PING_TIMEOUT_MS:I = 0xbb8

.field private static final DEFAULT_MIN_DNS_RESPONSES:I = 0x1

.field private static final DEFAULT_NUM_DNS_PINGS:I = 0x5

.field private static final DNS_INTRATEST_PING_INTERVAL_MS:I = 0x1f4

.field private static final DNS_START_DELAY_MS:I = 0x3e8

.field private static final EXTRA_LINK_STATUS:Ljava/lang/String; = "pppoeLinkStatus"

.field private static final HOTSPOT_ATT:Ljava/lang/String; = "attwifi"

.field private static final MESSAGE_DNS_CHECK:I = 0x1

.field private static final MESSAGE_HTTP_CHECK:I = 0x3

.field private static final MESSAGE_LOCAL_DNS_CHECK:I = 0x2

.field private static final PPPOE_LINK_CONFIGURATION_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_LINK_CONFIGURATION_ACTION"

.field private static final TAG:Ljava/lang/String; = "WifiInternetCheck"

.field private static checkGuard:I

.field private static dnsCheckLogStr:Ljava/lang/String;

.field private static dnsCheckSuccesses:[I

.field private static dnsResponseStrs:[Ljava/lang/String;

.field private static dnsResultTimes:I

.field private static dnsResultValue:Z

.field private static idDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static pppoeLinkStatus:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

.field private mDnsPinger:Landroid/net/DnsPinger;

.field private mHttpCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;

.field mHttpUrlConnection:Ljava/net/HttpURLConnection;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

.field private mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    sput v1, Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->idDnsMap:Ljava/util/HashMap;

    .line 72
    sput v1, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I

    .line 73
    sput-boolean v1, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z

    .line 78
    sput v1, Lcom/lge/wifi/impl/LgWifiInternetCheck;->pppoeLinkStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStoreProxy;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiConfigStoreProxy"    # Lcom/android/server/wifi/WifiConfigStoreProxy;

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 50
    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    .line 51
    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    .line 75
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    const-string v3, ""

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 81
    new-instance v0, Lcom/lge/wifi/impl/LgWifiInternetCheck$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck$1;-><init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 123
    iput-object p3, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    .line 124
    invoke-virtual {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->registeBroadcastReceiver()V

    .line 126
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "DnsCheckHandler"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 127
    .local v6, "dnsCheckThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 128
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 129
    .local v8, "looper":Landroid/os/Looper;
    if-eqz v8, :cond_0

    .line 130
    new-instance v0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    invoke-direct {v0, p0, v8}, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;-><init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    .line 133
    :cond_0
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "httpCheckHandler"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    .local v7, "httpCheckThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 135
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 136
    if-eqz v8, :cond_1

    .line 137
    new-instance v0, Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;

    invoke-direct {v0, p0, v8}, Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;-><init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Landroid/net/DnsPinger;

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    const-string v2, "WifiWatchdogStateMachine.DnsPinger"

    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    invoke-direct/range {v0 .. v5}, Landroid/net/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsPinger:Landroid/net/DnsPinger;

    .line 144
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/LgWifiInternetCheck;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/LgWifiInternetCheck;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->runDnsPingCheck(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->handleInternetCheckTimeout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->isHttpConnectionAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/lge/wifi/impl/LgWifiInternetCheck;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I

    return v0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I

    return v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z

    return p0
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/LgWifiInternetCheck;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->getDnsPingResult(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->cancelDnsCheck()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->isNotSiteLocalAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I

    return v0
.end method

.method private cancelDnsCheck()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    sput v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I

    .line 250
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsPinger:Landroid/net/DnsPinger;

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    .line 251
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->removeMessages(I)V

    .line 252
    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDnsPingResult(II)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "responseTime"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    move v2, p1

    .line 256
    .local v2, "pingID":I
    move v3, p2

    .line 257
    .local v3, "pingResponseTime":I
    const/4 v4, 0x0

    .line 258
    .local v4, "result":Z
    sget-object v7, Lcom/lge/wifi/impl/LgWifiInternetCheck;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 259
    .local v0, "dnsServerId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 260
    const-string v6, "WifiInternetCheck"

    const-string v7, "Received a Dns response with unknown ID!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return v5

    .line 263
    :cond_1
    sget-object v7, Lcom/lge/wifi/impl/LgWifiInternetCheck;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    if-ltz v3, :cond_2

    .line 265
    sget-object v7, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 275
    :cond_2
    sget-object v7, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v7, v7, v8

    if-lt v7, v6, :cond_3

    move v5, v6

    .line 279
    goto :goto_0

    .line 281
    :cond_3
    sget-object v6, Lcom/lge/wifi/impl/LgWifiInternetCheck;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    iget-object v6, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 287
    .local v1, "minfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "attwifi"

    invoke-static {v7}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 289
    iget-object v6, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(II)Z

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 93
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->triggerInternetCheck()V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->cancelDnsCheck()V

    .line 99
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_isshowvzwwifiinternetconnectionpopup"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_isshowvzwwifiinternetconnectionpopup"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 107
    :cond_3
    const-string v1, "android.net.wifi.PPPOE_LINK_CONFIGURATION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "pppoeLinkStatus"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lge/wifi/impl/LgWifiInternetCheck;->pppoeLinkStatus:I

    goto :goto_0
.end method

.method private handleInternetCheckTimeout()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 353
    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v7, v8, :cond_1

    .line 354
    const-string v5, "WifiInternetCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip internet check. it\'s not connected state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sget v7, Lcom/lge/wifi/impl/LgWifiInternetCheck;->pppoeLinkStatus:I

    if-ne v7, v11, :cond_2

    .line 359
    const-string v5, "WifiInternetCheck"

    const-string v6, "skip internet check. pppoe online link state"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_2
    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 364
    .local v4, "mInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 366
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "US"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 367
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "attwifi"

    invoke-static {v8}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 368
    const-string v5, "WifiInternetCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip Internet check for ATT, SSID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-ne v7, v5, :cond_8

    .line 375
    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_data_continuity_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v3, v5

    .line 377
    .local v3, "isPoortNetworkEnabled":Z
    :goto_1
    const-string v7, "WifiInternetCheck"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VZW Avoid bad connections checked :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez v3, :cond_7

    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_vzw_no_internet_connection_pop_up"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_7

    .line 380
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->showVZWNoWifiInternetConnectionPopup()V

    .line 396
    .end local v3    # "isPoortNetworkEnabled":Z
    :cond_4
    :goto_2
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LGU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "internet_msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->disconnectAPWifiInternetUnavailable()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 402
    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_internet_unavailable_alert_NORMAL:I

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 404
    iget-object v6, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7, v11}, Lcom/android/server/wifi/WifiConfigStoreProxy;->disableNetwork(II)Z

    .line 405
    iget-object v6, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 406
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_5

    .line 407
    const/16 v6, 0x80

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 414
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v2    # "internet_msg":Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 375
    goto/16 :goto_1

    .line 382
    .restart local v3    # "isPoortNetworkEnabled":Z
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.lge.wifi.WIFI_NO_RESPONSE_FROM_INTERNET_ACTION"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 384
    const-string v7, "wifi_no_response_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 389
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "isPoortNetworkEnabled":Z
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.lge.wifi.WIFI_NO_RESPONSE_FROM_INTERNET_ACTION"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .restart local v1    # "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 391
    const-string v7, "wifi_no_response_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 411
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "internet_msg":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$string;->sp_wifi_internet_unavailable_alert_for_uncheck_NORMAL:I

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private isHttpConnectionAvailable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 314
    const-string v0, "http://clients3.google.com/generate_204"

    .line 315
    .local v0, "DEFAULT_WALLED_GARDEN_URL":Ljava/lang/String;
    const/16 v2, 0x2710

    .line 318
    .local v2, "WALLED_GARDEN_SOCKET_TIMEOUT_MS":I
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "http://clients3.google.com/generate_204"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 319
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    .line 320
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 321
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    const/16 v8, 0x2710

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 322
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    const/16 v8, 0x2710

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 323
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 324
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 325
    .local v1, "ResponseCode":I
    const-string v5, "WifiInternetCheck"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isHttpConnectionAvailable - We got a valid response : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_0

    .line 339
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v5, v6

    .end local v1    # "ResponseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return v5

    .line 328
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/net/UnknownHostException;
    :try_start_1
    const-string v5, "WifiInternetCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHttpConnectionAvailable - Unknown Host Exception  Probably not an internet connection: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 339
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move v5, v7

    goto :goto_0

    .line 331
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    .line 332
    .local v3, "e":Ljava/net/ConnectException;
    :try_start_2
    const-string v5, "WifiInternetCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHttpConnectionAvailable - Connect Exception Probably not an internet connection: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_2

    .line 339
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v5, v7

    goto :goto_0

    .line 334
    .end local v3    # "e":Ljava/net/ConnectException;
    :catch_2
    move-exception v3

    .line 335
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "WifiInternetCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException - probably not a portal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_3

    .line 339
    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v5, v6

    goto :goto_0

    .line 338
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_4

    .line 339
    iget-object v6, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v5
.end method

.method private isInternetAvailableChecked()Z
    .locals 4

    .prologue
    .line 462
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 464
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "ssid":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "attwifi"

    invoke-static {v2}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const-string v2, "WifiInternetCheck"

    const-string v3, "triggerDnsCheck is ignored due to ATT WISPr"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v2, 0x0

    .line 472
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "ssid":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNotSiteLocalAddress()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    const-string v0, "www.google.com"

    .line 300
    .local v0, "DEFAULT_DNS_CHECK_URL":Ljava/lang/String;
    :try_start_0
    const-string v4, "www.google.com"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 301
    const-string v3, "WifiInternetCheck"

    const-string v4, "DEFAULT_DNS_CHECK_URL(www.google.com) is private IP so probably not an internet connection "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 304
    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "WifiInternetCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFAULT_DNS_CHECK_URL - Unknown Host Exception    Probably not an internet connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 486
    sget-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsCheckLogStr:Ljava/lang/String;

    .line 487
    .local v3, "logStr":Ljava/lang/String;
    sget-object v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResponseStrs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 488
    .local v4, "respStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v4    # "respStr":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 346
    const-string v0, ""

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private runDnsPingCheck(I)V
    .locals 8
    .param p1, "msg"    # I

    .prologue
    const/4 v4, 0x0

    .line 220
    sget v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I

    if-eq p1, v3, :cond_1

    .line 221
    const-string v3, "WifiInternetCheck"

    const-string v4, "Single check msg out of sync, ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return-void

    .line 224
    :cond_1
    sput v4, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I

    .line 225
    sput-boolean v4, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z

    .line 226
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsPinger:Landroid/net/DnsPinger;

    invoke-virtual {v3}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsList:Ljava/util/List;

    .line 227
    sget-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 228
    .local v2, "numDnses":I
    new-array v3, v2, [I

    sput-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsCheckSuccesses:[I

    .line 229
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResponseStrs:[Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 231
    sget-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResponseStrs:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    sget-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 241
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 242
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 243
    sget-object v4, Lcom/lge/wifi/impl/LgWifiInternetCheck;->idDnsMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsPinger:Landroid/net/DnsPinger;

    sget-object v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    const/16 v6, 0xbb8

    mul-int/lit16 v7, v0, 0x1f4

    add-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v3, v6, v7}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private showVZWNoWifiInternetConnectionPopup()V
    .locals 4

    .prologue
    .line 419
    const-string v1, "WifiInternetCheck"

    const-string v2, "start VZWNoWifiInternetConnectionPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_isshowvzwwifiinternetconnectionpopup"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_isshowvzwwifiinternetconnectionpopup"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    sget v2, Lcom/lge/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 426
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/lge/internal/R$string;->sp_wifi_vzw_no_wifi_internet_connection_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->sp_wifi_vzw_no_wifi_internet_connection_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lge/wifi/impl/LgWifiInternetCheck$4;

    invoke-direct {v2, p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck$4;-><init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->sp_wifi_vzw_go_to_settings:I

    new-instance v3, Lcom/lge/wifi/impl/LgWifiInternetCheck$3;

    invoke-direct {v3, p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck$3;-><init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->sp_wifi_vzw_no_thanks:I

    new-instance v3, Lcom/lge/wifi/impl/LgWifiInternetCheck$2;

    invoke-direct {v3, p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck$2;-><init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

    .line 457
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 458
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private triggerInternetCheck()V
    .locals 5

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->isInternetAvailableChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I

    .line 215
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;

    const/4 v2, 0x1

    sget v3, Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public disconnectAPWifiInternetUnavailable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "ret":I
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ATT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AIO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_internet_availability_check"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 481
    :cond_1
    const-string v3, "WifiInternetCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi_internet_unavailable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-ne v0, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public registeBroadcastReceiver()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.net.wifi.PPPOE_LINK_CONFIGURATION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method
