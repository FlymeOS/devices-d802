.class Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting, msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getStrMsgWhat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WaitingState.processMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 530
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 548
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 533
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$800(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    goto :goto_0

    .line 538
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 539
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
