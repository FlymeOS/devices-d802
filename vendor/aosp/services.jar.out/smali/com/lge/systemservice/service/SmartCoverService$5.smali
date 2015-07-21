.class Lcom/lge/systemservice/service/SmartCoverService$5;
.super Landroid/os/Handler;
.source "SmartCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/service/SmartCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/service/SmartCoverService;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 567
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_7

    .line 568
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$700(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 569
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 572
    .local v4, "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    invoke-virtual {v6}, Lcom/lge/systemservice/service/SmartCoverService;->getCoverType()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 573
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$800(Lcom/lge/systemservice/service/SmartCoverService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    if-ne v4, v9, :cond_2

    .line 575
    const/4 v4, 0x0

    .line 583
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 584
    monitor-exit v7

    .line 744
    .end local v4    # "newState":I
    :cond_1
    :goto_1
    return-void

    .line 577
    .restart local v4    # "newState":I
    :cond_2
    if-ne v4, v8, :cond_0

    .line 578
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    const/4 v8, 0x0

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mMiniviewAlive:Z
    invoke-static {v6, v8}, Lcom/lge/systemservice/service/SmartCoverService;->access$802(Lcom/lge/systemservice/service/SmartCoverService;Z)Z

    goto :goto_0

    .line 617
    .end local v4    # "newState":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 587
    .restart local v4    # "newState":I
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$902(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 588
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartCover state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-nez v6, :cond_4

    .line 592
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v6, :cond_5

    .line 593
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v8, v8, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v8, 0x5

    invoke-interface {v6, v8}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 599
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1000(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :try_start_2
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1000(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    .local v0, "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_3
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 607
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6

    .line 595
    :cond_5
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "can\'t boost. mLGPowerManagerLoader is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 607
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 610
    :try_start_7
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 612
    const/high16 v6, 0x4000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    const-string v6, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I
    invoke-static {v8}, Lcom/lge/systemservice/service/SmartCoverService;->access$900(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 617
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 618
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "newState":I
    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_a

    .line 619
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1200(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 620
    :try_start_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 621
    .restart local v4    # "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_8

    .line 622
    monitor-exit v7

    goto/16 :goto_1

    .line 643
    .end local v4    # "newState":I
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    .line 625
    .restart local v4    # "newState":I
    :cond_8
    :try_start_9
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$1302(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 626
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pen state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1400(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 629
    :try_start_a
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1400(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 631
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_b
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    .line 632
    :catch_1
    move-exception v1

    .line 633
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_c
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 636
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_3
    move-exception v6

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 638
    :try_start_f
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.android.intent.action.ACCESSORY_PEN_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 640
    const-string v6, "com.lge.intent.extra.ACCESSORY_PEN_STATE"

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I
    invoke-static {v8}, Lcom/lge/systemservice/service/SmartCoverService;->access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 643
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_1

    .line 644
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "newState":I
    :cond_a
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v9, :cond_d

    .line 645
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$700(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 646
    :try_start_10
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 647
    .local v5, "newType":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 648
    monitor-exit v7

    goto/16 :goto_1

    .line 664
    .end local v5    # "newType":I
    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v6

    .line 651
    .restart local v5    # "newType":I
    :cond_b
    :try_start_11
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v6, v5}, Lcom/lge/systemservice/service/SmartCoverService;->access$1502(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 653
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmartCover type changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1000(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 656
    :try_start_12
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1000(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 658
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_13
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onTypeChanged(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_5

    .line 659
    :catch_2
    move-exception v1

    .line 660
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_14
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 663
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_5
    move-exception v6

    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_c
    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 664
    :try_start_17
    monitor-exit v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/16 :goto_1

    .line 665
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "newType":I
    :cond_d
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v10, :cond_12

    .line 666
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 667
    :try_start_18
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 668
    .restart local v4    # "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_e

    .line 669
    monitor-exit v7

    goto/16 :goto_1

    .line 699
    .end local v4    # "newState":I
    :catchall_6
    move-exception v6

    monitor-exit v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw v6

    .line 672
    .restart local v4    # "newState":I
    :cond_e
    :try_start_19
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$1702(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 673
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "folder state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$1700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-nez v6, :cond_f

    .line 677
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v6, :cond_10

    .line 678
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v6, v6, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    iget-object v8, v8, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v8, 0x5

    invoke-interface {v6, v8}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 684
    :cond_f
    :goto_6
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 685
    :try_start_1a
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 687
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_1b
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto :goto_7

    .line 688
    :catch_3
    move-exception v1

    .line 689
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_1c
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 692
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_7
    move-exception v6

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :try_start_1d
    throw v6

    .line 680
    :cond_10
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "can\'t boost. mLGPowerManagerLoader is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto :goto_6

    .line 692
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_11
    :try_start_1e
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 694
    :try_start_1f
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.android.intent.action.ACCESSORY_FOLDER_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 696
    const-string v6, "com.lge.intent.extra.ACCESSORY_FOLDER_STATE"

    iget-object v8, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I
    invoke-static {v8}, Lcom/lge/systemservice/service/SmartCoverService;->access$1700(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1100(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 699
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    goto/16 :goto_1

    .line 700
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "newState":I
    :cond_12
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_15

    .line 701
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 702
    :try_start_20
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 703
    .restart local v4    # "newState":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v4, v6, :cond_13

    .line 704
    monitor-exit v7

    goto/16 :goto_1

    .line 720
    .end local v4    # "newState":I
    :catchall_8
    move-exception v6

    monitor-exit v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    throw v6

    .line 707
    .restart local v4    # "newState":I
    :cond_13
    :try_start_21
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v6, v4}, Lcom/lge/systemservice/service/SmartCoverService;->access$2002(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 709
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubCover state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2100(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 712
    :try_start_22
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2100(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 714
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_23
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_8

    .line 715
    :catch_4
    move-exception v1

    .line 716
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_24
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 719
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_9
    move-exception v6

    monitor-exit v8
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :try_start_25
    throw v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_14
    :try_start_26
    monitor-exit v8
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 720
    :try_start_27
    monitor-exit v7
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    goto/16 :goto_1

    .line 721
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "newState":I
    :cond_15
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x16

    if-ne v6, v7, :cond_1

    .line 722
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 723
    :try_start_28
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 724
    .restart local v5    # "newType":I
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2200(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    if-ne v5, v6, :cond_16

    .line 725
    monitor-exit v7

    goto/16 :goto_1

    .line 742
    .end local v5    # "newType":I
    :catchall_a
    move-exception v6

    monitor-exit v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    throw v6

    .line 728
    .restart local v5    # "newType":I
    :cond_16
    :try_start_29
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # setter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v6, v5}, Lcom/lge/systemservice/service/SmartCoverService;->access$2202(Lcom/lge/systemservice/service/SmartCoverService;I)I

    .line 730
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubCover type changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v9}, Lcom/lge/systemservice/service/SmartCoverService;->access$2200(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # invokes: Lcom/lge/systemservice/service/SmartCoverService;->setUSBSound()V
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2300(Lcom/lge/systemservice/service/SmartCoverService;)V

    .line 733
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2100(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    .line 734
    :try_start_2a
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2100(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 736
    .restart local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    :try_start_2b
    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService$5;->this$0:Lcom/lge/systemservice/service/SmartCoverService;

    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I
    invoke-static {v6}, Lcom/lge/systemservice/service/SmartCoverService;->access$2200(Lcom/lge/systemservice/service/SmartCoverService;)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onTypeChanged(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_5
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    goto :goto_9

    .line 737
    :catch_5
    move-exception v1

    .line 738
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_2c
    # getter for: Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemservice/service/SmartCoverService;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Catch RemoteException"

    invoke-static {v6, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 741
    .end local v0    # "clbk":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_b
    move-exception v6

    monitor-exit v8
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    :try_start_2d
    throw v6
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_17
    :try_start_2e
    monitor-exit v8
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    .line 742
    :try_start_2f
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    goto/16 :goto_1
.end method
