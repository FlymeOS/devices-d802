.class public Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;
.super Ljava/lang/Object;
.source "WifiHostapdWrapperBcm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$2;
    }
.end annotation


# static fields
.field private static final HOSTAPD_ACCEPT_MAC_FILE:Ljava/lang/String; = "/data/misc/wifi/hostapd.accept"

.field private static final HOSTAPD_DENY_MAC_FILE:Ljava/lang/String; = "/data/misc/wifi/hostapd.deny"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiHostapdWrapperBcm"


# instance fields
.field private mAuthenticationMode:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mIsSetAuthenticationCalled:Z

.field private final mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

.field private final mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mhpNotiReceiver"    # Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;-><init>(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    .line 182
    iput-boolean v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    .line 183
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    .line 184
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    .line 186
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "AndroidAP"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 187
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiHostapdWrapperBcm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 190
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->registerBroadcastReceiver()V

    .line 191
    return-void
.end method

.method private SetEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z
    .locals 8
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 1319
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1320
    .local v3, "encModeWpa":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1322
    .local v2, "encModeRsn":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v5, p2, :cond_3

    .line 1323
    move-object v3, p1

    .line 1331
    :goto_0
    const/4 v4, 0x0

    .line 1332
    .local v4, "pairwise":Ljava/lang/String;
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v5, p1, :cond_5

    .line 1333
    const-string v4, "NO_ENCRYPTION"

    .line 1341
    :goto_1
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_encryption"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1343
    if-eqz v4, :cond_2

    .line 1344
    const/4 v0, 0x0

    .line 1345
    .local v0, "enc1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1346
    .local v1, "enc2":Ljava/lang/String;
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-eq v5, v3, :cond_0

    .line 1347
    const-string v0, "WPA"

    .line 1348
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_protocol"

    const-string v7, "WPA"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1351
    :cond_0
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-eq v5, v2, :cond_1

    .line 1352
    const-string v1, "RSN"

    .line 1353
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_protocol"

    const-string v7, "RSN"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1356
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1357
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mhs_protocol"

    const-string v7, "WPA RSN"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1363
    .end local v0    # "enc1":Ljava/lang/String;
    .end local v1    # "enc2":Ljava/lang/String;
    :cond_2
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetEncryptionMode:encModeWpa : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetEncryptionMode:encModeRsn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const/4 v5, 0x1

    return v5

    .line 1324
    .end local v4    # "pairwise":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v5, p2, :cond_4

    .line 1325
    move-object v2, p1

    goto/16 :goto_0

    .line 1327
    :cond_4
    move-object v3, p1

    .line 1328
    move-object v2, p1

    goto/16 :goto_0

    .line 1334
    .restart local v4    # "pairwise":Ljava/lang/String;
    :cond_5
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v5, p1, :cond_6

    .line 1335
    const-string v4, "TKIP"

    goto/16 :goto_1

    .line 1336
    :cond_6
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v5, p1, :cond_7

    .line 1337
    const-string v4, "CCMP"

    goto/16 :goto_1

    .line 1339
    :cond_7
    const-string v4, "TKIP CCMP"

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    return-object v0
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertToWifiCfgWepKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    .local v0, "length":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    .end local p1    # "wepKey":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 212
    .restart local p1    # "wepKey":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 213
    :cond_2
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 215
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1305
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.wifi.sap.ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    const-string v1, "com.lge.wifi.sap.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1308
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1309
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1310
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1311
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1313
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1315
    return-void
.end method

.method private setWifiCfgHidden(Z)V
    .locals 1
    .param p1, "bHidden"    # Z

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1370
    return-void
.end method

.method private setWifiCfgSecurity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z
    .locals 3
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .param p3, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    .line 1377
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "OPEN"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1390
    :goto_0
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSapSecurityMode secMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v0, 0x1

    return v0

    .line 1379
    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WEP"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1381
    :cond_1
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_2

    .line 1382
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WPA_PSK"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1383
    :cond_2
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v0, p2, :cond_3

    .line 1384
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WPA2_PSK"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1386
    :cond_3
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_security"

    const-string v2, "WPA_WPA2_MIXED"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setWifiCfgSsid(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1399
    return-void
.end method

.method private setWifiCfgWepKey(ILjava/lang/String;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1402
    invoke-direct {p0, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->convertToWifiCfgWepKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "convertedWepKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v0, v1, p1

    .line 1404
    const/4 v1, 0x1

    return v1
.end method

.method private setWifiCfgWepKeyIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1409
    return-void
.end method

.method private setWifiCfgWpaKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "wpaKey"    # Ljava/lang/String;

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1413
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1425
    return-void
.end method


# virtual methods
.method public WifiSapAutModeCovertToVZWConfig(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)I
    .locals 2
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .prologue
    const/4 v0, 0x0

    .line 1430
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne p1, v1, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return v0

    .line 1433
    :cond_1
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne p1, v1, :cond_2

    .line 1434
    const/4 v0, 0x1

    goto :goto_0

    .line 1436
    :cond_2
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne p1, v1, :cond_0

    .line 1437
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public WifiSapEncryptionModeCovertToVZWConfig(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)I
    .locals 2
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    const/4 v0, 0x0

    .line 1446
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return v0

    .line 1449
    :cond_1
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_2

    .line 1450
    const/4 v0, 0x1

    goto :goto_0

    .line 1452
    :cond_2
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_3

    .line 1453
    const/4 v0, 0x2

    goto :goto_0

    .line 1455
    :cond_3
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne p1, v1, :cond_0

    .line 1456
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public WifiSapSecurityModeCovertToVZWConfig(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)I
    .locals 2
    .param p1, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    const/4 v0, 0x0

    .line 1465
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return v0

    .line 1468
    :cond_1
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_2

    .line 1469
    const/4 v0, 0x1

    goto :goto_0

    .line 1471
    :cond_2
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_3

    .line 1472
    const/4 v0, 0x2

    goto :goto_0

    .line 1474
    :cond_3
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_4

    .line 1475
    const/4 v0, 0x3

    goto :goto_0

    .line 1477
    :cond_4
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne p1, v1, :cond_0

    .line 1478
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public WifiVZWConfigCovertToSapAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .locals 4

    .prologue
    .line 1487
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1489
    .local v1, "mSapAuthMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_authentication"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1492
    const-string v2, "auth_none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1493
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1504
    :cond_0
    :goto_0
    return-object v1

    .line 1494
    :cond_1
    const-string v2, "auth_shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1495
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    goto :goto_0

    .line 1496
    :cond_2
    const-string v2, "wpa_psk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1497
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    goto :goto_0

    .line 1498
    :cond_3
    const-string v2, "wpa_psk2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1499
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    goto :goto_0

    .line 1500
    :cond_4
    const-string v2, "wpa_wpa2_mixed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1501
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    goto :goto_0
.end method

.method public WifiVZWConfigCovertToSapEncryptionMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .locals 4

    .prologue
    .line 1509
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1511
    .local v1, "mSapEncryptionMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_encryption"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, "enc":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1514
    const-string v2, "NO_ENCRYPTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1515
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1526
    :cond_0
    :goto_0
    return-object v1

    .line 1516
    :cond_1
    const-string v2, "TKIP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1517
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto :goto_0

    .line 1518
    :cond_2
    const-string v2, "CCMP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1519
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto :goto_0

    .line 1520
    :cond_3
    const-string v2, "TKIP CCMP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1521
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto :goto_0

    .line 1523
    :cond_4
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto :goto_0
.end method

.method public WifiVZWConfigCovertToSapSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .locals 4

    .prologue
    .line 1531
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1533
    .local v0, "mSapSecurityMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_security"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1535
    .local v1, "sec":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1536
    const-string v2, "NO_SECURITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1537
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1551
    :cond_0
    :goto_0
    return-object v0

    .line 1538
    :cond_1
    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1539
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    goto :goto_0

    .line 1540
    :cond_2
    const-string v2, "WPA_PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1541
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    goto :goto_0

    .line 1542
    :cond_3
    const-string v2, "WPA2_PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1543
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    goto :goto_0

    .line 1544
    :cond_4
    const-string v2, "WPA_WPA2_MIXED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1545
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    goto :goto_0

    .line 1547
    :cond_5
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    goto :goto_0
.end method

.method public closeSoftAP()I
    .locals 2

    .prologue
    .line 195
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "closeSoftAP : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public createSoftAP()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 220
    const-string v1, "WifiHostapdWrapperBcm"

    const-string v2, "createSoftAP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 224
    const-string v1, "WifiHostapdWrapperBcm"

    const-string v2, "mWifiManager setWifiAPEnabledr"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->enableSoftAp(Z)Z

    move-result v1

    if-eq v3, v1, :cond_0

    .line 233
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public destroySoftAP()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    const-string v1, "WifiHostapdWrapperBcm"

    const-string v2, "destroySoftAP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "WifiHostapdWrapperBcm"

    const-string v2, "mWifiManager setWifiApEnabledr"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 244
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->enableSoftAp(Z)Z

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->enableSoftAp(Z)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 255
    :cond_2
    const/4 v0, -0x1

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
    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->unregisterBroadcastReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 266
    return-void

    .line 264
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isEnabledSoftAp()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getSoftApStatus()Z

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadP2PDriver()I
    .locals 2

    .prologue
    .line 285
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "loadP2PDriver : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public openSoftAP()I
    .locals 2

    .prologue
    .line 293
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "openSoftAP : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public p2pAddMacFilterAllowList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->addMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pAddMacFilterDenyList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->addMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pDeAuthMac(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setDisassociateStation(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pGetAllAssocMac()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAllAssocMacList()[Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pGetAllAssocMacVZW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAllAssocMacListVZW()Ljava/util/List;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pGetAllow11B()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mhs_hw_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "sReturnVal":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mhs_ieee_80211n"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 341
    .local v0, "ieee_mode":I
    const-string v4, "b"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    :goto_0
    return v2

    .line 344
    :cond_0
    const-string v2, "g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    const-string v2, "g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_2

    .line 348
    const/4 v2, 0x2

    goto :goto_0

    .line 351
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public p2pGetAssocListCount()I
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pGetAssocListCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAssoStaMacListCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAssoStaMacListCount()I

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pGetAuthentication()I
    .locals 6

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v0

    .line 367
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v2

    .line 368
    .local v2, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapEncryptionMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v1

    .line 371
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetAuthentication authMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetAuthentication secMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetAuthentication encMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v3, v0, :cond_2

    .line 376
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-eq v3, v2, :cond_0

    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_1

    .line 381
    :cond_0
    const/4 v3, 0x1

    .line 416
    :goto_0
    return v3

    .line 383
    :cond_1
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetAuthentication : unkown sec mode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 385
    :cond_2
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v3, v0, :cond_6

    .line 389
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_3

    .line 393
    const/4 v3, 0x4

    goto :goto_0

    .line 395
    :cond_3
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_4

    .line 399
    const/16 v3, 0x80

    goto :goto_0

    .line 401
    :cond_4
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_5

    .line 406
    const/4 v3, 0x2

    goto :goto_0

    .line 408
    :cond_5
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetAuthentication : unkown sec mode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    :cond_6
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetAuthentication : unkown auth mode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public p2pGetCountryCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_country"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 424
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCountryCode  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    const-string v2, "FR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public p2pGetEncryption()I
    .locals 6

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v0

    .line 443
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v2

    .line 444
    .local v2, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->WifiVZWConfigCovertToSapEncryptionMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v1

    .line 447
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetEncryption authMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetEncryption secMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetEncryption encMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_0

    .line 456
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapSecurityMode.NO_SECURITY:0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v3, 0x0

    .line 489
    :goto_0
    return v3

    .line 459
    :cond_0
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v3, v2, :cond_1

    .line 464
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapSecurityMode.WEP:3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v3, 0x3

    goto :goto_0

    .line 468
    :cond_1
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v3, v1, :cond_2

    .line 473
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapEncryptionMode.TKIP:2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v3, 0x2

    goto :goto_0

    .line 476
    :cond_2
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v3, v1, :cond_3

    .line 481
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "p2pGetEncryption WifiSapEncryptionMode.CCMP:4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v3, 0x4

    goto :goto_0

    .line 485
    :cond_3
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pGetEncryption : unkown enc mode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public p2pGetFrequency()I
    .locals 4

    .prologue
    .line 600
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_frequency"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 601
    .local v0, "sReturnVal":I
    return v0
.end method

.method public p2pGetHideSSID()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 494
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 496
    .local v0, "sReturnVal":Z
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pGetHideSSID  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    if-ne v1, v0, :cond_0

    .line 501
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public p2pGetMacFilterByIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "iIndex"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pGetMacFilterCount()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterCount()I

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pGetMacFilterMode()I
    .locals 5

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 522
    .local v1, "macFilterModeP":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    move-result-object v1

    .line 526
    :cond_0
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "p2pGetMacFilterMode ()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-eqz v1, :cond_2

    .line 529
    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->getFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v0

    .line 530
    .local v0, "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pGetMacFilterMode ():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v2, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$2;->$SwitchMap$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode:[I

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 553
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pGetMacFilterMode not supported ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :goto_0
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "p2pGetMacFilterMode (): return -1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 536
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 537
    const/4 v2, 0x0

    goto :goto_1

    .line 542
    :cond_1
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pGetMacFilterMode : ACCEPT_UNLESS_IN_DENY_LIST ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v2, 0x2

    goto :goto_1

    .line 549
    :pswitch_1
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pGetMacFilterMode : DENY_LIST ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x1

    goto :goto_1

    .line 557
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :cond_2
    const-string v2, "WifiHostapdWrapperBcm"

    const-string v3, "p2pGetMacFilterMode macFilterModeP is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public p2pGetMaxClients()I
    .locals 4

    .prologue
    .line 565
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_max_client"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 567
    .local v0, "sReturnVal":I
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pGetMaxClients  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return v0
.end method

.method public p2pGetSSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 606
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 608
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 610
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pGetSSID : not supported ssid length ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    const/4 v0, 0x0

    .end local v0    # "sReturnVal":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 612
    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_1
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pGetSSID :  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public p2pGetSocialChannel()I
    .locals 4

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_2g_channel"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 582
    .local v0, "sReturnVal":I
    :goto_0
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pGetSocialChannel  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v0

    .line 579
    .end local v0    # "sReturnVal":I
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_5g_channel"

    const/16 v3, 0x95

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "sReturnVal":I
    goto :goto_0
.end method

.method public p2pGetSoftapIsolation()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_isolated"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 590
    .local v0, "sReturnVal":I
    if-eqz v0, :cond_0

    .line 591
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pGetSoftapIsolation isolated ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v1, 0x1

    .line 595
    :goto_0
    return v1

    .line 594
    :cond_0
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pGetSoftapIsolation not isolated ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public p2pGetWEPIndex()I
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 622
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pGetWEPIndex  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 625
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pGetWEPKey1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [0]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 638
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pGetWEPKey2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [1]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 651
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pGetWEPKey3()Ljava/lang/String;
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 661
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [2]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 664
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pGetWEPKey4()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 674
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "p2pGetWEPKey  [3]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 677
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pGetWPAKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pGetWPAKey  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 686
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pMacFilterremoveAllowedList(Ljava/lang/String;)I
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 705
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pMacFilterremoveAllowedList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->MacFilterremoveAllowedList(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 712
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pMacFilterremoveDeniedList(Ljava/lang/String;)I
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 718
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pMacFilterremoveDeniedList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->MacFilterremoveDeniedList(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 725
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pMacaddracl(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 691
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pMacaddracl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_mac_acl"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacaddracl(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 698
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetAllow11B(I)I
    .locals 5
    .param p1, "iCommand"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 744
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetAllow11B: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v1

    if-nez v1, :cond_0

    .line 747
    packed-switch p1, :pswitch_data_0

    .line 780
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetAllow11B unknown param ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v0, -0x1

    .line 786
    :goto_0
    return v0

    .line 753
    :pswitch_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "b"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 754
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 761
    :pswitch_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "g"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 762
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 769
    :pswitch_2
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "g"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_hw_mode"

    const-string v3, "a"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 785
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_ieee_80211n"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public p2pSetAuthentication(I)I
    .locals 3
    .param p1, "iCommand"    # I

    .prologue
    const/4 v1, 0x1

    .line 806
    if-eq v1, p1, :cond_0

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x80

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 811
    :cond_0
    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    .line 812
    iput p1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    .line 814
    sparse-switch p1, :sswitch_data_0

    .line 830
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_wpa2_mixed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 833
    :goto_0
    const/4 v0, 0x0

    .line 837
    :goto_1
    return v0

    .line 816
    :sswitch_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "auth_none"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 819
    :sswitch_1
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "auth_shared"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 822
    :sswitch_2
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_psk"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 824
    :sswitch_3
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_psk2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 827
    :sswitch_4
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_authentication"

    const-string v2, "wpa_wpa2_mixed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 835
    :cond_1
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetAuthentication unknown auth mode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, -0x1

    goto :goto_1

    .line 814
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public p2pSetCountryCode(I)I
    .locals 4
    .param p1, "iCommand"    # I

    .prologue
    const/4 v1, -0x1

    .line 846
    if-nez p1, :cond_1

    .line 847
    const-string v0, "US"

    .line 853
    .local v0, "countryCode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 854
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_country"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 855
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetCountryCode : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v1, 0x0

    .line 858
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_0
    return v1

    .line 848
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 849
    const-string v0, "FR"

    .restart local v0    # "countryCode":Ljava/lang/String;
    goto :goto_0
.end method

.method public p2pSetEncryption(I)I
    .locals 10
    .param p1, "iCommand"    # I

    .prologue
    const/16 v9, 0x80

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x4

    const/4 v4, -0x1

    .line 867
    iget-boolean v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    if-nez v6, :cond_1

    .line 868
    const-string v5, "WifiHostapdWrapperBcm"

    const-string v6, "p2pSetEncryption : call p2pSetAuthentication() first"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    :goto_0
    return v4

    .line 871
    :cond_1
    iput-boolean v5, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mIsSetAuthenticationCalled:Z

    .line 873
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 874
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 875
    .local v3, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 877
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    packed-switch p1, :pswitch_data_0

    .line 969
    :pswitch_0
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2pSetEncryption : unkown enc mode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 881
    :pswitch_1
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v7, v6, :cond_3

    .line 882
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 883
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 884
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 887
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 888
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 889
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v2

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 892
    .end local v2    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 974
    :goto_2
    const-string v6, "WifiHostapdWrapperBcm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p2pSetEncryption authMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-string v6, "WifiHostapdWrapperBcm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p2pSetEncryption secMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v6, "WifiHostapdWrapperBcm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p2pSetEncryption encMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_0

    .line 979
    invoke-direct {p0, v0, v3, v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgSecurity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z

    .line 980
    invoke-direct {p0, v1, v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->SetEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z

    move v4, v5

    .line 981
    goto/16 :goto_0

    .line 894
    :cond_3
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] [ALGO_OFF]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 902
    :pswitch_2
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v9, v6, :cond_4

    .line 903
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 904
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 905
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto/16 :goto_2

    .line 907
    :cond_4
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v8, v6, :cond_5

    .line 908
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 909
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 910
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto/16 :goto_2

    .line 912
    :cond_5
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] [ALGO_TKIP]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 920
    :pswitch_3
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v7, v6, :cond_6

    .line 921
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 922
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 923
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto/16 :goto_2

    .line 925
    :cond_6
    const/4 v6, 0x2

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v6, v7, :cond_7

    .line 926
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 927
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 928
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto/16 :goto_2

    .line 930
    :cond_7
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] [ALGO_WEP128]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 938
    :pswitch_4
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v9, v6, :cond_8

    .line 939
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 940
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 941
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto/16 :goto_2

    .line 943
    :cond_8
    iget v6, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v8, v6, :cond_9

    .line 944
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 945
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 946
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto/16 :goto_2

    .line 948
    :cond_9
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] [ALGO_AES]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 956
    :pswitch_5
    const/4 v6, 0x3

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    if-ne v6, v7, :cond_a

    .line 957
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 958
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 959
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    goto/16 :goto_2

    .line 962
    :cond_a
    const-string v5, "WifiHostapdWrapperBcm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2pSetEncryption : unkown auth mode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mAuthenticationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] [ALGO_AES]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public p2pSetFrequency(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1183
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_frequency"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1187
    return-void
.end method

.method public p2pSetHideSSID(I)I
    .locals 4
    .param p1, "iCommand"    # I

    .prologue
    .line 994
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetHideSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 997
    const/4 v0, 0x1

    .line 1011
    .local v0, "hiddenSsid":Z
    :goto_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1012
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetHideSSID : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v1, 0x0

    return v1

    .line 999
    .end local v0    # "hiddenSsid":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hiddenSsid":Z
    goto :goto_0
.end method

.method public p2pSetMacFilterByIndex(ILjava/lang/String;)I
    .locals 3
    .param p1, "iIndex"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1018
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetMacFilterByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1022
    const/4 v0, 0x0

    .line 1025
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pSetMacFilterCount(I)I
    .locals 3
    .param p1, "iCount"    # I

    .prologue
    .line 1030
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetMacFilterCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterCount(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pSetMacFilterMode(I)I
    .locals 6
    .param p1, "iMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1048
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p2pSetMacFilterMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    packed-switch p1, :pswitch_data_0

    .line 1092
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pSetMacFilterMode unknown param ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    :goto_0
    return v1

    .line 1055
    :pswitch_0
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1059
    .local v0, "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterCount(I)I

    .line 1061
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1062
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1096
    :goto_1
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    new-instance v5, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    invoke-direct {v5, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)V

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 1098
    goto :goto_0

    .line 1068
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_1
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1070
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1071
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1077
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_2
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1079
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1080
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1085
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_3
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1087
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_accept_file"

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1088
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_deny_file"

    const-string v5, "/data/misc/wifi/hostapd.deny"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public p2pSetMaxAssoc(I)I
    .locals 3
    .param p1, "max_assoc_num"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_max_client"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1108
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetMaxAssoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMaxNumOfClients(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1112
    const/4 v0, 0x0

    .line 1114
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pSetMaxClients(I)Z
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/4 v0, 0x1

    .line 1118
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_max_client"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1121
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetMaxClients: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMaxNumOfClients(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetSSID(Ljava/lang/String;)I
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 1204
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 1211
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetSSID : not supported ssid length ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_0
    :goto_0
    return v0

    .line 1215
    :cond_1
    if-eqz p1, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1217
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetSSID : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetSocialChannel(I)I
    .locals 4
    .param p1, "iCommand"    # I

    .prologue
    const/4 v3, 0x0

    .line 1137
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetSocialChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1146
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetSocialChannel : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :goto_0
    return v3

    .line 1150
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1156
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetSocialChannel : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1152
    :pswitch_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_5g_chanel"

    const/16 v2, 0x95

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1153
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetSocialChannel : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public p2pSetSoftapIsolation(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1166
    const-string v2, "WifiHostapdWrapperBcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pSetSoftapIsolation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    if-ne p1, v0, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_isolated"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1174
    :goto_0
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setPrivacySeparator(Z)Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1178
    :goto_1
    return v0

    .line 1172
    :cond_0
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_isolated"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1178
    goto :goto_1
.end method

.method public p2pSetTxPower(I)I
    .locals 3
    .param p1, "txpower"    # I

    .prologue
    .line 1191
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetTxPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "transmit_power_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1195
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setTxPower(I)I

    move-result v0

    .line 1198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pSetWEPIndex(I)I
    .locals 3
    .param p1, "iCommand"    # I

    .prologue
    .line 1229
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetWEPIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 1232
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKeyIndex(I)V

    .line 1235
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public p2pSetWEPKey1(Ljava/lang/String;)I
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1240
    const-string v1, "WifiHostapdWrapperBcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pSetWEPKey1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 1244
    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1248
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pSetWEPKey2(Ljava/lang/String;)I
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1253
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetWEPKey1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1257
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1258
    const/4 v0, 0x0

    .line 1261
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pSetWEPKey3(Ljava/lang/String;)I
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1266
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetWEPKey1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1270
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1271
    const/4 v0, 0x0

    .line 1274
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pSetWEPKey4(Ljava/lang/String;)I
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1279
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetWEPKey1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1283
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWepKey(ILjava/lang/String;)Z

    .line 1284
    const/4 v0, 0x0

    .line 1287
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2pSetWPAKey(Ljava/lang/String;)I
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1293
    const-string v0, "WifiHostapdWrapperBcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2pSetWPAKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1296
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->setWifiCfgWpaKey(Ljava/lang/String;)V

    .line 1297
    const/4 v0, 0x0

    .line 1299
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public p2premoveAlltheList()I
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->removeAlltheList()I

    move-result v0

    .line 733
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public unloadP2PDriver()I
    .locals 2

    .prologue
    .line 1417
    const-string v0, "WifiHostapdWrapperBcm"

    const-string v1, "unloadP2PDriver : nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v0, 0x0

    return v0
.end method
