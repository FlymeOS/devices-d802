.class final Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;
.super Lcom/android/internal/util/State;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 542
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM StartState entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingcount:I
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2202(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)I

    .line 550
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingtime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2302(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J

    .line 551
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2402(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J

    .line 552
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const/16 v1, 0x13ce

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->sendMessageDelayed(IJ)V

    .line 554
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM StartState leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x13ce

    .line 566
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartState processMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 568
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 595
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignoring unhandled message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 598
    :goto_0
    return v4

    .line 570
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V

    .line 571
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 575
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V

    .line 576
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 580
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V

    .line 581
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 585
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V

    .line 586
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 590
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const-string v1, "PLAYEREV_WAIT_RENDERING_EXPIRED at StartState send Wi-Fi disconnect"

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->sendIntentBroadcast(I)V
    invoke-static {v0, v4}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V

    goto :goto_0

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x13bc -> :sswitch_0
        0x13bd -> :sswitch_1
        0x13be -> :sswitch_2
        0x13c1 -> :sswitch_3
        0x13ce -> :sswitch_4
    .end sparse-switch
.end method
