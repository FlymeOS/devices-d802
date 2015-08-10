.class public Lcom/android/nfc/cardemulation/VRegisteredAidCache;
.super Lcom/android/nfc/cardemulation/LRegisteredAidCache;
.source "VRegisteredAidCache.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "VRegisteredAidCache"


# instance fields
.field mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    .line 36
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mLRoutingManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 37
    iput-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 38
    iput-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 39
    return-void
.end method


# virtual methods
.method public adjustDefaultRoutes(II)V
    .locals 2
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->adjustDefaultRoutes(II)V

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRouteAllAids()V
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->reRouteAllAids()V

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
