.class Lcom/android/server/BatteryServiceEx$BatteryObserver$1$1;
.super Ljava/lang/Object;
.source "BatteryServiceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryServiceEx$BatteryObserver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/BatteryServiceEx$BatteryObserver$1;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryServiceEx$BatteryObserver$1;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1$1;->this$2:Lcom/android/server/BatteryServiceEx$BatteryObserver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1$1;->this$2:Lcom/android/server/BatteryServiceEx$BatteryObserver$1;

    iget-object v0, v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 207
    const/4 v0, 0x1

    :try_start_0
    sput v0, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    .line 208
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1$1;->this$2:Lcom/android/server/BatteryServiceEx$BatteryObserver$1;

    iget-object v0, v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # invokes: Lcom/android/server/BatteryServiceEx$BatteryObserver;->updateLocked()V
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
