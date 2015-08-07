.class Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerServiceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGWiseScreenTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1410
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "flag":Z
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v3, v2, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1415
    :try_start_0
    const-string v2, "PowerManagerServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WiseScreen] mBootCompleted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-boolean v5, v5, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWakefulness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget v5, v5, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-boolean v2, v2, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget v2, v2, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget v2, v2, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1417
    const/4 v0, 0x1

    .line 1419
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    if-eqz v0, :cond_1

    .line 1421
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.keepscreenon.KeepScreenOnService.COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "command"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1423
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1424
    const-string v2, "PowerManagerServiceEx"

    const-string v3, "[WiseScreen] ACTION_WISESCREEN_COMMAND Broadcast..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1419
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
