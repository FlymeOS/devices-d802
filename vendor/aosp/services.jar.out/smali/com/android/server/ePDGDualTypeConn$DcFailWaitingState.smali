.class Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;
.super Lcom/android/internal/util/State;
.source "ePDGDualTypeConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGDualTypeConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcFailWaitingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGDualTypeConn;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGDualTypeConn;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGDualTypeConn;Lcom/android/server/ePDGDualTypeConn$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGDualTypeConn;
    .param p2, "x1"    # Lcom/android/server/ePDGDualTypeConn$1;

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;-><init>(Lcom/android/server/ePDGDualTypeConn;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const v3, 0x4001a

    .line 745
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcFailState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v0}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 748
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v0, v0, Lcom/android/server/ePDGDualTypeConn;->mFailReason:I

    const/16 v1, 0x138b

    if-ne v0, v1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v2, v2, Lcom/android/server/ePDGDualTypeConn;->mLastNetworkReason:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 752
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1, v3}, Lcom/android/server/ePDGDualTypeConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v0, v0, Lcom/android/server/ePDGDualTypeConn;->mFailReason:I

    const/16 v1, 0x1391

    if-ne v0, v1, :cond_2

    .line 757
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1, v3}, Lcom/android/server/ePDGDualTypeConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v0, v0, Lcom/android/server/ePDGDualTypeConn;->mFailReason:I

    const/16 v1, 0x138c

    if-ne v0, v1, :cond_3

    .line 768
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v1, v1, Lcom/android/server/ePDGDualTypeConn;->mFailReason:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    goto :goto_0

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v0, v0, Lcom/android/server/ePDGDualTypeConn;->mFailReason:I

    const/16 v1, 0x138f

    if-ne v0, v1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v1, v1, Lcom/android/server/ePDGDualTypeConn;->mFailReason:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 774
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1, v3}, Lcom/android/server/ePDGDualTypeConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcFailState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 788
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const v5, 0x4001a

    .line 795
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 902
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState nothandled msg.what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 905
    const/4 v0, 0x0

    .line 908
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 800
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState msg.what=EVENT_CONNECTED. what happen?!!! fid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 801
    const/4 v0, 0x1

    .line 802
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 805
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState msg.what=EVENT_USER_DISCONNECT. fid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 807
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->isDCwaiting:Z

    .line 808
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1}, Lcom/android/server/ePDGFixedInfo;->releaseAllblcok()V

    .line 810
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # invokes: Lcom/android/server/ePDGDualTypeConn;->removeMessages(I)V
    invoke-static {v1, v5}, Lcom/android/server/ePDGDualTypeConn;->access$800(Lcom/android/server/ePDGDualTypeConn;I)V

    .line 811
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 814
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$1000(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 822
    :goto_1
    const/4 v0, 0x1

    .line 823
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 818
    .end local v0    # "retVal":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 819
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtReadyState:Lcom/android/server/ePDGDualTypeConn$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$1100(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$1200(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 827
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState msg.what=EVENT_RETRY. fid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 832
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$1300(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 839
    :goto_2
    const/4 v0, 0x1

    .line 840
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 836
    .end local v0    # "retVal":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 837
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtInitConnectingState:Lcom/android/server/ePDGDualTypeConn$DcInitConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$1400(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcInitConnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$1500(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 844
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 846
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState : NETWORK is not available "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tech"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # invokes: Lcom/android/server/ePDGDualTypeConn;->removeMessages(I)V
    invoke-static {v1, v5}, Lcom/android/server/ePDGDualTypeConn;->access$1600(Lcom/android/server/ePDGDualTypeConn;I)V

    .line 848
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 849
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$1700(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 856
    :goto_3
    const/4 v0, 0x1

    .line 858
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 853
    .end local v0    # "retVal":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState : NETWORK is still available wifi  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v3, v3, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tech"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 854
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    goto :goto_3

    .line 862
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcFailState state: msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    .line 865
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1}, Lcom/android/server/ePDGFixedInfo;->resetePDGBlock()V

    .line 867
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 869
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcFailState : NETWORK is not available wifi disconnect "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # invokes: Lcom/android/server/ePDGDualTypeConn;->removeMessages(I)V
    invoke-static {v1, v5}, Lcom/android/server/ePDGDualTypeConn;->access$1800(Lcom/android/server/ePDGDualTypeConn;I)V

    .line 871
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 872
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v2, 0x3

    const/16 v3, 0x138e

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 873
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$1900(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 880
    :goto_4
    const/4 v0, 0x1

    .line 881
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 877
    .end local v0    # "retVal":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    goto :goto_4

    .line 884
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcFailState: EVENT_APN_CHANGED,!! "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # invokes: Lcom/android/server/ePDGDualTypeConn;->removeMessages(I)V
    invoke-static {v1, v5}, Lcom/android/server/ePDGDualTypeConn;->access$2000(Lcom/android/server/ePDGDualTypeConn;I)V

    .line 886
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 888
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 889
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$2100(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 896
    :goto_5
    const/4 v0, 0x1

    .line 897
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 893
    .end local v0    # "retVal":Z
    :cond_4
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 894
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcFailWaitingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtInitConnectingState:Lcom/android/server/ePDGDualTypeConn$DcInitConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$1400(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcInitConnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$2200(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    goto :goto_5

    .line 795
    nop

    :sswitch_data_0
    .sparse-switch
        0x40001 -> :sswitch_4
        0x40005 -> :sswitch_0
        0x40009 -> :sswitch_1
        0x40011 -> :sswitch_3
        0x4001a -> :sswitch_2
        0x4001b -> :sswitch_5
    .end sparse-switch
.end method
