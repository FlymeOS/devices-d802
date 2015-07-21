.class final Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;
.super Lcom/android/internal/util/State;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StopState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;


# direct methods
.method public constructor <init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 604
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 609
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM StopState  entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingcount:I
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2202(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)I

    .line 612
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingtime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2302(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J

    .line 613
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # setter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$2402(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J

    .line 614
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerEventHandleSM StopState  leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$3900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopState  processMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 628
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 646
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

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

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V

    .line 649
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 630
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStartState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 634
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 638
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 642
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;->this$1:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    # getter for: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$1800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    move-result-object v1

    # invokes: Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->access$4400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x13bb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
