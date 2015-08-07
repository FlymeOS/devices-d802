.class final Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;
.super Landroid/os/Handler;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerExHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    .line 1382
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1383
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 1387
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1406
    :goto_0
    return-void

    .line 1389
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->handleKeyLedTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2200(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0

    .line 1392
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->setKeyLedEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2300(Lcom/android/server/power/PowerManagerServiceEx;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1395
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->handleDeviceLockTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2400(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0

    .line 1398
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->handleEASState()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2500(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0

    .line 1401
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->handleForegroundPackageName()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2600(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0

    .line 1387
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6a -> :sswitch_4
    .end sparse-switch
.end method
