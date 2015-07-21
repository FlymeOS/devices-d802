.class Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;
.super Lcom/android/internal/util/State;
.source "ePDGDualTypeConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGDualTypeConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGDualTypeConn;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGDualTypeConn;)V
    .locals 0

    .prologue
    .line 2189
    iput-object p1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGDualTypeConn;Lcom/android/server/ePDGDualTypeConn$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGDualTypeConn;
    .param p2, "x1"    # Lcom/android/server/ePDGDualTypeConn$1;

    .prologue
    .line 2189
    invoke-direct {p0, p1}, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;-><init>(Lcom/android/server/ePDGDualTypeConn;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcDisconnectingState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const-string v1, "DcDisconnectingState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2207
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2213
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2247
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState nothandled msg.what=0x"

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

    .line 2250
    const/4 v0, 0x0

    .line 2253
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 2218
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState: EVENT_DISCONNECTED,  mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2220
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/16 v2, 0x63

    iput v2, v1, Lcom/android/server/ePDGDualTypeConn;->cid:I

    .line 2221
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGDualTypeConn;->notifyePDGCompleted(II)V

    .line 2223
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-boolean v2, v2, Lcom/android/server/ePDGDualTypeConn;->isWiFi:Z

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mobileservicestate:I

    iget-object v4, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v4, v4, Lcom/android/server/ePDGDualTypeConn;->mobileRadioTech:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGDualTypeConn;->onNetworkupdate(ZII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2226
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtNoNetwork:Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$900(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6700(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    .line 2233
    :goto_1
    const/4 v0, 0x1

    .line 2234
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 2230
    .end local v0    # "retVal":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    invoke-virtual {v1}, Lcom/android/server/ePDGDualTypeConn;->determinePrefer()V

    .line 2231
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget-object v2, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    # getter for: Lcom/android/server/ePDGDualTypeConn;->mDtReadyState:Lcom/android/server/ePDGDualTypeConn$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGDualTypeConn;->access$1100(Lcom/android/server/ePDGDualTypeConn;)Lcom/android/server/ePDGDualTypeConn$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGDualTypeConn;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->access$6800(Lcom/android/server/ePDGDualTypeConn;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2238
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState get EPDG req, so it will be go when we get disconnect rsp mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    iget v3, v3, Lcom/android/server/ePDGDualTypeConn;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGDualTypeConn;->log(Ljava/lang/String;)V

    .line 2240
    iget-object v1, p0, Lcom/android/server/ePDGDualTypeConn$DcDisconnectingState;->this$0:Lcom/android/server/ePDGDualTypeConn;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/ePDGDualTypeConn;->isDCwaiting:Z

    .line 2242
    const/4 v0, 0x1

    .line 2243
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 2213
    :sswitch_data_0
    .sparse-switch
        0x40002 -> :sswitch_1
        0x40006 -> :sswitch_0
    .end sparse-switch
.end method
