.class Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "LgWifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/LgWifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller;
    .param p2, "x1"    # Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;-><init>(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    const-string v4, "wlan.lge.traffic.trigger"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J
    invoke-static {v3, v4, v5}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$502(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J
    invoke-static {v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$500(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z
    invoke-static {v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$200(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    iget-object v4, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J
    invoke-static {v4}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$500(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J
    invoke-static {v3, v4, v5}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$502(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J

    .line 141
    :cond_1
    const-string v3, "LgWifiTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ENABLE_TRAFFIC_STATS_POLL, mTriggeringTput = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTriggeringTput:J
    invoke-static {v5}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$500(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mbits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_2

    :goto_1
    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v3, v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$602(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Z)Z

    .line 144
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # operator++ for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$708(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)I

    .line 145
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$600(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {p0, v10}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->removeMessages(I)V

    .line 147
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$700(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)I

    move-result v1

    invoke-static {p0, v10, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "LgWifiTrafficPoller"

    const-string v2, "ENABLE_TRAFFIC_STATS_POLL, property is not integer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move v1, v2

    .line 143
    goto :goto_1

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputMode:J
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$800(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {p0, v11}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->removeMessages(I)V

    .line 154
    invoke-static {p0, v11, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 160
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$700(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 161
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # invokes: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->monitoringWifiTraffic()V
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$900(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V

    .line 162
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$700(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)I

    move-result v1

    invoke-static {p0, v10, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 168
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_4

    const-wide/16 v4, 0x3

    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J
    invoke-static {v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$1000(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    .line 169
    const-string v3, "LgWifiTrafficPoller"

    const-string v4, "keep performance mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J
    invoke-static {v3, v8, v9}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$1002(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J

    .line 171
    invoke-static {p0, v11, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputCntPoll:J
    invoke-static {v1, v8, v9}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$1002(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J

    .line 177
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mTputMode:J
    invoke-static {v1, v8, v9}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$802(Lcom/lge/wifi/impl/LgWifiTrafficPoller;J)J

    .line 178
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$TrafficHandler;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # invokes: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->setCPUOverClock(Z)V
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$1100(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Z)V

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
