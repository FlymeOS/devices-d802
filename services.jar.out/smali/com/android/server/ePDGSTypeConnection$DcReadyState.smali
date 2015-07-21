.class Lcom/android/server/ePDGSTypeConnection$DcReadyState;
.super Lcom/android/internal/util/State;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGSTypeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGSTypeConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGSTypeConnection;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p2, "x1"    # Lcom/android/server/ePDGSTypeConnection$1;

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/ePDGSTypeConnection$DcReadyState;-><init>(Lcom/android/server/ePDGSTypeConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcReadyState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcReadyState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 947
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1025
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcReadyState nothandled msg.what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1028
    const/4 v0, 0x0

    .line 1031
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 952
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcReadyState : just ready state so ignore low loss, mfid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v4, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    .line 954
    const/4 v0, 0x1

    .line 956
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 962
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-virtual {v1, v4, v4}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 965
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcReadyState : Connected Msg from RIL in ready state "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1500(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$5000(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 972
    :goto_1
    const/4 v0, 0x1

    .line 974
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 970
    .end local v0    # "retVal":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcReadyState : this is not handover type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and get connect in the ready state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 980
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcReadyState msg.what=EVENT_EPDG_REQUEST."

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    if-eqz v1, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcReadyState : User req so send change prefmode to modem -> IWLAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 1008
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1000(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$5100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 1016
    :goto_2
    const/4 v0, 0x1

    .line 1017
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1012
    .end local v0    # "retVal":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcReadyState : User is now bad packet status so just go to Fail!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1013
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/16 v2, 0x138c

    iput v2, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    .line 1014
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$5200(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1019
    :cond_2
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mEPSScanState:Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$5300(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$5400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 1020
    const/4 v0, 0x1

    .line 1021
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 947
    nop

    :sswitch_data_0
    .sparse-switch
        0x40002 -> :sswitch_2
        0x40005 -> :sswitch_1
        0x4000b -> :sswitch_0
    .end sparse-switch
.end method
