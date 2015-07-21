.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "WfdsService"

    const-string v1, "STATE : DefaultState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v7, 0x900020

    const v3, 0x90001f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 522
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 627
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultState - msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not handled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    :goto_0
    return v6

    .line 525
    :sswitch_0
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - WFDS_ENABLE(DISABLE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    :sswitch_1
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - WIFI_SUPPLICANT_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$1600(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(Z)V
    invoke-static {v2, v6}, Lcom/lge/wfds/WfdsService;->access$1700(Lcom/lge/wfds/WfdsService;Z)V

    .line 532
    const-string v2, "WfdsService"

    const-string v3, "WiFi: Supplicant connection re-established"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I
    invoke-static {v2, v5}, Lcom/lge/wfds/WfdsService;->access$1802(Lcom/lge/wfds/WfdsService;I)I

    goto :goto_0

    .line 538
    :sswitch_2
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - WIFI_SUPPLICANT_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V
    invoke-static {v2, v5, v6}, Lcom/lge/wfds/WfdsService;->access$1900(Lcom/lge/wfds/WfdsService;ZZ)V

    goto :goto_0

    .line 543
    :sswitch_3
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$1600(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # operator++ for: Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$1808(Lcom/lge/wfds/WfdsService;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 547
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V
    invoke-static {v2, v5, v6}, Lcom/lge/wfds/WfdsService;->access$1900(Lcom/lge/wfds/WfdsService;ZZ)V

    .line 548
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I
    invoke-static {v2, v5}, Lcom/lge/wfds/WfdsService;->access$1802(Lcom/lge/wfds/WfdsService;I)I

    .line 549
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - Received WFDS_SUPPLICANT_TERMINATING Event, so close the sockets related with supplicant"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :sswitch_4
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900021

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 560
    :sswitch_5
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - SEEK_SERVICE is received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900021

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 566
    :sswitch_6
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 571
    :sswitch_7
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 576
    :sswitch_8
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 581
    :sswitch_9
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 587
    :sswitch_a
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getDeviceAddress()Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$2100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "deviceAddr":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "ff:ff:ff:ff:ff:ff"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    :cond_2
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900023

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 592
    :cond_3
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900024

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/String;)V
    invoke-static {v2, p1, v3, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 599
    .end local v0    # "deviceAddr":Ljava/lang/String;
    :sswitch_b
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900022

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getPreferredScanChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$2300(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 604
    :sswitch_c
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$2400(Lcom/lge/wfds/WfdsService;I)V

    .line 605
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET_LISTEN_CHANNEL : mScanOnlyOneChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$2500(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 610
    :sswitch_d
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/wfds/WfdsService;->confirmScanOnlyChannel(I)I
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$2700(Lcom/lge/wfds/WfdsService;I)I

    .line 611
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONFIRM_LISTEN_CHANNEL : requested Channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$2500(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900022

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$2500(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 618
    :sswitch_e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 619
    .local v1, "isCertiMode":Z
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_TEST_SET_CERTIFICATION_MODE ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z
    invoke-static {v2, v1}, Lcom/lge/wfds/WfdsService;->access$2802(Lcom/lge/wfds/WfdsService;Z)Z

    .line 621
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$2800(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/wfds/SessionController;->setCertiMode(Z)V

    .line 622
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 522
    :sswitch_data_0
    .sparse-switch
        0x900001 -> :sswitch_4
        0x900002 -> :sswitch_6
        0x900004 -> :sswitch_5
        0x900005 -> :sswitch_7
        0x90000e -> :sswitch_9
        0x90000f -> :sswitch_8
        0x900039 -> :sswitch_e
        0x90005b -> :sswitch_a
        0x90005c -> :sswitch_b
        0x90005d -> :sswitch_c
        0x90005e -> :sswitch_d
        0x901001 -> :sswitch_0
        0x901002 -> :sswitch_0
        0x901003 -> :sswitch_1
        0x901004 -> :sswitch_2
        0x902002 -> :sswitch_3
    .end sparse-switch
.end method
