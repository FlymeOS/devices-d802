.class final Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HDMIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1505
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1509
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerServiceEx;->access$3402(Lcom/android/server/power/PowerManagerServiceEx;Z)Z

    .line 1511
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget v0, v0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-nez v0, :cond_0

    .line 1512
    const-string v0, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDMI connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceEx;->access$3400(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1516
    :cond_0
    monitor-exit v1

    .line 1517
    return-void

    .line 1516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
