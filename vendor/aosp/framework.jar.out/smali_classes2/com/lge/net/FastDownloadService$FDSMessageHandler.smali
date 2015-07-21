.class Lcom/lge/net/FastDownloadService$FDSMessageHandler;
.super Landroid/os/Handler;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FDSMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    .line 1442
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1443
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1448
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->decodeMessage(Landroid/os/Message;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/lge/net/FastDownloadService;->access$2700(Lcom/lge/net/FastDownloadService;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1450
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1505
    :cond_1
    :goto_0
    return-void

    .line 1452
    :pswitch_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/net/FastDownloadService;->startMobileDataConnection(I)Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$2800(Lcom/lge/net/FastDownloadService;I)Z

    goto :goto_0

    .line 1456
    :pswitch_1
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/net/FastDownloadService;->stopMobileDataConnection(I)Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$2900(Lcom/lge/net/FastDownloadService;I)Z

    goto :goto_0

    .line 1460
    :pswitch_2
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "renewing mobile connection - 40000ms"

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1461
    :cond_2
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/net/FastDownloadService;->startMobileDataConnection(I)Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$2800(Lcom/lge/net/FastDownloadService;I)Z

    goto :goto_0

    .line 1465
    :pswitch_3
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService;->getMobileDataEnabled()Z

    move-result v2

    # setter for: Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$3002(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1466
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile data setting is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z
    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->access$3000(Lcom/lge/net/FastDownloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 1470
    :pswitch_4
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService;->getDataOnRoamingEnabled()Z

    move-result v2

    # setter for: Lcom/lge/net/FastDownloadService;->mDataRoamingEnabled:Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$3102(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1471
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data roaming setting is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mDataRoamingEnabled:Z
    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->access$3100(Lcom/lge/net/FastDownloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    :pswitch_5
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService;->getAirplaneModeEnabled()Z

    move-result v2

    # setter for: Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$3202(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1476
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airplane mode setting is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z
    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->access$3200(Lcom/lge/net/FastDownloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1480
    :pswitch_6
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService;->getFastDownloadEnabled()Z

    move-result v2

    # setter for: Lcom/lge/net/FastDownloadService;->mFDSEnabled:Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$3302(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1481
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fast download setting is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mFDSEnabled:Z
    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->access$3300(Lcom/lge/net/FastDownloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1485
    :pswitch_7
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService;->getWifiEnabled()Z

    move-result v2

    # setter for: Lcom/lge/net/FastDownloadService;->mWifiEnabled:Z
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$3402(Lcom/lge/net/FastDownloadService;Z)Z

    .line 1486
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifi setting is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mWifiEnabled:Z
    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->access$3400(Lcom/lge/net/FastDownloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1490
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1491
    .local v0, "slowNetworkType":I
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SLOW_BEARER_DETECTED networType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1492
    :cond_3
    if-nez v0, :cond_4

    .line 1493
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    const/4 v2, 0x5

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    goto/16 :goto_0

    .line 1494
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1495
    iget-object v1, p0, Lcom/lge/net/FastDownloadService$FDSMessageHandler;->this$0:Lcom/lge/net/FastDownloadService;

    const/4 v2, 0x6

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v1, v2}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    goto/16 :goto_0

    .line 1497
    :cond_5
    sget-boolean v1, Lcom/lge/net/FastDownloadService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EVENT_SLOW_BEARER_DETECTED unexpected data is recieved"

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
