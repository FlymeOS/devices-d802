.class public Lcom/lge/wifi/impl/WifiExtService;
.super Lcom/lge/wifi/impl/IWifiExtManager$Stub;
.source "WifiExtService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiExtService"

.field private static mContext:Landroid/content/Context;

.field private static mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "wifiext_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;-><init>()V

    .line 25
    sput-object p1, Lcom/lge/wifi/impl/WifiExtService;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/lge/wifi/impl/WifiServiceExtension;->getInstance()Lcom/lge/wifi/impl/WifiServiceExtension;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    .line 27
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->initWifiServiceExt(Landroid/content/Context;)V

    .line 28
    const-string v0, "WifiExtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start WifiExtService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public getCallingWifiUid()I
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getCallingWifiUid()I

    move-result v0

    goto :goto_0
.end method

.method public getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/lge/wifi/impl/WifiLgeExtNative;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pState()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getSecurityType()I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSecurityType()I

    move-result v0

    goto :goto_0
.end method

.method public getSoftApMaxScb(I)I
    .locals 2
    .param p1, "defaultMaxScb"    # I

    .prologue
    .line 97
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, -0x1

    .line 102
    :goto_0
    return v0

    .line 100
    :cond_0
    const-string v0, "WifiExtService"

    const-string v1, "getSoftApMaxScb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSoftApMaxScb(I)I

    move-result v0

    goto :goto_0
.end method

.method public isInternetCheckAvailable()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->isInternetCheckAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public isVZWMobileHotspotEnabled()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->isVZWMobileHotspotEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public setCallingWifiUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setCallingWifiUid(I)V

    goto :goto_0
.end method

.method public setDlnaUsing(Z)Z
    .locals 1
    .param p1, "bEnable"    # Z

    .prologue
    .line 57
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setDlnaUsing(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setProvisioned(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 74
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setProvisioned(Z)V

    goto :goto_0
.end method

.method public setVZWMobileHotspot(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 89
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setVZWMobileHotspot(Z)Z

    move-result v0

    goto :goto_0
.end method
