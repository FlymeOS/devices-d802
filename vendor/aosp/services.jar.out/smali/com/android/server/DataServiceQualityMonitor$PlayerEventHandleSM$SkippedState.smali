.class final Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;
.super Lcom/android/internal/util/State;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SkippedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 784
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 789
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM SkippedState   entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$6900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingcount:I
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2202(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)I

    .line 792
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingtime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2302(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J

    .line 793
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2402(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J

    .line 794
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM SkippedState  leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x13cf

    .line 806
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkippedState  processMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 808
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 833
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

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
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 836
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 810
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 814
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 818
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 822
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->sendMessageDelayed(IJ)V

    .line 824
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mBufferingState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 828
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V
    invoke-static {v0, v4}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V

    .line 829
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$7700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x13bc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
