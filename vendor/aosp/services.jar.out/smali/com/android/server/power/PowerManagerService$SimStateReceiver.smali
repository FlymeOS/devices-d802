.class final Lcom/android/server/power/PowerManagerService$SimStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3069
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$SimStateReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3072
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3073
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3074
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3075
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3076
    .local v0, "simState":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "NOT_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3077
    :cond_0
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ABS:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PowerManagerService"

    const-string v4, "SIM is not ready, so disable ABS"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mNoSim:Z
    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->access$1902(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3089
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3090
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v4, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3091
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3093
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3096
    .end local v0    # "simState":Ljava/lang/String;
    .end local v2    # "now":J
    :cond_3
    monitor-exit v7

    .line 3097
    return-void

    .line 3080
    .restart local v0    # "simState":Ljava/lang/String;
    :cond_4
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ABS:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNoSim:Z
    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->access$1902(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3085
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWorkingABS:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3086
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SimStateReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mFirstABSWorking:Z
    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->access$2102(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    .line 3096
    .end local v0    # "simState":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
