.class Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;
.super Lcom/android/internal/util/State;
.source "ePDGDualTypeConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGDualTypeConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcLTEConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGDualTypeConn;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGDualTypeConn;)V
    .locals 0

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGDualTypeConn;Lcom/android/server/ePDGDualTypeConn$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGDualTypeConn;
    .param p2, "x1"    # Lcom/android/server/ePDGDualTypeConn$1;

    .prologue
    .line 1635
    invoke-direct {p0, p1}, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;-><init>(Lcom/android/server/ePDGDualTypeConn;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcLTEConnectedState state enter, we will pri deter again"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v0}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 1647
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcLTEConnectedState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x63

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1663
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1876
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcLTEConnectedState : nothandled msg.what=0x"

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

    .line 1879
    const/4 v0, 0x0

    .line 1882
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 1710
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcLTEConnectedState : EVENT_ROAM_IMFO ?? in Connected??, we block tech if value is 1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1711
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v5, v1, Lcom/android/server/ePDGDualTypeConn;->isRoaming:Z

    .line 1714
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1, v5, v7}, Lcom/android/server/ePDGFixedInfo;->setBlockinfo(II)V

    .line 1727
    :goto_1
    const/4 v0, 0x1

    .line 1728
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1723
    .end local v0    # "retVal":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->isRoaming:Z

    .line 1724
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1, v5, v7}, Lcom/android/server/ePDGFixedInfo;->releaseBlockinfo(II)V

    .line 1725
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    goto :goto_1

    .line 1731
    :sswitch_1
    const/4 v0, 0x1

    .line 1740
    .restart local v0    # "retVal":Z
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : msg.what=EVENT_QOS_INFO"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1741
    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/ePDGDualTypeConn;->onQoSChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 1746
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : EVENT_PCSCF_CH!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1747
    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/ePDGDualTypeConn;->onPCSChanged(Ljava/lang/String;)V

    .line 1748
    const/4 v0, 0x1

    .line 1749
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1754
    .end local v0    # "retVal":Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 1755
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 1757
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1759
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 1760
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$5400(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 1767
    :goto_2
    const/4 v0, 0x1

    .line 1769
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1764
    .end local v0    # "retVal":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 1765
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtReadyState:Lcom/android/server/ePDGDualTypeConn$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$1100(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$5500(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1775
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->isDCwaiting:Z

    .line 1777
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGDualTypeConn;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->cid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 1778
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 1779
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1}, Lcom/android/server/ePDGFixedInfo;->releaseAllblcok()V

    .line 1780
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtDisconnectingState:Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$5600(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$5700(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 1781
    const/4 v0, 0x1

    .line 1783
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1787
    .end local v0    # "retVal":Z
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1788
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    .line 1789
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v1, v1, Lcom/android/server/ePDGDualTypeConn;->mMyFixedinfo:Lcom/android/server/ePDGFixedInfo;

    invoke-virtual {v1}, Lcom/android/server/ePDGFixedInfo;->resetePDGBlock()V

    .line 1793
    const/4 v0, 0x1

    .line 1794
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1797
    .end local v0    # "retVal":Z
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : msg.what=EVENT_EPDG_CONNECTED"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1798
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 1799
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtePDGConnectedState:Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$4300(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcePDGConnectedState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$5800(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 1800
    const/4 v0, 0x1

    .line 1801
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1804
    .end local v0    # "retVal":Z
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : and LTE connected again !! what happen"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1805
    const/4 v0, 0x1

    .line 1806
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1809
    .end local v0    # "retVal":Z
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : and handover fail, we staill remain LTE!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1812
    const/4 v0, 0x1

    .line 1813
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1816
    .end local v0    # "retVal":Z
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcLTEConnectedState : EVENT_WFC_PREFER_CH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1817
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/ePDGDualTypeConn;->WFCPrefer:I

    .line 1835
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 1837
    const/4 v0, 0x1

    .line 1838
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1841
    .end local v0    # "retVal":Z
    :sswitch_a
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : EVENT_APN_CHANGED,!! "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1842
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->onDisconnectTrigger()V

    .line 1843
    const/4 v0, 0x1

    .line 1844
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1848
    .end local v0    # "retVal":Z
    :sswitch_b
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcLTEConnectedState : EVENT_APN_CHANGED detail=,!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1849
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput-boolean v4, v1, Lcom/android/server/ePDGDualTypeConn;->isWaitingDereig:Z

    .line 1850
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGDualTypeConn;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->cid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 1851
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iput v6, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 1852
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtDisconnectingState:Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$5600(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$5900(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 1853
    const/4 v0, 0x1

    .line 1854
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1857
    .end local v0    # "retVal":Z
    :sswitch_c
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v2, "DcLTEConnectedState : EVENT_RADIO_OFF,!! "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 1859
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->onDisconnectTrigger()V

    .line 1861
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcLTEConnectedState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1, v4, v5, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    .line 1862
    const/4 v0, 0x1

    .line 1863
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 1663
    :sswitch_data_0
    .sparse-switch
        0x40001 -> :sswitch_5
        0x40006 -> :sswitch_3
        0x40009 -> :sswitch_4
        0x4000c -> :sswitch_8
        0x4000e -> :sswitch_2
        0x4000f -> :sswitch_1
        0x40012 -> :sswitch_7
        0x40013 -> :sswitch_6
        0x40014 -> :sswitch_9
        0x4001b -> :sswitch_a
        0x4001c -> :sswitch_b
        0x4001d -> :sswitch_b
        0x4001e -> :sswitch_c
        0x40023 -> :sswitch_0
    .end sparse-switch
.end method
