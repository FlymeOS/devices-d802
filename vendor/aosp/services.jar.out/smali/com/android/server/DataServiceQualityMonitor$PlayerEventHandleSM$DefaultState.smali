.class final Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;
.super Lcom/android/internal/util/State;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 478
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM DefaultState entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM DefaultState leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actual State: DefaultState, Current State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".processMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 501
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 533
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

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
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 536
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStartState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 511
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 515
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 519
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const/16 v1, 0x13cf

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->sendMessageDelayed(IJ)V

    .line 521
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mBufferingState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 525
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 529
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x13bb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
