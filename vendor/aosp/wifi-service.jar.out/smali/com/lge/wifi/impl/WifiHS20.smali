.class public Lcom/lge/wifi/impl/WifiHS20;
.super Ljava/lang/Object;
.source "WifiHS20.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiHS20;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/WifiHS20$hs20Info;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID_PASSPOINT:I = 0x3c13

.field private static final TAG:Ljava/lang/String; = "WifiHS20"

.field private static final WLAN_LGE_PASSPOINT_DEFAULT:Z


# instance fields
.field private connectHs20Bssid:Ljava/lang/String;

.field private connectHs20Operator:Ljava/lang/String;

.field private connectHs20Ssid:Ljava/lang/String;

.field private connectHs20Venue:Ljava/lang/String;

.field private connectRoamingInd:I

.field private hs20AP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/WifiHS20$hs20Info;",
            ">;"
        }
    .end annotation
.end field

.field private mLastConnectHs20Operator:Ljava/lang/String;

.field private mPasspointLayoutNotificationShown:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    const-string v1, "wlan.lge.passpoint_setting"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/lge/wifi/impl/WifiHS20;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiHS20;->mPasspointLayoutNotificationShown:Z

    .line 38
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Bssid:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Operator:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Venue:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiHS20;->mLastConnectHs20Operator:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiServerManager;->getWifiServerServiceExtIface()Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 85
    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 402
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


# virtual methods
.method public addHS20APconnecting(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    const-string v0, "WifiHS20"

    const-string v1, "[PASSPOINT] add hs20AP connecting list"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "roamingInd"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/wifi/impl/WifiHS20;->connectRoamingInd:I

    .line 159
    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    .line 160
    const-string v0, "bssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Bssid:Ljava/lang/String;

    .line 161
    const-string v0, "operator"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Operator:Ljava/lang/String;

    .line 162
    const-string v0, "venue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Venue:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public addHS20APlist(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "WifiHS20"

    const-string v1, "[PASSPOINT] add hs20AP list"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "roamingInd"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, "roamingInd":I
    const-string v0, "ssid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "hs20Ssid":Ljava/lang/String;
    const-string v0, "bssid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "hs20Bssid":Ljava/lang/String;
    const-string v0, "operator"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "hs20Operator":Ljava/lang/String;
    const-string v0, "venue"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "hs20Venue":Ljava/lang/String;
    const/4 v0, 0x3

    if-lt v3, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/lge/wifi/impl/WifiHS20;->showPasspointNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v2    # "hs20Ssid":Ljava/lang/String;
    .end local v3    # "roamingInd":I
    .end local v4    # "hs20Operator":Ljava/lang/String;
    .end local v5    # "hs20Venue":Ljava/lang/String;
    .end local v8    # "hs20Bssid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local v2    # "hs20Ssid":Ljava/lang/String;
    .restart local v3    # "roamingInd":I
    .restart local v4    # "hs20Operator":Ljava/lang/String;
    .restart local v5    # "hs20Venue":Ljava/lang/String;
    .restart local v8    # "hs20Bssid":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/lge/wifi/impl/WifiHS20$hs20Info;

    move-object v7, p0

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/lge/wifi/impl/WifiHS20$hs20Info;-><init>(Lcom/lge/wifi/impl/WifiHS20;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v6, "ap":Lcom/lge/wifi/impl/WifiHS20$hs20Info;
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearHS20APlist()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    const-string v0, "WifiHS20"

    const-string v1, "[PASSPOINT] hs20AP list is cleared"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    :cond_0
    return-void
.end method

.method public hidePasspointNotification(Landroid/content/Context;)V
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 299
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 301
    .local v1, "manager":Landroid/app/NotificationManager;
    const-string v2, "WifiHS20"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hidePasspointNotification off ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/wifi/impl/WifiHS20;->mPasspointLayoutNotificationShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiHS20;->mPasspointLayoutNotificationShown:Z

    if-ne v2, v6, :cond_0

    .line 303
    const/16 v2, 0x3c13

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 304
    iput-boolean v5, p0, Lcom/lge/wifi/impl/WifiHS20;->mPasspointLayoutNotificationShown:Z

    .line 307
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiHS20;->mLastConnectHs20Operator:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_passpoint_connection"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 312
    :try_start_0
    const-string v2, "WifiHS20"

    const-string v3, "wifi_passpoint_connection = 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_passpoint_connection"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    sget-boolean v2, Lcom/lge/wifi/impl/WifiHS20;->WLAN_LGE_PASSPOINT_DEFAULT:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_passpoint_enable"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 320
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v2}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->sendWifiPasspointEnabled()V

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public passpointNotification(Landroid/content/Context;)V
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 89
    const-string v0, "WifiHS20"

    const-string v1, "[PASSPOINT] passpointNotification: hs20AP list is checked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 94
    .local v7, "mInfo":Landroid/net/wifi/WifiInfo;
    const/4 v8, 0x0

    .line 96
    .local v8, "passpointConnected":Z
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wifi/impl/WifiHS20;->connectRoamingInd:I

    .line 98
    iput-object v9, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    .line 99
    iput-object v9, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Bssid:Ljava/lang/String;

    .line 100
    iput-object v9, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Operator:Ljava/lang/String;

    .line 101
    iput-object v9, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Venue:Ljava/lang/String;

    .line 125
    :goto_0
    return-void

    .line 105
    :cond_1
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 106
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v6, v0, :cond_2

    .line 107
    const-string v1, "WifiHS20"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hs20AP list ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") bssid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ssid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " operator="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " venue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->getVenue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, "WifiHS20"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInfo bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mInfo ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connectHs20Ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->hs20AP:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiHS20$hs20Info;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiHS20$hs20Info;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    iget v3, p0, Lcom/lge/wifi/impl/WifiHS20;->connectRoamingInd:I

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Operator:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Venue:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wifi/impl/WifiHS20;->showPasspointNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v8, 0x1

    .line 120
    .end local v6    # "i":I
    :cond_2
    if-nez v8, :cond_3

    .line 121
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiHS20;->hidePasspointNotification(Landroid/content/Context;)V

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiHS20;->clearHS20APlist()V

    .line 124
    iput-object v9, p0, Lcom/lge/wifi/impl/WifiHS20;->connectHs20Ssid:Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    .restart local v6    # "i":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method public sendHS20APBroadcast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 12
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "aggregateInfo"    # Ljava/lang/String;
    .param p3, "roamingInd"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 328
    const-string v8, "WifiHS20"

    const-string v9, "[PASSPOINT]    : sendHS20APBroadcast"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.net.wifi.HS20_AP_EVENT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x4000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    const/4 v8, 0x3

    if-ne p3, v8, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_passpoint_connection"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 334
    .local v6, "passpoint_connect":I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    .line 335
    :cond_0
    const/4 p3, 0x4

    .line 339
    .end local v6    # "passpoint_connect":I
    :cond_1
    const-string v8, "roamingInd"

    invoke-virtual {v3, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    if-eqz p2, :cond_6

    .line 341
    const-string v8, "\t"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "dataTokens":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v7, v0, v2

    .line 343
    .local v7, "token":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "nameValue":[Ljava/lang/String;
    const-string v8, "ssid"

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 345
    const-string v8, "ssid"

    aget-object v9, v5, v11

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_3
    const-string v8, "bssid"

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 349
    const-string v8, "bssid"

    aget-object v9, v5, v11

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 352
    :cond_4
    const-string v8, "operator"

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 353
    const-string v8, "operator"

    aget-object v9, v5, v11

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 356
    :cond_5
    const-string v8, "venue"

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 357
    const-string v8, "venue"

    aget-object v9, v5, v11

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 362
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_6
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 363
    return-void
.end method

.method public sendHS20TryToConnection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "aggregateInfo"    # Ljava/lang/String;
    .param p3, "roamingInd"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 366
    const-string v7, "WifiHS20"

    const-string v8, "[PASSPOINT]    : sendHS20TryToConnection"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.net.wifi.HS20_TRY_CONNECTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 370
    if-eqz p2, :cond_0

    .line 371
    const/4 v7, -0x1

    if-ne p3, v7, :cond_1

    .line 372
    const-string v7, "bssid"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :cond_0
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 398
    return-void

    .line 374
    :cond_1
    const-string v7, "roamingInd"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v7, "\t"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "dataTokens":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 377
    .local v6, "token":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "nameValue":[Ljava/lang/String;
    const-string v7, "ssid"

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 379
    const-string v7, "ssid"

    aget-object v8, v5, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_3
    const-string v7, "bssid"

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 383
    const-string v7, "bssid"

    aget-object v8, v5, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 386
    :cond_4
    const-string v7, "operator"

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 387
    const-string v7, "operator"

    aget-object v8, v5, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 390
    :cond_5
    const-string v7, "venue"

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 391
    const-string v7, "venue"

    aget-object v8, v5, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public showPasspointNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "hs20Ssid"    # Ljava/lang/String;
    .param p3, "roamingInd"    # I
    .param p4, "hs20Operator"    # Ljava/lang/String;
    .param p5, "hs20Venue"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v10, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 167
    .local v5, "manager":Landroid/app/NotificationManager;
    const/4 v6, 0x0

    .line 168
    .local v6, "notification":Landroid/app/Notification;
    const-string v10, "WifiHS20"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showPasspointNotification [mPasspointLayoutNotificationShown]  ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/lge/wifi/impl/WifiHS20;->mPasspointLayoutNotificationShown:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v8, 0x0

    .line 172
    .local v8, "operatorName":Landroid/net/wifi/WifiSsid;
    const/4 v9, 0x0

    .line 173
    .local v9, "venueName":Landroid/net/wifi/WifiSsid;
    const/4 v2, 0x0

    .line 175
    .local v2, "hs20Title":Ljava/lang/String;
    const-string v10, "null"

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p4, :cond_c

    .line 176
    :cond_0
    const-string v10, "null"

    iget-object v11, p0, Lcom/lge/wifi/impl/WifiHS20;->mLastConnectHs20Operator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/lge/wifi/impl/WifiHS20;->mLastConnectHs20Operator:Ljava/lang/String;

    if-nez v10, :cond_b

    .line 177
    :cond_1
    const-string p4, "Unknown operator"

    .line 188
    :cond_2
    :goto_0
    const-string v10, "null"

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    if-nez p5, :cond_d

    .line 189
    :cond_3
    const-string p5, "Unknown venue"

    .line 196
    :cond_4
    :goto_1
    iget-boolean v10, p0, Lcom/lge/wifi/impl/WifiHS20;->mPasspointLayoutNotificationShown:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x3

    move/from16 v0, p3

    if-lt v0, v10, :cond_9

    .line 197
    :cond_5
    const-string v10, "SKT"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "KT"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 199
    :cond_6
    const-string v10, "SKT"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 200
    sget v3, Lcom/lge/internal/R$drawable;->indi_notify_home_ap_skt:I

    .line 204
    .local v3, "iconRes":I
    :goto_2
    const/4 v7, -0x2

    .line 206
    .local v7, "notifyPriority":I
    const/4 v10, 0x2

    move/from16 v0, p3

    if-eq v0, v10, :cond_7

    const/4 v10, 0x4

    move/from16 v0, p3

    if-ne v0, v10, :cond_10

    .line 207
    :cond_7
    const-string v10, "SKT"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 208
    sget v3, Lcom/lge/internal/R$drawable;->indi_notify_roaming_ap_skt:I

    .line 212
    :goto_3
    const/4 v7, 0x0

    .line 221
    :cond_8
    :goto_4
    const-string v10, "Unknown venue"

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    :goto_5
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    sget v12, Lcom/lge/internal/R$string;->sp_passpoint_connected_notification_message:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p4, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v10}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v6

    .line 251
    :goto_6
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v10, 0x4000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.Settings$AdvancedWifiSettingsActivity"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-static/range {p1 .. p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 258
    iget v10, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 259
    const/16 v10, 0x3c13

    invoke-virtual {v5, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 260
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lge/wifi/impl/WifiHS20;->mPasspointLayoutNotificationShown:Z

    .line 263
    .end local v3    # "iconRes":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "notifyPriority":I
    :cond_9
    packed-switch p3, :pswitch_data_0

    .line 277
    const-string v10, "WifiHS20"

    const-string v11, "wifi_passpoint_connection = 2 (roaming)"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_7
    if-lez p3, :cond_17

    .line 284
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_passpoint_connection"

    move/from16 v0, p3

    invoke-static {v10, v11, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_8
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    if-eqz v10, :cond_a

    .line 293
    iget-object v10, p0, Lcom/lge/wifi/impl/WifiHS20;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    invoke-interface {v10}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->sendWifiPasspointEnabled()V

    .line 296
    :cond_a
    :goto_9
    return-void

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->mLastConnectHs20Operator:Ljava/lang/String;

    move-object/from16 p4, v0

    goto/16 :goto_0

    .line 182
    :cond_c
    invoke-static/range {p4 .. p4}, Landroid/net/wifi/WifiSsidEx;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v8

    .line 183
    if-eqz v8, :cond_2

    .line 184
    invoke-virtual {v8}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object p4

    .line 185
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiHS20;->mLastConnectHs20Operator:Ljava/lang/String;

    goto/16 :goto_0

    .line 191
    :cond_d
    invoke-static/range {p5 .. p5}, Landroid/net/wifi/WifiSsidEx;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v9

    .line 192
    if-eqz v9, :cond_4

    .line 193
    invoke-virtual {v9}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    .line 202
    :cond_e
    sget v3, Lcom/lge/internal/R$drawable;->wifi_passpoint_home:I

    .restart local v3    # "iconRes":I
    goto/16 :goto_2

    .line 210
    .restart local v7    # "notifyPriority":I
    :cond_f
    sget v3, Lcom/lge/internal/R$drawable;->wifi_passpoint_roaming:I

    goto/16 :goto_3

    .line 213
    :cond_10
    if-nez p3, :cond_8

    .line 214
    const-string v10, "SKT"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 215
    sget v3, Lcom/lge/internal/R$drawable;->indi_notify_roaming_ap_skt:I

    .line 219
    :goto_a
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 217
    :cond_11
    sget v3, Lcom/lge/internal/R$drawable;->wifi_passpoint_roaming:I

    goto :goto_a

    .line 224
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 234
    .end local v3    # "iconRes":I
    .end local v7    # "notifyPriority":I
    :cond_13
    sget v3, Lcom/lge/internal/R$drawable;->wifi_passpoint_home:I

    .line 235
    .restart local v3    # "iconRes":I
    const/4 v7, 0x2

    .line 236
    .restart local v7    # "notifyPriority":I
    const/4 v10, 0x2

    move/from16 v0, p3

    if-eq v0, v10, :cond_14

    const/4 v10, 0x4

    move/from16 v0, p3

    if-ne v0, v10, :cond_16

    .line 237
    :cond_14
    sget v3, Lcom/lge/internal/R$drawable;->wifi_passpoint_roaming:I

    .line 243
    :cond_15
    :goto_b
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " connected via passpoint"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const-string v12, "Touch to set up."

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v10}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v6

    goto/16 :goto_6

    .line 239
    :cond_16
    if-nez p3, :cond_15

    .line 240
    sget v3, Lcom/lge/internal/R$drawable;->wifi_passpoint_roaming:I

    goto :goto_b

    .line 265
    .end local v3    # "iconRes":I
    .end local v7    # "notifyPriority":I
    :pswitch_0
    const-string v10, "WifiHS20"

    const-string v11, "wifi_passpoint_connection = 1 (homeAP)"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 268
    :pswitch_1
    const-string v10, "WifiHS20"

    const-string v11, "wifi_passpoint_connection = 2 (roamingAP)"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 271
    :pswitch_2
    const-string v10, "WifiHS20"

    const-string v11, "wifi_passpoint_connection = 3 (L2roaming_homeAP)"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 274
    :pswitch_3
    const-string v10, "WifiHS20"

    const-string v11, "wifi_passpoint_connection = 4 (L2roaming_roamingAP)"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 286
    :cond_17
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_passpoint_connection"

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_9

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
