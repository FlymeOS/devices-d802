.class public Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
.super Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;
.source "WiFiAggregationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$WifiServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_AGGREGATION_CLEAR:Ljava/lang/String; = "com.android.settings.wifi.action.Clear"

.field public static final ACTION_AGGREGATION_CLICK:Ljava/lang/String; = "com.android.settings.wifi.action.ClickAP"

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final WIFI_AGGREGATION_START:Ljava/lang/String; = "android.wifi.intent.action.WIFI_AGGREGATION_START"

.field private static final WIFI_AGGREGATION_STOP:Ljava/lang/String; = "android.wifi.intent.action.WIFI_AGGREGATION_STOP"

.field private static final WIFI_AGGREGATION_VZWAP:Ljava/lang/String; = "VerizonWiFi"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiaggregationaddOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;-><init>()V

    .line 53
    const-string v0, "WiFiAggregation"

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->TAG:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 118
    new-instance v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$1;-><init>(Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private connectToWifi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "knownSSID"    # Ljava/lang/String;

    .prologue
    .line 646
    const-string v1, "WiFiAggregation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToWifi :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 648
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 649
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 650
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->connectToWifiWithConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1
.end method

.method private connectToWifiWithConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 661
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 663
    .local v0, "ssid":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 664
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToWifiWithConfiguration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 667
    const-string v2, "WiFiAggregation"

    const-string v3, "Wifi is not enabled, return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 669
    const/4 v1, 0x0

    .line 674
    :goto_0
    return v1

    .line 672
    :cond_0
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 697
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

.method private destroy()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "WiFiAggregation"

    const-string v1, "destroy destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 517
    return-void
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 459
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    .line 461
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    const/4 v0, 0x2

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    const/4 v0, 0x3

    goto :goto_0

    .line 466
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

    .line 470
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 473
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

    .line 475
    goto :goto_0

    .line 477
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string v8, "WiFiAggregation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleEvent :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wi_fi_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 157
    .local v6, "noti":I
    if-nez v6, :cond_1

    .line 158
    const-string v8, "WiFiAggregation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notification is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 160
    iput-boolean v11, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->isAutoDetectionAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateAPState()V

    goto :goto_0

    .line 169
    :cond_2
    const-string v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 170
    const-string v8, "WiFiAggregation"

    const-string v9, "SUPPLICANT_STATE_CHANGED_ACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v8, "newState"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    .line 173
    .local v5, "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    if-eqz v5, :cond_3

    .line 174
    sget-object v8, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v8, v5, :cond_0

    sget-object v8, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v8, v5, :cond_0

    .line 176
    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 181
    :cond_3
    const-string v8, "WiFiAggregation"

    const-string v9, "[AggregationService],SUPPLICANT_STATE_CHANGED_ACTION null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v5    # "new_supplicant_state":Landroid/net/wifi/SupplicantState;
    :cond_4
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 185
    const-string v8, "WiFiAggregation"

    const-string v9, "NETWORK_STATE_CHANGED_ACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 188
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_6

    .line 189
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_5

    .line 190
    const-string v8, "WiFiAggregation"

    const-string v9, "NetworkInfo.State.CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v8, "wifiInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiInfo;

    .line 193
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_5

    .line 194
    const-string v8, "WiFiAggregation"

    const-string v9, "null != wifiInfo"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "connectedSsid":Ljava/lang/String;
    const-string v8, "WiFiAggregation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connectedSsid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v1, :cond_5

    .line 201
    invoke-static {v1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "VerizonWiFi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 202
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.lge.wifi.impl.aggregation.start"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v3, "in":Landroid/content/Intent;
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 204
    const-string v8, "WiFiAggregation"

    const-string v9, "sendBroadcast WIFI_AGGREGATION_SERVER_START"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1    # "connectedSsid":Ljava/lang/String;
    .end local v3    # "in":Landroid/content/Intent;
    .end local v7    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 213
    :cond_6
    const-string v8, "WiFiAggregation"

    const-string v9, "[AggregationService],NETWORK_STATE_CHANGED_ACTION null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v8, "android.wifi.intent.action.WIFI_AGGREGATION_START"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 217
    const-string v8, "WiFiAggregation"

    const-string v9, "WIFI_AGGREGATION_START"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 220
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 223
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_8
    const-string v8, "android.wifi.intent.action.WIFI_AGGREGATION_STOP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 224
    const-string v8, "WiFiAggregation"

    const-string v9, "WIFI_AGGREGATION_STOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 227
    iput-boolean v11, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto/16 :goto_0

    .line 228
    :cond_9
    const-string v8, "com.android.settings.wifi.action.ClickAP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 229
    const-string v8, "WiFiAggregation"

    const-string v9, "ACTION_AGGREGATION_CLICK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->disconnectAP()Z

    .line 231
    const-string v8, "VerizonWiFi"

    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->connectToWifi(Ljava/lang/String;)Z

    .line 233
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 234
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto/16 :goto_0

    .line 245
    :cond_a
    const-string v8, "com.android.settings.wifi.action.Clear"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 246
    const-string v8, "WiFiAggregation"

    const-string v9, "ACTION_AGGREGATION_CLEAR"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v8, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WIFI_AGGREGATION"

    sget v10, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 249
    iput-boolean v11, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto/16 :goto_0

    .line 258
    :cond_b
    const-string v8, "com.lge.wifi.impl.aggregation.end"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 259
    const-string v8, "WiFiAggregation"

    const-string v9, "WIFI_AGGREGATION_SERVER_END"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, v8}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationaddOnOffNotification(Z)V

    .line 262
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationShowResult(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private isAutoDetectionAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 547
    const/4 v0, 0x0

    .line 549
    .local v0, "bResult":Z
    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connect_vzw_ap"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 552
    const-string v1, "WiFiAggregation"

    const-string v2, "isAutoDetectionAvailable true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v0, 0x1

    .line 555
    :cond_0
    return v0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 482
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

    .line 484
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 486
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private updateAPState()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 326
    const-string v7, "WiFiAggregation"

    const-string v8, "[NEZZIMOM], updateAPState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v7, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v7, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 340
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_a

    .line 341
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Profiled AP exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 343
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 344
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NEZZIMOM], WifiConfiguration :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v7, :cond_3

    .line 348
    const/4 v7, 0x2

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 352
    :cond_0
    :goto_1
    if-eqz v6, :cond_9

    .line 353
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 355
    .local v5, "result":Landroid/net/wifi/ScanResult;
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NEZZIMOM], scan result SSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v0, :cond_5

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 367
    invoke-virtual {p0, v0, v5}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 368
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v8, "VerizonWiFi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---------result ssid 1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v7, 0x1

    :try_start_0
    invoke-direct {p0, v7}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationaddOnOffNotification(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    :goto_3
    return-void

    .line 349
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v7, v10, :cond_0

    .line 350
    const/4 v7, 0x0

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 385
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "result":Landroid/net/wifi/ScanResult;
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 396
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---------result ssid 2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 399
    :cond_5
    if-nez v0, :cond_6

    .line 400
    const-string v7, "WiFiAggregation"

    const-string v8, "[NEZZIMOM], config is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_4
    const-string v7, "WiFiAggregation"

    const-string v8, "--------- config or config.SSID is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 401
    :cond_6
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 402
    const-string v7, "WiFiAggregation"

    const-string v8, "[NEZZIMOM], config.ssid is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 404
    :cond_7
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NEZZIMOM], config:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 409
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_8
    const-string v7, "WiFiAggregation"

    const-string v8, "[NEZZIMOM], not find any configured APs in for-loop "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 411
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v7, "WiFiAggregation"

    const-string v8, "[NEZZIMOM], scan result is null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    if-eqz v6, :cond_2

    .line 418
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 420
    .restart local v5    # "result":Landroid/net/wifi/ScanResult;
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "[IBSS]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 425
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v8, "VerizonWiFi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 428
    const-string v7, "WiFiAggregation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---------result ssid 3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v7, 0x1

    :try_start_1
    invoke-direct {p0, v7}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->wifiaggregationaddOnOffNotification(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 433
    :catch_1
    move-exception v2

    .line 434
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 271
    const-string v0, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConnectionState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    .line 274
    const-string v0, "WiFiAggregation"

    const-string v1, "OBTAINING_IPADDR PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2

    .line 285
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    :goto_1
    return-void

    .line 276
    :cond_1
    const-string v0, "WiFiAggregation"

    const-string v1, "ELSE RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    .line 287
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState SCANNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 289
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_5

    .line 291
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState AUTHENTICATING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    .line 293
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState OBTAINING_IPADDR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_7

    .line 295
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WIFI_AGGREGATION"

    sget v2, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 298
    iput-boolean v3, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto :goto_1

    .line 299
    :cond_7
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_8

    .line 300
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState CAPTIVE_PORTAL_CHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WIFI_AGGREGATION"

    sget v2, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 303
    iput-boolean v3, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    goto :goto_1

    .line 304
    :cond_8
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_9

    .line 305
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState SUSPENDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_9
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_a

    .line 307
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState DISCONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    :cond_a
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_b

    .line 309
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 310
    :cond_b
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 311
    const-string v0, "WiFiAggregation"

    const-string v1, "updateConnectionState FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 317
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 322
    :cond_0
    const-string v0, "WiFiAggregation"

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

    .line 323
    return-void
.end method

.method private wifiaggregationShowResult(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0xfa0

    .line 560
    const-string v2, "aggregation_result"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "sExtra":Ljava/lang/String;
    const-string v2, "WiFiAggregation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiaggregationShowResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-eqz v1, :cond_0

    .line 563
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    const-string v0, "VerizonWiFi"

    .line 565
    .local v0, "ap_name":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 574
    .end local v0    # "ap_name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    const-string v3, "Failed to connect to Wi-Fi"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private wifiaggregationaddOnOffNotification(Z)V
    .locals 8
    .param p1, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 577
    const/4 v2, 0x0

    .line 580
    .local v2, "notification":Landroid/app/Notification;
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->isAutoDetectionAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 638
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 585
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_1

    .line 587
    const-string v4, "WiFiAggregation"

    const-string v5, "AP is connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 589
    .local v3, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_1

    .line 591
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VerizonWiFi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 593
    const-string v4, "WiFiAggregation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AP ssid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    .end local v3    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    iget-boolean v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    if-ne v4, v6, :cond_2

    .line 600
    const-string v4, "WiFiAggregation"

    const-string v5, "mWifiaggregationaddOn ==true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_2
    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 606
    iput-boolean v6, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 607
    new-instance v2, Landroid/app/Notification;

    .end local v2    # "notification":Landroid/app/Notification;
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 609
    .restart local v2    # "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_aggregation_audio"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 614
    :cond_3
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_aggregation_vibration"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 620
    :cond_4
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.wifi.action.ClickAP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v7, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 623
    .local v0, "contentintentclick":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 624
    sget v4, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 625
    const/4 v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 626
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 627
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    sget v6, Lcom/lge/internal/R$string;->sp_vzw_network_avail_NORMAL:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$string;->sp_tapto_connectto_wifi_NOTMAL:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 630
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "WIFI_AGGREGATION"

    sget v6, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 634
    .end local v0    # "contentintentclick":Landroid/app/PendingIntent;
    :cond_5
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "WIFI_AGGREGATION"

    sget v6, Lcom/lge/internal/R$drawable;->stat_notify_vzw_ap:I

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 635
    iput-boolean v7, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiaggregationaddOn:Z

    .line 636
    const-string v4, "WiFiAggregation"

    const-string v5, "wifiaggregationaddOnOffNotification cancel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public disconnectAP()Z
    .locals 7

    .prologue
    .line 679
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 680
    .local v3, "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_1

    .line 682
    const-string v4, "WiFiAggregation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size of wifiConfigList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 684
    .local v2, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WiFiAggregation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove wifi configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget v1, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 687
    .local v1, "netId":I
    iget-object v4, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/WifiManager;->disable(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 689
    .end local v1    # "netId":I
    .end local v2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    const/4 v4, 0x1

    .line 691
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public enable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    .line 523
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.wifi.intent.action.WIFI_AGGREGATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.wifi.intent.action.WIFI_AGGREGATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.wifi.action.ClickAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.wifi.action.Clear"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.wifi.impl.aggregation.end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 538
    const-string v0, "WiFiAggregation"

    const-string v1, "enable enable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->isAutoDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->destroy()V

    .line 507
    invoke-super {p0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;->finalize()V

    .line 509
    return-void
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 128
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation] WiFiAggregationService Init!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation init ] mWifiManager.initialize!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 137
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation init] mConnectivityManager!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 143
    const-string v0, "WiFiAggregation"

    const-string v1, "[Aggregation init] mNotificationManager!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 442
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {p2}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 444
    iget v2, p2, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mRssi:I

    .line 447
    :cond_0
    iget v2, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->mRssi:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 448
    const-string v1, "WiFiAggregation"

    const-string v2, "out of range"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return v0

    .line 450
    :cond_1
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v2, v1, :cond_2

    .line 451
    const-string v1, "WiFiAggregation"

    const-string v2, "wificonfiguration disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 454
    goto :goto_0
.end method
