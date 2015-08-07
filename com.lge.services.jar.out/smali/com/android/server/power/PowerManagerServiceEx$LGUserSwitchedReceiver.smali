.class final Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGUserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1464
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->LGHandleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2100(Lcom/android/server/power/PowerManagerServiceEx;)V

    .line 1469
    monitor-exit v1

    .line 1470
    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
