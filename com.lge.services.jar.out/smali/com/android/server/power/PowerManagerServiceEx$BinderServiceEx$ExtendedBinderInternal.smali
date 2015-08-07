.class final Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;
.super Landroid/os/IPowerManagerEx$Stub;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    invoke-direct {p0}, Landroid/os/IPowerManagerEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;)V

    return-void
.end method


# virtual methods
.method public dummy_method_1()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public dummy_method_2()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public getPowerKeyWhenCalling()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$400(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v0

    return v0
.end method

.method public getWakeLockFlags(I)I
    .locals 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    iget-object v5, v5, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v6, v5, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    iget-object v5, v5, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v5, v5, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 185
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 186
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    iget-object v5, v5, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v5, v5, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 188
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_1

    .line 189
    iget-object v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v3

    .line 190
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 191
    iget-object v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v5, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 192
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    monitor-exit v6

    .line 201
    .end local v2    # "j":I
    .end local v3    # "num":I
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_2
    return v5

    .line 190
    .restart local v2    # "j":I
    .restart local v3    # "num":I
    .restart local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    .end local v2    # "j":I
    .end local v3    # "num":I
    :cond_1
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne p1, v5, :cond_2

    .line 197
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    monitor-exit v6

    goto :goto_2

    .line 200
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 185
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public recoverBacklightBrightness(I)V
    .locals 5
    .param p1, "currentBrightness"    # I

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-boolean v2, v2, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-boolean v2, v2, Lcom/android/server/power/PowerManagerServiceEx;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerEx;

    move-result-object v0

    .line 225
    .local v0, "displayManagerEx":Landroid/hardware/display/IDisplayManagerEx;
    if-nez v0, :cond_2

    .line 226
    const-string v2, "PowerManagerServiceEx"

    const-string v3, "Unable to find IDisplayManagerEx interface."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManagerEx;->recoverBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PowerManagerServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException at recoverBacklightBrightness("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPowerKeyWhenCalling(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->this$1:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->access$402(Lcom/android/server/power/PowerManagerServiceEx;Z)Z

    .line 213
    return-void
.end method
