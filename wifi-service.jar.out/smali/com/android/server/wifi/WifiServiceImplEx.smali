.class public Lcom/android/server/wifi/WifiServiceImplEx;
.super Lcom/android/server/wifi/WifiServiceImpl;
.source "WifiServiceImplEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;,
        Lcom/android/server/wifi/WifiServiceImplEx$ClientHandlerEx;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiServiceImplEx"

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private isWFCStateRegistered:Z

.field private mClientHandlerEx:Lcom/android/server/wifi/WifiServiceImplEx$ClientHandlerEx;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mFirstWiFiOn:Z

.field private mGonsWifiScanCompleted:Ljava/lang/String;

.field private mIsProvisioned:Z

.field private mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

.field private mWiFiAggregationIfaceIface:Lcom/lge/wifi/extension/IWifiAggregation;

.field private mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

.field private mWifiNeedOnE911:Z

.field private mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

.field private mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

.field private mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V

    .line 105
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->isWFCStateRegistered:Z

    .line 106
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiNeedOnE911:Z

    .line 111
    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWiFiAggregationIfaceIface:Lcom/lge/wifi/extension/IWifiAggregation;

    .line 113
    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    .line 116
    const-string v1, "com.lge.intent.action.GONS_WIFI_SCAN_COMPLETED"

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mGonsWifiScanCompleted:Ljava/lang/String;

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mFirstWiFiOn:Z

    .line 132
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mIsProvisioned:Z

    .line 137
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    .line 139
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_5

    .line 140
    new-instance v1, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->wifiThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;-><init>(Lcom/android/server/wifi/WifiServiceImplEx;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .line 141
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiServiceExtIface()Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    .line 142
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiServerManager;->getWifiServerServiceExtIface()Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 143
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getPPPOEServiceExtIface()Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    .line 144
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/wifi/extension/IPPPOEServiceExtension;->initPPPOESerivceExt(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    const-string v1, "CMCC"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CMO"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.net.wifi.WIFI_AUTO_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImplEx$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImplEx$1;-><init>(Lcom/android/server/wifi/WifiServiceImplEx;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    const-string v1, "wlan.cmcc.connect.type"

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connect_select"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const-string v1, "VZW"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.hotspotprovision.hotspot.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "com.lge.hotspotprovision.quicksetting.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "com.lge.hotspotprovision.hotspot.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImplEx$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImplEx$2;-><init>(Lcom/android/server/wifi/WifiServiceImplEx;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v1, "ro.lge.gons.enable"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mGonsWifiScanCompleted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImplEx$3;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImplEx$3;-><init>(Lcom/android/server/wifi/WifiServiceImplEx;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    .line 220
    return-void

    .line 148
    :cond_5
    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/lge/wifi/extension/IWifiServerServiceExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiServiceImplEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mFirstWiFiOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiServiceImplEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mFirstWiFiOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiServiceImplEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mIsProvisioned:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiServiceImplEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImplEx;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    return-object v0
.end method

.method private checkVZWFeaturehiddenwifi(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 883
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vzw_hidden_feature_wifi"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 886
    .local v0, "hide_wifi":Z
    :goto_0
    const-string v3, "WifiServiceImplEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkVZWFeaturehiddenwifi enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hide_wifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-ne p1, v1, :cond_2

    if-ne v0, v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    if-eqz v1, :cond_1

    .line 889
    const-string v1, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendToastMessageId enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hide_wifi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :goto_1
    return v2

    .end local v0    # "hide_wifi":Z
    :cond_0
    move v0, v2

    .line 883
    goto :goto_0

    .line 893
    .restart local v0    # "hide_wifi":Z
    :cond_1
    const-string v1, "WifiServiceImplEx"

    const-string v3, "mWifiServiceExt null: "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v2, v1

    .line 898
    goto :goto_1
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private getAppLable(I)Ljava/lang/String;
    .locals 10
    .param p1, "pID"    # I

    .prologue
    .line 930
    const-string v1, ""

    .line 931
    .local v1, "appLable":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 932
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 933
    .local v6, "l":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 934
    .local v4, "i":Ljava/util/Iterator;
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 935
    .local v7, "pm":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 936
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v5, v8

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 939
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_0

    .line 940
    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 942
    .local v2, "c":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "c":Ljava/lang/CharSequence;
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    move-object v8, v1

    .line 949
    :goto_0
    return-object v8

    .line 945
    .restart local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v3

    .line 946
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 9
    .param p1, "pID"    # I

    .prologue
    .line 904
    const-string v6, ""

    .line 905
    .local v6, "processName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 906
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 907
    .local v4, "l":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 908
    .local v2, "i":Ljava/util/Iterator;
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 909
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 910
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v3, v7

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 913
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_0

    .line 914
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 919
    .local v1, "c":Ljava/lang/CharSequence;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v1    # "c":Ljava/lang/CharSequence;
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v6

    .line 921
    .restart local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private isPowerSaveModeEnabled()Z
    .locals 1

    .prologue
    .line 1252
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->isWifiPowerSaveModeEnabled()Z

    move-result v0

    .line 1255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDLNADisabled()V
    .locals 2

    .prologue
    .line 1180
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/wifi/extension/IWifiServiceExtension;->setDlnaUsing(Z)Z

    .line 1183
    :cond_0
    return-void
.end method

.method private startATTEntitleforTethering(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 8
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 765
    if-ne p2, v3, :cond_a

    const-string v4, "US"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "ATT"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 767
    const-string v4, "WifiServiceImplEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startATTEntitleforTethering"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tether_entitlement_check_state"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_entitlement_check_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_7

    .line 771
    const-string v4, "WifiServiceImplEx"

    const-string v5, "[TetherSettings] Need to provision for AT&T"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_entitlement_check_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    .line 782
    const-string v4, "com.lge.entitlementcheckservice"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImplEx;->getAppName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 784
    const-string v2, "WifiServiceImplEx"

    const-string v4, "EntitlementCheckService call setWifiApEnable"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v2, v3

    .line 833
    :cond_1
    :goto_1
    return v2

    .line 785
    :cond_2
    const-string v4, "com.smartcom"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImplEx;->getAppName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 787
    const-string v2, "WifiServiceImplEx"

    const-string v4, "ATT All Access call setWifiApEnable"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_3
    const-string v4, "tablet"

    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 789
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 790
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_4

    .line 791
    const-string v3, "WifiServiceImplEx"

    const-string v4, "tablet has no simcard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 794
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_entitlement_check_state"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    const-string v2, "WifiServiceImplEx"

    const-string v4, "tablet skip entitlementcheck temporary"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v3, "WifiServiceImplEx"

    const-string v4, "3rd party app call setWifiApEnable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.lge.entitlementcheckservice"

    const-string v4, "com.lge.entitlementcheckservice.EntitlementDialogActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v3, "Tether_Type"

    const-string v4, "WIFI"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    if-eqz p1, :cond_6

    .line 805
    const-string v3, "MobileHotspotConfig"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 807
    :cond_6
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 808
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 812
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v4, "tablet"

    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 813
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 814
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_8

    .line 815
    const-string v3, "WifiServiceImplEx"

    const-string v4, "tablet has no simcard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 818
    :cond_8
    const-string v2, "WifiServiceImplEx"

    const-string v4, "tablet skip entitlementcheck temporary"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 821
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    const-string v2, "WifiServiceImplEx"

    const-string v4, "[TetherSettings] Provisioning for AT&T is already done"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 825
    :cond_a
    if-nez p2, :cond_b

    const-string v4, "US"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "ATT"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "wlan.lge.atthotspot"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 828
    const-string v4, "com.smartcom"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImplEx;->getAppName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_b
    move v2, v3

    .line 833
    goto/16 :goto_1
.end method

.method private startVZWProvisionforTethering(ZLandroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 840
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImplEx;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, "mPackageName":Ljava/lang/String;
    const-string v6, "WifiServiceImplEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startVZWProvisionforTethering "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-ne p1, v4, :cond_5

    const-string v6, "US"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "VZW"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 844
    const-string v6, "WifiServiceImplEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startVZWProvisionforTethering "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v6, "wifi.lge.mhp"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 846
    const-string v5, "WifiServiceImplEx"

    const-string v6, "return true"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    :goto_0
    return v4

    .line 849
    :cond_1
    if-ne p1, v4, :cond_3

    .line 850
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImplEx;->checkVZWFeaturehiddenwifi(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 851
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "wifi_state"

    const/16 v6, 0xb

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 853
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 854
    goto :goto_0

    .line 857
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.hotspotprovision.action.nativeStart"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v2, "startintent":Landroid/content/Intent;
    const-string v6, "MobileHotspotConfig"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 859
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 861
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mIsProvisioned:Z

    if-nez v6, :cond_0

    move v4, v5

    .line 862
    goto :goto_0

    .line 866
    .end local v2    # "startintent":Landroid/content/Intent;
    :cond_3
    const-string v5, "WifiServiceImplEx"

    const-string v6, "startVZWProvisionforTethering dd"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImplEx;->isVZWMobileHotspotEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 868
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.lge.hotspotprovision.action.nativeStop"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v3, "stopintent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 872
    .end local v3    # "stopintent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImplEx;->setVZWWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 878
    :cond_5
    const-string v5, "WifiServiceImplEx"

    const-string v6, "return true"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1142
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireMulticastLock pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-super {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1122
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWifiLock pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiServiceImpl;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v2

    return v2
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, -0x1

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 986
    .local v1, "uid":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "packageName":Ljava/lang/String;
    const-string v3, "WifiServiceImplEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrUpdateNetwork pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImplEx;->enforceChangePermission()V

    .line 992
    sget-boolean v3, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/DeviceManager3LMService;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return v2

    .line 997
    :cond_1
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 998
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v3, p1, v2, v4}, Lcom/lge/cappuccino/IMdm;->checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1002
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v2, :cond_3

    .line 1003
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/lge/cappuccino/IMdm;->getAllowWiFiProfileManagement(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1013
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    goto :goto_0

    .line 1007
    :cond_3
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/lge/cappuccino/IMdm;->getAllowWiFiProfileManagement(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public checkAndStartWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 529
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .line 531
    .local v0, "wifiEnabled":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 533
    .local v1, "wifiState":I
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAirPlaneModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v2, "vold.decrypt"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 538
    const-string v2, "WifiServiceImplEx"

    const-string v3, "WifiService Disable Wi-Fi on Encryption Mode 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->isWifiOnlyDevice()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    .line 547
    :cond_1
    const-string v2, "ro.lge.gons.enable"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    const-string v2, "WifiServiceImplEx"

    const-string v3, "WifiService GONS enabled and scanonly mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "wlan.lge.gons.scan.scanonly"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_2
    invoke-super {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V

    .line 555
    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v2, :cond_3

    .line 556
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->delayStartWifi(ZI)V

    .line 557
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v2}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->delayStartWifi()Z

    .line 559
    :cond_3
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 5
    .param p1, "netId"    # I

    .prologue
    .line 1062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1063
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableNetwork pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getInstance()Lcom/lge/wifi/impl/WifiExtManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    .line 1068
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    if-eqz v2, :cond_0

    .line 1069
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lge/wifi/impl/WifiExtManager;->setCallingWifiUid(I)V

    .line 1072
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->disableNetwork(I)Z

    move-result v2

    return v2
.end method

.method public disconnect()V
    .locals 5

    .prologue
    .line 955
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 956
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-super {p0}, Lcom/android/server/wifi/WifiServiceImpl;->disconnect()V

    .line 960
    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1035
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1037
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableNetwork pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disableOthers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImplEx;->enforceChangePermission()V

    .line 1043
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1044
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v2, v3, p1, v4}, Lcom/lge/cappuccino/IMdm;->checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    const/4 v2, 0x0

    .line 1056
    :goto_0
    return v2

    .line 1051
    :cond_0
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getInstance()Lcom/lge/wifi/impl/WifiExtManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    .line 1052
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 1053
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    invoke-virtual {v2, v1}, Lcom/lge/wifi/impl/WifiExtManager;->setCallingWifiUid(I)V

    .line 1056
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->enableNetwork(IZ)Z

    move-result v2

    goto :goto_0
.end method

.method public getNvMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v0, :cond_0

    .line 1278
    const-string v0, "WifiServiceImplEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNvMacAddress() at WifiServiceImplEx : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v2}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->getNvMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->getNvMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 1

    .prologue
    .line 1313
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    invoke-interface {v0}, Lcom/lge/wifi/extension/IPPPOEServiceExtension;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    .line 1317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVZWMobileHotspotSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1263
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1264
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v0

    .line 1265
    .local v0, "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    if-eqz v0, :cond_0

    .line 1266
    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiMobileHotspot;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1269
    .end local v0    # "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiNeedOn()Z
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiNeedOnE911:Z

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1100
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    const/4 v0, 0x1

    .line 1104
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isDualBandSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public isVZWMobileHotspotEnabled()Z
    .locals 2

    .prologue
    .line 1212
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1213
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v0

    .line 1214
    .local v0, "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    if-eqz v0, :cond_0

    .line 1215
    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiMobileHotspot;->isMHPEnabled()Z

    move-result v1

    .line 1218
    .end local v0    # "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reassociate()V
    .locals 5

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 976
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 977
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reassociate pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-super {p0}, Lcom/android/server/wifi/WifiServiceImpl;->reassociate()V

    .line 980
    return-void
.end method

.method public reconnect()V
    .locals 5

    .prologue
    .line 965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 966
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-super {p0}, Lcom/android/server/wifi/WifiServiceImpl;->reconnect()V

    .line 970
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 5

    .prologue
    .line 1151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1152
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseMulticastLock pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-super {p0}, Lcom/android/server/wifi/WifiServiceImpl;->releaseMulticastLock()V

    .line 1156
    return-void
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1132
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseWifiLock pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-super {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v2

    return v2
.end method

.method public removeNetwork(I)Z
    .locals 5
    .param p1, "netId"    # I

    .prologue
    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1020
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNetwork pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImplEx;->enforceChangePermission()V

    .line 1025
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1026
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/lge/cappuccino/IMdm;->getAllowWiFiProfileManagement(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    const/4 v2, 0x0

    .line 1030
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    move-result v2

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1079
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCountryCode pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-super {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->setCountryCode(Ljava/lang/String;Z)V

    .line 1083
    return-void
.end method

.method public setDLNAEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1173
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceExt:Lcom/lge/wifi/extension/IWifiServiceExtension;

    invoke-interface {v0, v1}, Lcom/lge/wifi/extension/IWifiServiceExtension;->setDlnaUsing(Z)Z

    .line 1176
    :cond_0
    return v1
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1088
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1089
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFrequencyBand pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-super {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->setFrequencyBand(IZ)V

    .line 1093
    return-void
.end method

.method public setVZWMobileHotspot(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1226
    if-eqz p1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v1

    .line 1232
    :cond_1
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1233
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v0

    .line 1234
    .local v0, "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    if-eqz v0, :cond_0

    .line 1235
    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiMobileHotspot;->disableMobileHotspot()Z

    .line 1236
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVZWWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 7
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 730
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "WifiServiceImplEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVZWWifiApEnabled pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string v3, "WifiServiceImplEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVZWWifiApEnabled enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImplEx;->enforceChangePermission()V

    .line 736
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Lcom/lge/cappuccino/IMdm;->checkDisabledTetherType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$string;->sp_block_wifi_hotspot_NORMAL:I

    invoke-interface {v3, v4}, Lcom/lge/cappuccino/IMdm;->sendToastMessageId(I)V

    .line 760
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImplEx;->checkVZWFeaturehiddenwifi(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wifi_state"

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 753
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 754
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v6, 0x2600a

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v6, v3, v4, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 756
    :cond_4
    const-string v3, "WifiServiceImplEx"

    const-string v4, "Invalid WifiConfiguration"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 7
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 675
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "packageName":Ljava/lang/String;
    const-string v4, "WifiServiceImplEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApEnabled pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImplEx;->enforceChangePermission()V

    .line 680
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/lge/cappuccino/IMdm;->checkDisabledTetherType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 684
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_block_wifi_hotspot_NORMAL:I

    invoke-interface {v2, v3}, Lcom/lge/cappuccino/IMdm;->sendToastMessageId(I)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    const-string v4, "TRF"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "AIO"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CRK"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "US"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 694
    const-string v2, "WifiServiceImplEx"

    const-string v3, "setWifiApEnabled() API is disabled!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImplEx;->startVZWProvisionforTethering(ZLandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    .line 706
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImplEx;->startATTEntitleforTethering(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-ne v4, v2, :cond_0

    .line 711
    sget-boolean v4, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tethering_blocked"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 716
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 717
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x2600a

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {v4, v5, v2, v3, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    .line 719
    :cond_7
    const-string v2, "WifiServiceImplEx"

    const-string v3, "Invalid WifiConfiguration"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 11
    .param p1, "enable"    # Z

    .prologue
    const v10, 0x1040030

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 570
    .local v4, "uid":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "WifiServiceImplEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setWifiEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", package= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", App Lable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiServiceImplEx;->getAppLable(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-boolean v6, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_0

    .line 575
    if-ne p1, v9, :cond_2

    .line 576
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v6, v5}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->setShowKTPayPopup(Z)V

    .line 581
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_scan_always_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    if-nez p1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImplEx;->disconnect()V

    .line 587
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "LGMDMWifiUIAdapter"

    invoke-interface {v6, v7, v8}, Lcom/lge/cappuccino/IMdm;->checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 591
    const-string v6, "WifiServiceImplEx"

    const-string v7, "setWifiEnabled() MDM Block"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    :goto_1
    return v5

    .line 579
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v6, v9}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->setShowKTPayPopup(Z)V

    goto :goto_0

    .line 597
    :cond_3
    sget-boolean v6, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_4

    const-string v6, "CN"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 599
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v6, p1, v4}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->isWifiAvailableInCN(ZI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 605
    :cond_4
    const-string v6, "VZW"

    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 606
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImplEx;->checkVZWFeaturehiddenwifi(Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 607
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "wifi_state"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 615
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v6, "VZW"

    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "wifi.lge.aggregation"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 616
    if-eqz p1, :cond_7

    .line 617
    const-string v6, "WifiServiceImplEx"

    const-string v7, "WIFI_AGGREGATION_START"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v6, "WifiServiceImplEx"

    const-string v7, "WifiIfaceManager.getWiFiAggregationIfaceIface "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWiFiAggregationIface()Lcom/lge/wifi/extension/IWifiAggregation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWiFiAggregationIfaceIface:Lcom/lge/wifi/extension/IWifiAggregation;

    .line 620
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWiFiAggregationIfaceIface:Lcom/lge/wifi/extension/IWifiAggregation;

    if-eqz v6, :cond_6

    .line 621
    const-string v6, "WifiServiceImplEx"

    const-string v7, "null != mWiFiAggregationIfaceIface "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWiFiAggregationIfaceIface:Lcom/lge/wifi/extension/IWifiAggregation;

    invoke-interface {v6}, Lcom/lge/wifi/extension/IWifiAggregation;->processingAggregation()V

    .line 637
    :cond_6
    :goto_2
    sget-boolean v6, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v6, :cond_8

    if-eqz p1, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v6}, Lcom/android/server/DeviceManager3LMService;->getWifiState()I

    move-result v6

    if-nez v6, :cond_8

    .line 638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 639
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v6, v10, v10, v5}, Lcom/android/server/DeviceManager3LMService;->notification(III)V

    goto/16 :goto_1

    .line 625
    :cond_7
    const-string v6, "WifiServiceImplEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI_AGGREGATION_STOP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v0, "android.wifi.intent.action.WIFI_AGGREGATION_STOP"

    .line 627
    .local v0, "WIFI_AGGREGATION_STOP":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .restart local v2    # "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 630
    :catch_0
    move-exception v6

    goto :goto_2

    .line 644
    .end local v0    # "WIFI_AGGREGATION_STOP":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    sget-boolean v6, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v6, :cond_9

    .line 645
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    if-eqz v6, :cond_c

    .line 646
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServiceInternal:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->setWifiEnabledForCA(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 655
    :cond_9
    :goto_3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useFccCerti()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 656
    if-eqz p1, :cond_b

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v5}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->hasService()Z

    move-result v5

    if-nez v5, :cond_b

    .line 657
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_country_code"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "countryCode":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 660
    const-string v1, "DC"

    .line 662
    :cond_a
    const-string v5, "DC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 663
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    sget v6, Lcom/lge/internal/R$string;->sp_wifi_unavailable_no_mobile_network_NORMAL:I

    invoke-interface {v5, v6}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->sendToastMessageId(I)V

    .line 668
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_b
    invoke-super {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    move-result v5

    goto/16 :goto_1

    .line 650
    :cond_c
    const-string v5, "WifiServiceImplEx"

    const-string v6, "mWifiServerServiceExt,mWifiServiceInternal are null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setWifiNeedOn(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1190
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mWifiNeedOnE911:Z

    .line 1191
    const/4 v0, 0x1

    return v0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 1290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1291
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPPPOE pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    if-eqz v2, :cond_0

    .line 1295
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    invoke-interface {v2, p1}, Lcom/lge/wifi/extension/IPPPOEServiceExtension;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 1297
    :cond_0
    return-void
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1162
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScan pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-super {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 1166
    return-void
.end method

.method public startWifi()V
    .locals 3

    .prologue
    .line 1109
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BELL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ssid_update_completed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    const-string v0, "WifiServiceImplEx"

    const-string v1, "Default SSID is not set yet, Therefore start wifi will be ignored until SIM detected and wifi on"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_0
    invoke-super {p0}, Lcom/android/server/wifi/WifiServiceImpl;->startWifi()V

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 5

    .prologue
    .line 1302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1303
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "WifiServiceImplEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPPPOE pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    if-eqz v2, :cond_0

    .line 1307
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImplEx;->mPPPOEServiceExt:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    invoke-interface {v2}, Lcom/lge/wifi/extension/IPPPOEServiceExtension;->stopPPPOE()V

    .line 1309
    :cond_0
    return-void
.end method
