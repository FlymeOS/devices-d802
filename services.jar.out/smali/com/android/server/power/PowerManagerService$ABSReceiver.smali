.class final Lcom/android/server/power/PowerManagerService$ABSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ABSReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3050
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3050
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ABSReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3053
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3054
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.lge.android.intent.action.ABS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3055
    const-string v1, "com.lge.intent.extra.ENABLE_ABS"

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3056
    .local v0, "mABS":Z
    if-eqz v0, :cond_2

    .line 3057
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ABS:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PowerManagerService"

    const-string v3, "ABS is enabled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mEnableABS:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3063
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3064
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3066
    .end local v0    # "mABS":Z
    :cond_1
    monitor-exit v2

    .line 3067
    return-void

    .line 3060
    .restart local v0    # "mABS":Z
    :cond_2
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ABS:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PowerManagerService"

    const-string v3, "ABS is disabled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mEnableABS:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    .line 3066
    .end local v0    # "mABS":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
