.class public Lcom/lge/systemservice/core/WifiLgeExtManager;
.super Ljava/lang/Object;
.source "WifiLgeExtManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "wifiLgeExtService"

.field private static final TAG:Ljava/lang/String; = "WifiLgeExtManager"


# instance fields
.field private mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/WifiLgeExtManager;Lcom/lge/systemservice/core/IWifiLgeExtManager;)Lcom/lge/systemservice/core/IWifiLgeExtManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/WifiLgeExtManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/IWifiLgeExtManager;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    return-object p1
.end method

.method private final getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;
    .locals 5

    .prologue
    .line 33
    iget-object v2, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    if-nez v2, :cond_0

    .line 34
    const-string/jumbo v2, "wifiLgeExtService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    .line 36
    iget-object v2, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    if-eqz v2, :cond_0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/lge/systemservice/core/WifiLgeExtManager$1;

    invoke-direct {v3, p0}, Lcom/lge/systemservice/core/WifiLgeExtManager$1;-><init>(Lcom/lge/systemservice/core/WifiLgeExtManager;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    return-object v2

    .line 42
    .restart local v0    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    goto :goto_0
.end method


# virtual methods
.method public Channel5G_HiddenMenu(II)Z
    .locals 5
    .param p1, "Channel"    # I
    .param p2, "BondingInfo"    # I

    .prologue
    const/4 v2, 0x0

    .line 500
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 501
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 502
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return v2

    .line 507
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel5G_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Channel5G_HiddenMenu(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Channel_HiddenMenu(II)Z
    .locals 5
    .param p1, "Channel"    # I
    .param p2, "BondingInfo"    # I

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 471
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 472
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return v2

    .line 477
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Channel_HiddenMenu(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Channel_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public CloseDUT_HiddenMenu(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 90
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 91
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return v2

    .line 96
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] CloseDUT_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->CloseDUT_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] CloseDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] CloseDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public CodeRate_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1266
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1267
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1268
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v2, -0x1

    .line 1280
    :goto_0
    return v2

    .line 1273
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "CodeRate_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->CodeRate_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "CodeRate_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1278
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "CodeRate_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FRError_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 818
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 819
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 820
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_0
    return v2

    .line 825
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRError_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRError_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRError_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 830
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRError_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FRGood_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 789
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 790
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 791
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_0
    return v2

    .line 796
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRGood_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRGood_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRGood_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRGood_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FRTotal_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 761
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 762
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 763
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_0
    return v2

    .line 768
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRTotal_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRTotal_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRTotal_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 773
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] FRTotal_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FrequencyAccuracy5G_HiddenMenu(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "band"    # Ljava/lang/String;
    .param p2, "ChannelNo"    # I

    .prologue
    const/4 v2, 0x0

    .line 930
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 931
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 932
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_0
    return v2

    .line 937
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FrequencyAccuracy5G_HiddenMenu(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FrequencyAccuracy_HiddenMenu(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "band"    # Ljava/lang/String;
    .param p2, "ChannelNo"    # I

    .prologue
    const/4 v2, 0x0

    .line 888
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 889
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 890
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_0
    return v2

    .line 895
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FrequencyAccuracy_HiddenMenu(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 900
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public IsRunning_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1152
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1153
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1154
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_0
    return v2

    .line 1159
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] IsRunning_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->IsRunning_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] IsRunning_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1164
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] IsRunning_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NoModTxStart_BCM_HiddenMenu(I)Z
    .locals 5
    .param p1, "channel"    # I

    .prologue
    const/4 v2, 0x0

    .line 1097
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1098
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1099
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_0
    return v2

    .line 1104
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] NoModTxStart_BCM_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStart_BCM_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] NoModTxStart_BCM_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] NoModTxStart_BCM_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NoModTxStart_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1069
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1070
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1071
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :goto_0
    return v2

    .line 1076
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStart_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1081
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NoModTxStop_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1124
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1125
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1126
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :goto_0
    return v2

    .line 1131
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStop_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1136
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OpMode_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1238
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1239
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1240
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v2, -0x1

    .line 1252
    :goto_0
    return v2

    .line 1245
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "OpMode_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OpMode_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "OpMode_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1250
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "OpMode_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OpenDUT_HiddenMenu(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 61
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 62
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return v2

    .line 67
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OpenDUT_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OpenDUT_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OpenDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OpenDUT_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OtaDisable_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1041
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1042
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1043
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return v2

    .line 1048
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OtaDisable_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OtaDisable_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaDisable_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1053
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaDisable_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OtaEnable_HiddenMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1014
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1015
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1016
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_0
    return v2

    .line 1021
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] OtaEnable_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OtaEnable_HiddenMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaEnabled_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1026
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] OtaEnabled_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RSSI_HiddenMenu()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 845
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 846
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 847
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_0
    return v2

    .line 852
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RSSI_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RSSI_HiddenMenu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RSSI_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RSSI_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RxPER_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1210
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1211
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1212
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v2, -0x1

    .line 1224
    :goto_0
    return v2

    .line 1217
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "RxPER_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxPER_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "RxPER_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "RxPER_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RxStart_HiddenMenu(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 178
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 179
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return v2

    .line 184
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStart_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxStart_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RxStop_HiddenMenu(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 207
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 208
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return v2

    .line 213
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStop_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxStop_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] RxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Set11nPreamble_HiddenMenu(I)Z
    .locals 5
    .param p1, "Preamble"    # I

    .prologue
    const/4 v2, 0x0

    .line 733
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 734
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 735
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_0
    return v2

    .line 740
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Set11nPreamble_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Set11nPreamble_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Set11nPreamble_HiddenMenu is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Set11nPreamble_HiddenMenu is is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetChainExt_HiddenMenu(I)Z
    .locals 5
    .param p1, "chainValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 1323
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1324
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1325
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :goto_0
    return v2

    .line 1330
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChainExt_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetChainExt_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChainExt_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1335
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1336
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChainExt_HiddenMenu is failed2."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetChain_HiddenMenu(I)Z
    .locals 5
    .param p1, "chainValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 1295
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1296
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1297
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_0
    return v2

    .line 1302
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChain_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetChain_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChain_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1307
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetChain_HiddenMenu is failed2."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetPreamble_HiddenMenu(I)Z
    .locals 5
    .param p1, "Preamble"    # I

    .prologue
    const/4 v2, 0x0

    .line 690
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 691
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 692
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return v2

    .line 697
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetPreamble_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetPreamble_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetPreamble_HiddenMenu is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetPreamble_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetTxBF_HiddenMenu(I)Z
    .locals 5
    .param p1, "Value"    # I

    .prologue
    const/4 v2, 0x0

    .line 1351
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1352
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1353
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :goto_0
    return v2

    .line 1358
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetTxBF_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetTxBF_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetTxBF_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1363
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] SetTxBF_HiddenMenu is failed2."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TXBW_40M_HiddenMenu(I)Z
    .locals 5
    .param p1, "ChannelNo"    # I

    .prologue
    const/4 v2, 0x0

    .line 959
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 960
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 961
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_0
    return v2

    .line 966
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TXBW_40M_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 971
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TXBW_80M_HiddenMenu(I)Z
    .locals 5
    .param p1, "ChannelNo"    # I

    .prologue
    const/4 v2, 0x0

    .line 987
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 988
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 989
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :goto_0
    return v2

    .line 994
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TXBW_80M_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 999
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxBurstFrames_HiddenMenu(I)Z
    .locals 5
    .param p1, "FrameNumber"    # I

    .prologue
    const/4 v2, 0x0

    .line 619
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 620
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 621
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return v2

    .line 626
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstFrames_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxBurstFrames_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstFrames_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstFrames_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxBurstInterval_HiddenMenu(I)Z
    .locals 5
    .param p1, "SIFS"    # I

    .prologue
    const/4 v2, 0x0

    .line 559
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 560
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 561
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return v2

    .line 566
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstInterval_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxBurstInterval_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstInterval_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxBurstInterval_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11ac_HiddenMenu(IIII)Z
    .locals 5
    .param p1, "nDataRate"    # I
    .param p2, "nBandWidth"    # I
    .param p3, "nChannel"    # I
    .param p4, "nGI"    # I

    .prologue
    const/4 v2, 0x0

    .line 441
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 442
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 443
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return v2

    .line 448
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11ac_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11ac_HiddenMenu(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11ac_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11ac_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n40M_HiddenMenu(III)Z
    .locals 5
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 351
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 352
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return v2

    .line 357
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n40M_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n40M_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n5G40M_HiddenMenu(III)Z
    .locals 5
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 411
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 412
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return v2

    .line 417
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n5G40M_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n5G_HiddenMenu(III)Z
    .locals 5
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 381
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 382
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return v2

    .line 387
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n5G_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate11n_HiddenMenu(III)Z
    .locals 5
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 321
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 322
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return v2

    .line 327
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n_HiddenMenu(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate11n_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate5G_HiddenMenu(Ljava/lang/String;)Z
    .locals 5
    .param p1, "Datarate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 291
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 292
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return v2

    .line 297
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate5G_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate5G_HiddenMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate5G_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    .locals 5
    .param p1, "Datarate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 249
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 250
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return v2

    .line 255
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDataRate_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dstMacAddr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 649
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 650
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    return v2

    .line 655
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDestAddress_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDestAddress_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxDestAddress_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxGain_HiddenMenu(I)Z
    .locals 5
    .param p1, "TxGain"    # I

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 530
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 531
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return v2

    .line 536
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxGain_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxGain_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxGain_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxGain_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxPER_HiddenMenu(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1182
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 1183
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 1184
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v2, -0x1

    .line 1196
    :goto_0
    return v2

    .line 1189
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "TxPER_HiddenMenu called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxPER_HiddenMenu(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "TxPER_HiddenMenu failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1194
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "TxPER_HiddenMenu failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxPayloadLength_HiddenMenu(I)Z
    .locals 5
    .param p1, "payLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 589
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 590
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 591
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    return v2

    .line 596
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxPayloadLength_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxPayloadLength_HiddenMenu(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxPayloadLength_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxPayloadLength_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxStart_HiddenMenu(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 119
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 120
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return v2

    .line 125
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxStart_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TxStop_HiddenMenu(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    .line 148
    .local v1, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v1, :cond_0

    .line 149
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return v2

    .line 154
    :cond_0
    :try_start_0
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is called."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxStop_HiddenMenu(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiLgeExtManager"

    const-string v4, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
