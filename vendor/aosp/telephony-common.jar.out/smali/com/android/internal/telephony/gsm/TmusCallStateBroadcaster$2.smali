.class Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$2;
.super Landroid/content/BroadcastReceiver;
.source "TmusCallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster$2;->this$0:Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 415
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.lge.phone.action.TMUS_CIQ_INFO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "address":Ljava/lang/String;
    const/16 v2, 0x3e9

    .line 419
    .local v2, "ciqid":I
    # getter for: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sSyncConn:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 420
    :try_start_0
    # operator++ for: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$408()I

    move-result v2

    .line 421
    # getter for: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$400()I

    move-result v3

    const/16 v5, 0x3e8

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->sNextConId:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->access$402(I)I

    .line 422
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    sget-boolean v3, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GsmCallState"

    const-string v4, "mReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v2, v1, v3}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallStatus(ILjava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    .line 425
    const/16 v3, 0x3f

    invoke-static {v2, v1, v3}, Lcom/android/internal/telephony/gsm/TmusCallStateBroadcaster;->SendCallDisconnected(ILjava/lang/String;I)V

    .line 427
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "ciqid":I
    :cond_2
    return-void

    .line 422
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "ciqid":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
