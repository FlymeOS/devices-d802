.class public Landroid/app/StatusBarManagerEx;
.super Landroid/app/StatusBarManager;
.source "StatusBarManagerEx.java"


# instance fields
.field private mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private declared-synchronized getService()Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    .locals 2

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    if-nez v0, :cond_0

    .line 23
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    .line 25
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    if-nez v0, :cond_0

    .line 26
    const-string v0, "StatusBarManagerEx"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE_EX"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManagerEx;->mService:Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public disable(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "what2"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManagerEx;->disable(I)V

    .line 36
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManagerEx;->getService()Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v1

    .line 37
    .local v1, "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    if-eqz v1, :cond_0

    .line 38
    iget-object v2, p0, Landroid/app/StatusBarManagerEx;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p2, v2, v3}, Lcom/lge/internal/statusbar/IStatusBarServiceEx;->disableNaviBtn(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    return-void

    .line 40
    .end local v1    # "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIconShift()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManagerEx;->getService()Lcom/lge/internal/statusbar/IStatusBarServiceEx;

    move-result-object v1

    .line 49
    .local v1, "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Lcom/lge/internal/statusbar/IStatusBarServiceEx;->setIconShift()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    return-void

    .line 52
    .end local v1    # "svc":Lcom/lge/internal/statusbar/IStatusBarServiceEx;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
