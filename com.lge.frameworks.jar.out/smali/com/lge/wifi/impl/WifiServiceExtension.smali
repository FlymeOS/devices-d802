.class public Lcom/lge/wifi/impl/WifiServiceExtension;
.super Ljava/lang/Object;
.source "WifiServiceExtension.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiServiceExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;,
        Lcom/lge/wifi/impl/WifiServiceExtension$EapExt;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiServiceExtension"

.field private static mIsProvisioned:Z

.field private static mUiccNotSupported:Z

.field private static sCallingWifiUid:I


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    .line 59
    sput-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mIsProvisioned:Z

    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiExtInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    .line 53
    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 139
    return-void
.end method

.method static synthetic access$002(Lcom/lge/wifi/impl/WifiServiceExtension;Lcom/lge/wifi/impl/WifiExtInfo;)Lcom/lge/wifi/impl/WifiExtInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiServiceExtension;
    .param p1, "x1"    # Lcom/lge/wifi/impl/WifiExtInfo;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    return-object p1
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    .line 339
    :cond_0
    return-void
.end method

.method private checkWifiManager()Z
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiServiceExtension"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/impl/WifiServiceExtension;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiServiceExtIface()Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiServiceExtension;

    return-object v0
.end method

.method private getSoftApMaxuserInRoaming()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 456
    const/4 v0, 0x1

    .line 457
    .local v0, "DEFAULT_MAX_USER_IN_GSM_ROAMING":I
    const/4 v6, 0x1

    .line 458
    .local v6, "roamingState":I
    iget-object v7, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_chameleon_roaming_type"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 460
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SPR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v5, 0x8

    .line 461
    .local v5, "maxUser":I
    :goto_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "/carrier/wifi/hm"

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 462
    .local v3, "cmln_sap_h_maxuser":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v7, "/carrier/wifi/dm"

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "cmln_sap_d_maxuser":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v7, "/carrier/wifi/gm"

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, "cmln_sap_g_maxuser":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    const-string v7, "/carrier/wifi/im"

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 466
    .local v4, "cmln_sap_i_maxuser":Ljava/lang/String;
    if-ne v9, v6, :cond_3

    .line 467
    invoke-direct {p0, v3, v5}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    .line 475
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->isNetworkTypeGSM()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 476
    invoke-direct {p0, v2, v9}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    .line 479
    :cond_1
    const-string v7, "WifiServiceExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hotspot roaming type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " max user : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v5

    .line 460
    .end local v1    # "cmln_sap_d_maxuser":Ljava/lang/String;
    .end local v2    # "cmln_sap_g_maxuser":Ljava/lang/String;
    .end local v3    # "cmln_sap_h_maxuser":Ljava/lang/String;
    .end local v4    # "cmln_sap_i_maxuser":Ljava/lang/String;
    .end local v5    # "maxUser":I
    :cond_2
    const/4 v5, 0x5

    goto :goto_0

    .line 468
    .restart local v1    # "cmln_sap_d_maxuser":Ljava/lang/String;
    .restart local v2    # "cmln_sap_g_maxuser":Ljava/lang/String;
    .restart local v3    # "cmln_sap_h_maxuser":Ljava/lang/String;
    .restart local v4    # "cmln_sap_i_maxuser":Ljava/lang/String;
    .restart local v5    # "maxUser":I
    :cond_3
    const/4 v7, 0x3

    if-ne v7, v6, :cond_4

    .line 469
    invoke-direct {p0, v1, v5}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 470
    :cond_4
    const/4 v7, 0x2

    if-ne v7, v6, :cond_0

    .line 471
    invoke-direct {p0, v4, v5}, Lcom/lge/wifi/impl/WifiServiceExtension;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->checkWifiManager()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 396
    :cond_0
    if-eqz v1, :cond_2

    .line 397
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 398
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_1

    .line 403
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWifiState()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method private isNetworkTypeGSM()Z
    .locals 6

    .prologue
    .line 485
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 486
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x0

    .line 489
    .local v1, "networkType":I
    if-eqz v2, :cond_0

    .line 490
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v1

    .line 491
    const-string v3, "WifiServiceExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkTypeGSM(), networkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 510
    :pswitch_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_1

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readChameleonIntValue(Ljava/lang/String;I)I
    .locals 12
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "ref_value"    # I

    .prologue
    .line 409
    const/4 v2, 0x0

    .line 410
    .local v2, "fr":Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 411
    .local v9, "value":Ljava/lang/String;
    move v6, p2

    .line 413
    .local v6, "ret_value":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "fh":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move v7, v6

    .line 450
    .end local v6    # "ret_value":I
    .local v7, "ret_value":I
    :goto_0
    return v7

    .line 419
    .end local v7    # "ret_value":I
    .restart local v6    # "ret_value":I
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .end local v2    # "fr":Ljava/io/FileReader;
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 421
    .local v4, "inFile":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 423
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 424
    .local v8, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 430
    .end local v8    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz v3, :cond_2

    .line 431
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 439
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "inFile":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :cond_3
    :goto_1
    if-eqz v9, :cond_5

    .line 440
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    :goto_2
    move v7, v6

    .line 450
    .end local v6    # "ret_value":I
    .restart local v7    # "ret_value":I
    goto :goto_0

    .line 433
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v7    # "ret_value":I
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "inFile":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "ret_value":I
    :catch_0
    move-exception v10

    move-object v2, v3

    .line 435
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 427
    .end local v4    # "inFile":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 430
    :goto_3
    if-eqz v2, :cond_3

    .line 431
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 433
    :catch_2
    move-exception v10

    goto :goto_1

    .line 429
    :catchall_0
    move-exception v10

    .line 430
    :goto_4
    if-eqz v2, :cond_4

    .line 431
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 434
    :cond_4
    :goto_5
    throw v10

    .line 443
    :cond_5
    move v6, p2

    goto :goto_2

    .line 446
    :catch_3
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    move v6, p2

    goto :goto_2

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 429
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 427
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v10

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_3
.end method

.method private registerWifiExtBroadcastReceiver()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.hotspotprovision.hotspot.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "com.lge.wifi.WIFI_UPDATE_WIFI_EXTINFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;-><init>(Lcom/lge/wifi/impl/WifiServiceExtension;)V

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v1, "WifiServiceExtension"

    const-string v2, "register : alread registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterWifiExtBroadcastReceiver()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "WifiServiceExtension"

    const-string v1, "unregister : we don\'t need to unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCallingWifiUid()I
    .locals 3

    .prologue
    .line 629
    const-string v0, "WifiServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallingWifiUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget v0, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    return v0
.end method

.method public getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiExtInfo:Lcom/lge/wifi/impl/WifiExtInfo;

    return-object v0
.end method

.method public getSecurityType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    :goto_0
    return v0

    :cond_0
    const-string v1, "persist.sys.security"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method public getSoftApMaxScb(I)I
    .locals 3
    .param p1, "defaultMaxScb"    # I

    .prologue
    .line 514
    move v0, p1

    .line 516
    .local v0, "maxScb":I
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSoftApMaxuserInRoaming()I

    move-result v1

    .line 519
    .local v1, "maxScbChameleon":I
    if-ge v1, v0, :cond_0

    move v0, v1

    .line 526
    .end local v0    # "maxScb":I
    .end local v1    # "maxScbChameleon":I
    :cond_0
    return v0
.end method

.method public initWifiServiceExt(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->registerWifiExtBroadcastReceiver()V

    .line 158
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 159
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_uicc_simnotsupported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    .line 160
    const-string v0, "WifiServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWifiServiceExt done mUiccNotSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public isGigaWifi()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 249
    const-string v1, "persist.sys.security"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "softap set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persist.sys.hotssid.ksc5601"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 363
    const-string v1, "WifiServiceExtension"

    const-string v2, "isHotspotKSC5601 is true ==> ksc5601"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isInternetCheckAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_data_continuity_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v1

    .line 346
    .local v0, "isPoortNetworkEnabled":Z
    :goto_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->checkAndSetConnectivityInstance()V

    .line 347
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/lge/wifi/impl/WifiServiceExtension;->mUiccNotSupported:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    .line 351
    :cond_2
    const-string v1, "WifiServiceExtension"

    const-string v3, "isInternetCheckAvailable return false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 355
    :cond_3
    return v1

    .end local v0    # "isPoortNetworkEnabled":Z
    :cond_4
    move v0, v2

    .line 344
    goto :goto_0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useMobileHotspot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-boolean v0, Lcom/lge/wifi/impl/WifiServiceExtension;->mIsProvisioned:Z

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowKTPayPopup()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 374
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    :goto_0
    return v0

    :cond_0
    const-string v1, "persist.sys.ktpopup"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isUPlusAP(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSecurityType()I

    move-result v0

    .line 259
    .local v0, "security_type":I
    const-string v2, "WifiServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUPlusAP   ssid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  getSecurityType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget v2, Lcom/lge/wifi/config/LgeServiceExtConstant;->MSCHAP_AP:I

    if-eq v0, v2, :cond_2

    sget v2, Lcom/lge/wifi/config/LgeServiceExtConstant;->AKA_AP:I

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+acn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+ acn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "u+ zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVZWMobileHotspotEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 575
    const-string v2, "wifi.lge.mhp"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v0

    .line 577
    .local v0, "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiMobileHotspot;->isMHPEnabled()Z

    move-result v1

    .line 587
    .end local v0    # "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    :cond_0
    :goto_0
    return v1

    .line 582
    :cond_1
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->checkWifiManager()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    goto :goto_0

    .line 586
    :cond_2
    const-string v2, "WifiServiceExtension"

    const-string v3, "isn\'t isWifiApEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallingWifiUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 621
    sput p1, Lcom/lge/wifi/impl/WifiServiceExtension;->sCallingWifiUid:I

    .line 622
    const-string v0, "WifiServiceExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallingWifiUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method public setDlnaUsing(Z)Z
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 304
    if-ne v2, p1, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->enforceAccessPermission()V

    .line 306
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing(true) is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_0
    const-string v0, "dhcp.dlna.using"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :goto_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getWifiState()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 312
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setDynamicBeaconWakeup(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDynamicBeaconWakeup is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    :goto_1
    return v2

    .line 316
    :cond_1
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing() : Wifi is not Enabled yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_2
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing(false) is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_1
    const-string v0, "dhcp.dlna.using"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :goto_2
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getWifiState()I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 325
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setDynamicBeaconWakeup(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDynamicBeaconWakeup is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    :cond_3
    const-string v0, "WifiServiceExtension"

    const-string v1, "setDlnaUsing() : Wifi is not Enabled yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    goto :goto_2

    .line 309
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setProvisioned(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 282
    sput-boolean p1, Lcom/lge/wifi/impl/WifiServiceExtension;->mIsProvisioned:Z

    .line 283
    return-void
.end method

.method public setSecurityType(I)V
    .locals 5
    .param p1, "secMode"    # I

    .prologue
    .line 209
    :try_start_0
    const-string v2, "persist.sys.security"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v1, v2, 0x10

    .line 210
    .local v1, "vhtCapaField":I
    or-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "s":Ljava/lang/String;
    const-string v2, "WifiServiceExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSecurityType  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v2, "persist.sys.security"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "vhtCapaField":I
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setVZWMobileHotspot(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 597
    if-eqz p1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v1

    .line 603
    :cond_1
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 604
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;

    move-result-object v0

    .line 605
    .local v0, "wifiMHPIfaceIface":Lcom/lge/wifi/extension/IWifiMobileHotspot;
    if-eqz v0, :cond_0

    .line 606
    invoke-interface {v0}, Lcom/lge/wifi/extension/IWifiMobileHotspot;->disableMobileHotspot()Z

    .line 607
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVhtCapabilityType(Z)V
    .locals 5
    .param p1, "vhtCapa"    # Z

    .prologue
    .line 232
    :try_start_0
    const-string v2, "persist.sys.security"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v1, v2, 0xf

    .line 234
    .local v1, "securityField":I
    if-eqz p1, :cond_0

    .line 235
    or-int/lit8 v2, v1, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const-string v3, "WifiServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVHTCapabilityType  : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v2, "true"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v2, "persist.sys.security"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "securityField":I
    :goto_2
    return-void

    .line 237
    .restart local v1    # "securityField":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 238
    :cond_1
    const-string v2, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 241
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "securityField":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method
