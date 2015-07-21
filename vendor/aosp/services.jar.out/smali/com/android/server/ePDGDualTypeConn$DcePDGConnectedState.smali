.class Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;
.super Lcom/android/internal/util/State;
.source "ePDGDualTypeConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGDualTypeConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcePDGConnectedState"
.end annotation


# instance fields
.field public mTimecount:I

.field final synthetic this$0:Lcom/android/server/ePDGDualTypeConn;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGDualTypeConn;)V
    .locals 1

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1890
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGDualTypeConn;Lcom/android/server/ePDGDualTypeConn$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGDualTypeConn;
    .param p2, "x1"    # Lcom/android/server/ePDGDualTypeConn$1;

    .prologue
    .line 1887
    invoke-direct {p0, p1}, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;-><init>(Lcom/android/server/ePDGDualTypeConn;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcePDGConnectedState : enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const v2, 0x4001f

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1903
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcePDGConnectedState : exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1912
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    .line 1913
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0xbb8

    const v7, 0x4001f

    const/16 v6, 0x63

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1920
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2178
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcePDGConnectedState nothandled msg.what=0x"

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

    .line 2181
    const/4 v0, 0x0

    .line 2184
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 1924
    .end local v0    # "retVal":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcePDGConnectedState : : EVENT_CALLSTATUS_CH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1925
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/ePDGDualTypeConn;->CallState:I

    .line 1927
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v1, v1, Lcom/android/server/ePDGDualTypeConn;->CallState:I

    if-nez v1, :cond_0

    .line 1929
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGDualTypeConn;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->cid:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/ePDGDualTypeConn;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 1932
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 1933
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState 2G/3G with celluar prefer, so deactivate and prefer change "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1934
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 1935
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtDisconnectingState:Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$5600(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6000(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 1938
    :cond_0
    const/4 v0, 0x1

    .line 1939
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1966
    .end local v0    # "retVal":Z
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 1967
    const/4 v0, 0x1

    .line 1969
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1973
    .end local v0    # "retVal":Z
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, " DcePDGConnectedState : Connected msg.what=EVENT_QOS_INFO"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1974
    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/ePDGDualTypeConn;->onQoSChanged(Ljava/lang/String;)V

    .line 1975
    const/4 v0, 0x1

    .line 1976
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1979
    .end local v0    # "retVal":Z
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState ePDG connected: !"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1980
    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/ePDGDualTypeConn;->onPCSChanged(Ljava/lang/String;)V

    .line 1981
    const/4 v0, 0x1

    .line 1982
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1987
    .end local v0    # "retVal":Z
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 1988
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 1989
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : EVENT_DISCONNECTED!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1990
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->changeSigLevel()V

    .line 1992
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1994
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 1995
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6100(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 2003
    :goto_1
    const/4 v0, 0x1

    .line 2005
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1999
    .end local v0    # "retVal":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2000
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtReadyState:Lcom/android/server/ePDGDualTypeConn$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$1100(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6200(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2011
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : EVENT_USER_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2013
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v5, v1, Lcom/android/server/ePDGDualTypeConn;->isDCwaiting:Z

    .line 2014
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGDualTypeConn;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->cid:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/ePDGDualTypeConn;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 2015
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 2016
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1}, Lcom/android/server/ePDGFixedInfo;->releaseAllblcok()V

    .line 2017
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtDisconnectingState:Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$5600(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6300(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 2018
    const/4 v0, 0x1

    .line 2020
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2024
    .end local v0    # "retVal":Z
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState: msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2025
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v5, v1, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    .line 2026
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1}, Lcom/android/server/ePDGFixedInfo;->resetePDGBlock()V

    .line 2032
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2034
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGDualTypeConn;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->cid:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/ePDGDualTypeConn;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 2035
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 2036
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : EVENT_WIFI_DISCONNECT and LTE is not available. so deactivate and prefer change "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2037
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2038
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtDisconnectingState:Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$5600(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6400(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 2045
    :goto_2
    const/4 v0, 0x1

    .line 2046
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2042
    .end local v0    # "retVal":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2043
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : EVENT_WIFI_DISCONNECT and LTE is available. so wait EVENT_LTE_CONNECTED "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2049
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : and ePDG connected again !! what happen"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2050
    const/4 v0, 0x1

    .line 2051
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2054
    .end local v0    # "retVal":Z
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : msg.what=EVENT_LTE_CONNECTED"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2055
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v5}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 2056
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->changeSigLevel()V

    .line 2057
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtLTEConnectedState:Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$4500(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6500(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 2058
    const/4 v0, 0x1

    .line 2060
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2063
    .end local v0    # "retVal":Z
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : and handover fail we staill remain ePDG!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2064
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/16 v2, 0x138d

    invoke-virtual {v1, v2, v5}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 2065
    const/4 v0, 0x1

    .line 2066
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2069
    .end local v0    # "retVal":Z
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState : EVENT_WFCSETTING_CH "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2070
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v4, :cond_3

    .line 2071
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v5, v1, Lcom/android/server/ePDGDualTypeConn;->WFCSettings:Z

    .line 2101
    :goto_3
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2102
    const/4 v0, 0x1

    .line 2103
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2073
    .end local v0    # "retVal":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->WFCSettings:Z

    goto :goto_3

    .line 2106
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcePDGConnectedState: EVENT_APN_CHANGED,!! "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2107
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->onDisconnectTrigger()V

    .line 2108
    const/4 v0, 0x1

    .line 2109
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2113
    .end local v0    # "retVal":Z
    :pswitch_d
    iget v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    .line 2114
    iget v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    rem-int/lit8 v1, v1, 0xa

    if-ne v1, v4, :cond_4

    .line 2116
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcePDGConnectedState!!! : EVENT_EPDG_TIME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2119
    :cond_4
    iget v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 2121
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2122
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v2, v7}, Lcom/android/server/ePDGDualTypeConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Lcom/android/server/ePDGDualTypeConn;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2123
    const/4 v0, 0x1

    .line 2124
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2127
    .end local v0    # "retVal":Z
    :cond_5
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v2, v7}, Lcom/android/server/ePDGDualTypeConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Lcom/android/server/ePDGDualTypeConn;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2129
    const/4 v0, 0x1

    .line 2130
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2133
    .end local v0    # "retVal":Z
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcePDGConnectedState: EVENT_WIFI_CONNECT_DETAIL,!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2134
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    .line 2135
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/ePDGDualTypeConn;->wifiDetailedState:I

    .line 2136
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->checkwifidetailstatus()V

    .line 2138
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->checkohterRATandDiscon()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2140
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcePDGConnectedState :Sig is Low and no LTE area so drop the PDN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2141
    const/4 v0, 0x1

    .line 2142
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2145
    .end local v0    # "retVal":Z
    :cond_6
    iget v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    if-le v1, v4, :cond_7

    .line 2147
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2153
    :goto_4
    const/4 v0, 0x1

    .line 2154
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2151
    .end local v0    # "retVal":Z
    :cond_7
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcePDGConnectedState :we wait more mTimecount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->mTimecount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 2158
    :pswitch_f
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcePDGConnectedState: EVENT_APN_CHANGED detail=,!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2159
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v5, v1, Lcom/android/server/ePDGDualTypeConn;->isWaitingDereig:Z

    .line 2160
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGDualTypeConn;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->cid:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/ePDGDualTypeConn;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 2161
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 2162
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->changeSigLevel()V

    .line 2163
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtDisconnectingState:Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$5600(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6600(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 2164
    const/4 v0, 0x1

    .line 2165
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1920
    nop

    :pswitch_data_0
    .packed-switch 0x40001
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
