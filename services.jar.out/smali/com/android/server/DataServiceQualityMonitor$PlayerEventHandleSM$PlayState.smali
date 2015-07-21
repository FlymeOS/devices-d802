.class final Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
.super Lcom/android/internal/util/State;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayState"
.end annotation


# instance fields
.field private playtime:J

.field final synthetic this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 657
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM PlayState  entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->playtime:J

    .line 666
    return-void
.end method

.method public exit()V
    .locals 8

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->playtime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2402(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J

    .line 673
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM PlayState  leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mplaytime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayState  processMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 683
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 699
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

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
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$5200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 702
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 685
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 689
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const/16 v1, 0x13cf

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->sendMessageDelayed(IJ)V

    .line 691
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mBufferingState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$5000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 695
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$5100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x13be
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
