.class public Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.super Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;,
        Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;
    }
.end annotation


# static fields
.field private static final CLASSNAME_WIFI_SETTINGS_AUTO_CONNECT_DIALOG:Ljava/lang/String; = "com.android.settings.wifi.WifiOffloadingAutoConnectNoti"

.field private static final CLASSNAME_WIFI_SETTINGS_DIALOG:Ljava/lang/String; = "com.android.settings.wifi.WifiOffloadingDialog"

.field private static final PACKAGENAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final WIFI_AUTO_DIALOG_DELAYED_MS:I = 0x0

.field private static final WIFI_DIALOG_DELAYED_MS:I = 0x7d0

.field private static mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;


# instance fields
.field private final EVT_CHECK_SCANN:I

.field private final TAG:Ljava/lang/String;

.field private hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLooper:Landroid/os/Looper;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanCount:I

.field private final mWifiAuToDialogRunnable:Ljava/lang/Runnable;

.field private final mWifiDialogRunnable:Ljava/lang/Runnable;

.field private mWifiDisableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

.field private mWifiEnableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private misWifiAPOn:Z

.field private misWifiOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;-><init>()V

    .line 48
    const-string v0, "WiFiOffloadingService"

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    .line 66
    iput-boolean v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiAPOn:Z

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->EVT_CHECK_SCANN:I

    .line 76
    iput-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mLooper:Landroid/os/Looper;

    .line 78
    iput v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 85
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;

    invoke-direct {v0, p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDialogRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;

    invoke-direct {v0, p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiAuToDialogRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    .line 118
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-direct {v0, p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    .line 127
    return-void
.end method

.method static synthetic access$200(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$602(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .param p1, "x1"    # Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    return-object p1
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 836
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 837
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 841
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 842
    return-void
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 735
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x1

    .line 742
    :goto_0
    return v0

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    const/4 v0, 0x2

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    const/4 v0, 0x3

    goto :goto_0

    .line 742
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 746
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 753
    :cond_0
    :goto_0
    return v0

    .line 749
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 751
    goto :goto_0

    .line 753
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    iget-object v5, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 500
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1

    .line 501
    const-string v5, "WiFiOffloadingService"

    const-string v6, "SCAN_RESULTS_AVAILABLE_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->updateAPState()V

    .line 545
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_1
    return-void

    .line 503
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    const-string v5, "WiFiOffloadingService"

    const-string v6, "[NEZZIMOM],SCAN_RESULTS_AVAILABLE_ACTION null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 515
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 516
    const-string v5, "WiFiOffloadingService"

    const-string v6, "SUPPLICANT_STATE_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v5, "newState"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    .line 519
    .local v3, "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    sget-object v5, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v5, v3, :cond_0

    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v3, :cond_0

    .line 521
    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    .line 524
    .end local v3    # "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    :cond_3
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    const-string v5, "WiFiOffloadingService"

    const-string v6, "NETWORK_STATE_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 532
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 758
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 760
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 762
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private updateAPState()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 628
    const-string v9, "WiFiOffloadingService"

    const-string v10, "[NEZZIMOM], updateAPState"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 630
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 632
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .line 633
    .local v3, "founded":Z
    const/4 v6, 0x0

    .line 634
    .local v6, "not_find":Z
    if-eqz v1, :cond_9

    .line 635
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Profiled AP exists"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 637
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 638
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], WifiConfiguration :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v9, :cond_2

    .line 642
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 647
    :cond_0
    :goto_1
    if-eqz v8, :cond_4

    .line 648
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 650
    .local v7, "result":Landroid/net/wifi/ScanResult;
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], scan result SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], scan result BSSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], scan result capabilities: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], scan result level: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], scan result frequency: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p0, v0, v7}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 658
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], found profiled AP from scan result. level : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v3, 0x1

    .line 671
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    const-string v9, "WiFiOffloadingService"

    const-string v10, "[NEZZIMOM], not find any configured APs in for-loop "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 643
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 644
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_1

    .line 665
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_3
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], not find any configured APs from scan result. level : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v6, 0x1

    .line 670
    goto/16 :goto_2

    .line 674
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    const-string v9, "WiFiOffloadingService"

    const-string v10, "[NEZZIMOM], scan result is null "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 684
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 685
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], founded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", not_find: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mScanCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-nez v3, :cond_6

    if-eqz v6, :cond_6

    iget v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    const/4 v10, 0x3

    if-le v9, v10, :cond_6

    .line 688
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM], out of range :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v9, "WiFiOffloadingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[NEZZIMOM],out of range with profiled APs , not_find :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V

    .line 693
    const/4 v9, 0x0

    iput v9, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 700
    iput v12, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 702
    :cond_7
    const/4 v3, 0x0

    .line 703
    const/4 v6, 0x0

    .line 723
    :goto_4
    return-void

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 705
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_8
    const-string v9, "WiFiOffloadingService"

    const-string v10, "AP does not exists"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 708
    :catch_1
    move-exception v2

    .line 709
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 715
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_9
    const-string v9, "WiFiOffloadingService"

    const-string v10, "Configured AP does not exists"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :try_start_2
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 718
    :catch_2
    move-exception v2

    .line 719
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 548
    const-string v1, "WiFiOffloadingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConnectionState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_2

    .line 555
    const-string v1, "WiFiOffloadingService"

    const-string v2, "OBTAINING_IPADDR PAUSE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 567
    :goto_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    .line 568
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState IDLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v1, "WiFiOffloadingService"

    const-string v2, "ELSE RESUME"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->resume()V

    goto :goto_1

    .line 574
    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_4

    .line 575
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState SCANNING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_5

    .line 577
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_6

    .line 579
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState AUTHENTICATING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_7

    .line 581
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState OBTAINING_IPADDR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :cond_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_9

    .line 583
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mScanCount:I

    .line 585
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoConnect()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 586
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->destroy()V

    goto :goto_0

    .line 588
    :cond_8
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->destroy()V

    .line 589
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiAuToDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 591
    :cond_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_a

    .line 592
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState SUSPENDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 593
    :cond_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_b

    .line 594
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState DISCONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 597
    :catch_1
    move-exception v0

    .line 598
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 600
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_c

    .line 601
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :try_start_2
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 604
    :catch_2
    move-exception v0

    .line 605
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 607
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 608
    const-string v1, "WiFiOffloadingService"

    const-string v2, "updateConnectionState FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :try_start_3
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->finalize()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 611
    :catch_3
    move-exception v0

    .line 612
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 619
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->resume()V

    .line 624
    :goto_0
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWifiState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    goto :goto_0
.end method


# virtual methods
.method public disableWifi()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 407
    :cond_0
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDisableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

    .line 408
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDisableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;->start()V

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 410
    return-void
.end method

.method public disableWifioffloadTimerReminder()V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_offloading_timer_reminder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 875
    return-void
.end method

.method public disable_background()Z
    .locals 2

    .prologue
    .line 261
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] diable_background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->disableWifi()V

    .line 265
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->pause()V

    .line 267
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 271
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public enable()Z
    .locals 4

    .prologue
    .line 230
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "WiFiOffloadingService"

    const-string v1, "start wifioffloading activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public enableWifi()V
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 395
    .local v0, "isWifiEnabled":Z
    const-string v1, "WiFiOffloadingService"

    const-string v2, "enableWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 399
    return-void
.end method

.method public enable_background()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 247
    const-string v1, "WiFiOffloadingService"

    const-string v2, "[W Offloading] enable_background"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadingStart(I)V

    .line 251
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->wifiEnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return v3

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WiFiOffloadingService"

    const-string v2, "enable_background error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->disableWifi()V

    .line 826
    :cond_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->destroy()V

    .line 830
    invoke-super {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->finalize()V

    .line 832
    return-void
.end method

.method public getAutoAP_ssid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "ssid":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 813
    .local v1, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 818
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWifiOffloadOngoing()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 937
    const-string v3, "wifi.lge.offloading.ongoing"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 938
    .local v0, "OffloadOngoing":Z
    const-string v3, "WiFiOffloadingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NEZZIMOM] getWifiOffloadOngoing() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    if-ne v1, v0, :cond_0

    .line 943
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getWifiOffloadingStart()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 926
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W Offloading] getWifiOffloadingStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Wifi_offloading_start"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Wifi_offloading_start"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getisAutoConnect()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_auto_connect"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 490
    .local v0, "noti":I
    const-string v3, "WiFiOffloadingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getisAutoConnect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_auto_connect"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getisAutoOn()Z
    .locals 2

    .prologue
    .line 468
    const-string v0, "WiFiOffloadingService"

    const-string v1, "getisAutoOn => getAutoConnect() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public getisNotifyMe()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 449
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.lge.settings.wifi.wifiOffloadingNotifyMe"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 451
    .local v0, "noti":I
    const-string v3, "WiFiOffloadingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getisNotifyMe : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-ne v1, v0, :cond_0

    .line 457
    :goto_0
    return v1

    .line 454
    :cond_0
    if-nez v0, :cond_1

    move v1, v2

    .line 455
    goto :goto_0

    :cond_1
    move v1, v2

    .line 457
    goto :goto_0
.end method

.method public getisWifiAPOn()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiAPOn:Z

    return v0
.end method

.method public getisWifiOn()Z
    .locals 3

    .prologue
    .line 418
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getisWifiOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-boolean v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    return v0
.end method

.method public init()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    const-string v2, "WiFiOffloadingService"

    const-string v5, "[W Offloading] WiFiOffloadingService Init!!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getWifiOffloadOngoing()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 149
    const-string v2, "WiFiOffloadingService"

    const-string v4, "[W Offloading] WifiOffloading is going, so do not offloading"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 225
    :goto_0
    return v2

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiOn(Z)V

    .line 159
    :goto_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getWifiOffloadingStart()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 160
    const-string v2, "WiFiOffloadingService"

    const-string v4, "[W Offloading] return"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 161
    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiOn(Z)V

    goto :goto_1

    .line 164
    :cond_4
    const-string v2, "wifi.lge.mhp"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useMobileHotspot()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    if-nez v2, :cond_5

    .line 167
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v2

    sput-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 169
    :cond_5
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->isMHPEnabled()Z

    move-result v2

    if-ne v2, v4, :cond_7

    .line 175
    :try_start_0
    const-string v2, "WiFiOffloadingService"

    const-string v5, "[W Offloading] MHP or WP2P on in init()"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 176
    goto :goto_0

    .line 182
    :cond_6
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-ne v2, v4, :cond_7

    .line 188
    :try_start_1
    const-string v2, "WiFiOffloadingService"

    const-string v4, "[W Offloading] MHP or WP2P on in init()"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 189
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WiFiOffloadingService"

    const-string v4, "[W Offloading] MHP or WP2P on in init err()"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 192
    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 197
    :cond_7
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->isTethered()Z

    move-result v2

    if-ne v4, v2, :cond_8

    .line 198
    const-string v2, "WiFiOffloadingService"

    const-string v4, "USB or Bluetooth tethering is on. So return!."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 199
    goto :goto_0

    .line 202
    :cond_8
    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 203
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WIFI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_9

    .line 205
    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiAPOn(Z)V

    .line 207
    const-string v2, "WiFiOffloadingService"

    const-string v4, "Offloading do not process because WiFi is already connected!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 208
    goto/16 :goto_0

    .line 211
    :cond_9
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setisWifiAPOn(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoOn()Z

    move-result v2

    if-nez v2, :cond_a

    .line 216
    const-string v2, "WiFiOffloadingService"

    const-string v4, "[W Offloading] no noti popup"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 217
    goto/16 :goto_0

    .line 220
    :cond_a
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisNotifyMe()Z

    move-result v2

    if-nez v2, :cond_b

    .line 221
    const-string v2, "WiFiOffloadingService"

    const-string v4, "[W Offloading] no noti popup"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 222
    goto/16 :goto_0

    :cond_b
    move v2, v4

    .line 225
    goto/16 :goto_0
.end method

.method public isOffloadingReminder_on()I
    .locals 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_offloading_reminder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isOffloadingTimer_on()Z
    .locals 4

    .prologue
    .line 852
    const/4 v0, 0x0

    .line 853
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_offloading_timer_reminder"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 855
    const/4 v0, 0x1

    .line 860
    :goto_0
    return v0

    .line 858
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTethered()Z
    .locals 15

    .prologue
    .line 952
    iget-object v13, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 954
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v4, :cond_0

    .line 955
    const/4 v13, 0x0

    .line 979
    :goto_0
    return v13

    .line 958
    :cond_0
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v12

    .line 959
    .local v12, "tethered":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "Usbtetherable":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "Bluetoothtetherable":[Ljava/lang/String;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v9, v2, v6

    .local v9, "o":Ljava/lang/String;
    move-object v11, v9

    .line 963
    check-cast v11, Ljava/lang/String;

    .line 964
    .local v11, "s":Ljava/lang/String;
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v10, v3, v5

    .line 965
    .local v10, "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 966
    const-string v13, "WiFiOffloadingService"

    const-string v14, "Now USB Tethering is enabled!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v13, 0x1

    goto :goto_0

    .line 964
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 971
    .end local v10    # "regex":Ljava/lang/String;
    :cond_2
    move-object v3, v0

    array-length v8, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_4

    aget-object v10, v3, v5

    .line 972
    .restart local v10    # "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 973
    const-string v13, "WiFiOffloadingService"

    const-string v14, "Now Bluetooth Tethering is enabled!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v13, 0x1

    goto :goto_0

    .line 971
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 962
    .end local v10    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_1

    .line 978
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v9    # "o":Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    :cond_5
    const-string v13, "WiFiOffloadingService"

    const-string v14, "USB/Bluetooth Tethering is disabled!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public isWifiAPOn()Z
    .locals 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 444
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiOffloadingEnabled()I
    .locals 3

    .prologue
    .line 846
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Wifi_offloading_reminder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resetWifioffloadTimerReminder(I)Z
    .locals 3
    .param p1, "check"    # I

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 887
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_offloading_timer_reminder"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 890
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setAutoOn(Z)V

    .line 897
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 898
    return v0
.end method

.method public setAutoOn(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 476
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-eqz p1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_auto_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_auto_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setWifiOffloadOngoing(Z)V
    .locals 2
    .param p1, "OffloadOngoing"    # Z

    .prologue
    .line 903
    if-eqz p1, :cond_0

    .line 904
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[NEZZIMOM] setOffloadOngoing >> 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v0, "wifi.lge.offloading.ongoing"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :goto_0
    return-void

    .line 910
    :cond_0
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[NEZZIMOM] setOffloadOngoing >> 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v0, "wifi.lge.offloading.ongoing"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWifiOffloadingStart(I)V
    .locals 3
    .param p1, "WiFiOffloadingStart"    # I

    .prologue
    .line 919
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W Offloading] setWifiOffloadingStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Wifi_offloading_start"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 922
    return-void
.end method

.method public setisWifiAPOn(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 423
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setisWifiAPOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput-boolean p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiAPOn:Z

    .line 425
    return-void
.end method

.method public setisWifiOn(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 413
    const-string v0, "WiFiOffloadingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setisWifiOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iput-boolean p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->misWifiOn:Z

    .line 415
    return-void
.end method

.method public start(Z)Z
    .locals 5
    .param p1, "persistSetting"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 276
    const-string v0, "WiFiOffloadingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[W Offloading] start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->setWifiOffloadOngoing(Z)V

    .line 283
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->isTethered()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 298
    const-string v0, "WiFiOffloadingService"

    const-string v2, "USB or Bluetooth tethering is on. So return!."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 315
    :goto_0
    return v0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] wifi off auto on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enable_background()Z

    move v0, v2

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisNotifyMe()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] wifi on noti on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enable()Z

    move v0, v2

    .line 312
    goto :goto_0

    :cond_3
    move v0, v1

    .line 315
    goto :goto_0
.end method

.method public start_background(Z)Z
    .locals 2
    .param p1, "persistSetting"    # Z

    .prologue
    .line 320
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] start_background"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisAutoOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[W Offloading] wifi off auto off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->enable_background()Z

    .line 332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopWifioffloadTimer()V
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.settings.wifi.WifiOffloadingTimeReceiver.stop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 880
    return-void
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 727
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {p2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 729
    const/4 v0, 0x1

    .line 731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wifiEnable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    .line 374
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiEnableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

    .line 379
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiEnableThread:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiEnableThread;->start()V

    .line 387
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->resume()V

    .line 388
    return-void
.end method
