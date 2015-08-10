.class public Lcom/android/nfc/cardemulation/VCardEmulationManager;
.super Lcom/android/nfc/cardemulation/LCardEmulationManager;
.source "VCardEmulationManager.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "VCardEmulationManager"


# instance fields
.field mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 39
    new-instance v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    .line 40
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 42
    new-instance v0, Lcom/android/nfc/cardemulation/LHostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/LHostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 44
    new-instance v0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    .line 45
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    sput-object v0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->sLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    .line 46
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 48
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 50
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 51
    return-void
.end method


# virtual methods
.method public adjustDefaultRoutes(II)V
    .locals 1
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->adjustDefaultRoutes(II)V

    .line 61
    return-void
.end method

.method public disableCardEmulation()V
    .locals 3

    .prologue
    .line 76
    const-string v0, "VCardEmulationManager"

    const-string v1, "disableCardEmulation"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mLRoutingManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/LAidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 78
    invoke-super {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcDisabled()V

    .line 79
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    const/16 v1, 0xff

    const/16 v2, 0xf3

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->adjustDefaultRoutes(II)V

    .line 80
    return-void
.end method

.method public initDefaultRoute(I)V
    .locals 5
    .param p1, "screenState"    # I

    .prologue
    .line 64
    sget-object v2, Lcom/android/nfc/cardemulation/VCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getHceAppCount()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(II)Z

    move-result v1

    .line 65
    .local v1, "isRoutingOffhost":Z
    const-string v2, "VCardEmulationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoutingOffhost : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getOffHostRoute()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initDefaultRoutePath(I)V

    .line 68
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getOffHostRoute()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->doSetDefaultDest(I)V

    .line 73
    :goto_2
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getDefaultRoute()I

    move-result v2

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getDefaultRoute()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardEmulationManager"

    const-string v3, "initDefaultRoute() - exception"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public reRouteAllAids()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->reRouteAllAids()V

    .line 56
    return-void
.end method

.method public setDefaultRouteDest(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->setDefaultRouteDest(IZ)V

    .line 85
    return-void
.end method

.method public setDefaultRouteDest(IZ)V
    .locals 3
    .param p1, "route"    # I
    .param p2, "isClearAid"    # Z

    .prologue
    .line 88
    const-string v0, "VCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultRouteDest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mLRoutingManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/LAidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 90
    invoke-super {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcDisabled()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initDefaultRoutePath(I)V

    .line 93
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    const/16 v1, 0xf3

    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->adjustDefaultRoutes(II)V

    .line 94
    if-nez p2, :cond_0

    .line 95
    invoke-super {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcEnabled()V

    .line 97
    :cond_0
    return-void
.end method
