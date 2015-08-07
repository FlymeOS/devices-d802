.class final Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGUserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerEx;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerControllerEx;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerControllerEx;Lcom/android/server/display/DisplayPowerControllerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayPowerControllerEx;
    .param p2, "x1"    # Lcom/android/server/display/DisplayPowerControllerEx$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;-><init>(Lcom/android/server/display/DisplayPowerControllerEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # invokes: Lcom/android/server/display/DisplayPowerControllerEx;->LGUpdateSettingsLocked()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$800(Lcom/android/server/display/DisplayPowerControllerEx;)V

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
