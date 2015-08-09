.class public Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;
.super Ljava/lang/Object;
.source "SmartCoverServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/ISmartCoverViewManagerService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/ISmartCoverViewManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/internal/policy/ISmartCoverViewManagerService;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "SmartCoverServiceWrapper"

    iput-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    .line 38
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v0}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->isShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    :goto_0
    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverHide()V
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onCoverHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverShow()V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onCoverShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onCoverStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTypeChanged(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onCoverTypeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onScreenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onScreenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->mService:Lcom/android/internal/policy/ISmartCoverViewManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/ISmartCoverViewManagerService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
