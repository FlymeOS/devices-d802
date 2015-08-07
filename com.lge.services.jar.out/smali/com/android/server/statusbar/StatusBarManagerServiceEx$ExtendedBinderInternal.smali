.class Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;
.super Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;
.source "StatusBarManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    invoke-direct {p0}, Lcom/lge/internal/statusbar/IStatusBarServiceEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;Lcom/android/server/statusbar/StatusBarManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/statusbar/StatusBarManagerServiceEx$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public disableNaviBtn(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    iget v1, v1, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mCurrentUserId:I

    # invokes: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->disableNaviBtnInternal(IILandroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$000(Lcom/android/server/statusbar/StatusBarManagerServiceEx;IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public notifyNavigationBarColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->enforceStatusBar()V

    .line 99
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    # setter for: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLastNavigationBarColor:I
    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$302(Lcom/android/server/statusbar/StatusBarManagerServiceEx;I)I

    .line 101
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$200(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)Lcom/lge/internal/statusbar/IStatusBarEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$200(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)Lcom/lge/internal/statusbar/IStatusBarEx;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/internal/statusbar/IStatusBarEx;->notifyNavigationBarColor(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public onPanelRevealedWithLockStatus(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    invoke-virtual {v2}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->enforceStatusBar()V

    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 124
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealedWithLockStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerStatusBarEx(Lcom/android/internal/statusbar/IStatusBar;Lcom/lge/internal/statusbar/IStatusBarEx;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .locals 4
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "barEx"    # Lcom/lge/internal/statusbar/IStatusBarEx;
    .param p3, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p4, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/lge/internal/statusbar/IStatusBarEx;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    .local p5, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 82
    const-string v0, "StatusBarManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerStatusBarEx bar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    # setter for: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;
    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$202(Lcom/android/server/statusbar/StatusBarManagerServiceEx;Lcom/lge/internal/statusbar/IStatusBarEx;)Lcom/lge/internal/statusbar/IStatusBarEx;

    .line 84
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    const/4 v0, 0x6

    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    iget v3, v3, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->gatherNaviBtnDisableActionsLocked(I)I

    move-result v2

    aput v2, p4, v0

    .line 86
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mLastNavigationBarColor:I
    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$300(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)I

    move-result v2

    aput v2, p4, v0

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIconShift()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->enforceStatusBar()V

    .line 110
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$200(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)Lcom/lge/internal/statusbar/IStatusBarEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/statusbar/StatusBarManagerServiceEx;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerServiceEx;->mBarEx:Lcom/lge/internal/statusbar/IStatusBarEx;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceEx;->access$200(Lcom/android/server/statusbar/StatusBarManagerServiceEx;)Lcom/lge/internal/statusbar/IStatusBarEx;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/internal/statusbar/IStatusBarEx;->setIconShift()V

    .line 113
    :cond_0
    return-void
.end method
