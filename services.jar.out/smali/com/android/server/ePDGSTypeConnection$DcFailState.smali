.class Lcom/android/server/ePDGSTypeConnection$DcFailState;
.super Lcom/android/internal/util/State;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGSTypeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcFailState"
.end annotation


# instance fields
.field isWaitingePDGSingGood:Z

.field final synthetic this$0:Lcom/android/server/ePDGSTypeConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGSTypeConnection;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->isWaitingePDGSingGood:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p2, "x1"    # Lcom/android/server/ePDGSTypeConnection$1;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/ePDGSTypeConnection$DcFailState;-><init>(Lcom/android/server/ePDGSTypeConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcFailState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 176
    iput-boolean v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->isWaitingePDGSingGood:Z

    .line 177
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v0, v0, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    const/16 v1, 0x138b

    if-ne v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v2, v2, Lcom/android/server/ePDGSTypeConnection;->mLastNetworkReason:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v0, v0, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v0, v0, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    const/16 v1, 0x138d

    if-ne v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    invoke-virtual {v0, v4, v1}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v0, v0, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    const/16 v1, 0x138c

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const v2, 0x40025

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGSTypeConnection;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 220
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    invoke-virtual {v0, v4, v1}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcFailState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const v1, 0x40025

    # invokes: Lcom/android/server/ePDGSTypeConnection;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->access$900(Lcom/android/server/ePDGSTypeConnection;I)V

    .line 234
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x12

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 241
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 386
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

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

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    .line 392
    .local v0, "retVal":Z
    :cond_0
    :goto_0
    return v0

    .line 243
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v2, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    .line 244
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v2, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    .line 246
    iget-boolean v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->isWaitingePDGSingGood:Z

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState :sig is good now, so move!!  modem -> IWLAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 250
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1000(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$1100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 253
    :cond_1
    const/4 v0, 0x1

    .line 254
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 257
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_2

    .line 259
    iput-boolean v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->isWaitingePDGSingGood:Z

    .line 260
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    if-eqz v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : EVENT_EPDG_RECOVERY_WAIT, good sig, so prefmode to modem -> IWLAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 264
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1000(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$1200(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 273
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 274
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 268
    .end local v0    # "retVal":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : EVENT_EPDG_RECOVERY_WAIT, but bad sig, so just stay Fail!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState: Fail aleady checked!! "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    .line 279
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 282
    .end local v0    # "retVal":Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcFailState: EVENT_DISCONNECTED, it should be IMS!! mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v5, v2}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 291
    :goto_2
    const/4 v0, 0x1

    .line 292
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 288
    .end local v0    # "retVal":Z
    :cond_4
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/16 v2, 0x138e

    invoke-virtual {v1, v6, v2}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 289
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1300(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$1400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 295
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-virtual {v1, v4, v4}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 298
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : [ePDG] Connected Msg from RIL "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1500(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$1600(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 301
    :cond_5
    const/4 v0, 0x1

    .line 302
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 305
    .end local v0    # "retVal":Z
    :sswitch_5
    const/4 v0, 0x1

    .line 306
    .restart local v0    # "retVal":Z
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mExtendedRat:I

    if-ne v1, v3, :cond_6

    .line 311
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : just wait until wifi disconnect or handover to LTE complete "

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    if-eqz v1, :cond_7

    .line 320
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : user disconnect in ePDG status & good packet go ready"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$1800(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 325
    :cond_7
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : user disconnect in ePDG status & bad packet go ready"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$1900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 335
    .end local v0    # "retVal":Z
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_9

    .line 337
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    if-eqz v1, :cond_8

    .line 339
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : User req so send change prefmode to modem -> IWLAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 341
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1000(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2000(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 354
    :goto_3
    const/4 v0, 0x1

    .line 355
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 345
    .end local v0    # "retVal":Z
    :cond_8
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : User is now bad packet status so just stay Fail!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 352
    :cond_9
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1000(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 362
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcFailState : msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v4, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    .line 366
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mExtendedRat:I

    if-ne v1, v3, :cond_a

    .line 368
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 369
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2200(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2300(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 376
    :goto_4
    const/4 v0, 0x1

    .line 377
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 373
    .end local v0    # "retVal":Z
    :cond_a
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/16 v2, 0x138e

    invoke-virtual {v1, v6, v2}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 374
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1300(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_4

    .line 380
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcFailState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v4, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    .line 381
    const/4 v0, 0x1

    .line 382
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40001 -> :sswitch_7
        0x40002 -> :sswitch_6
        0x40005 -> :sswitch_4
        0x40006 -> :sswitch_3
        0x40009 -> :sswitch_5
        0x4000b -> :sswitch_8
        0x4000c -> :sswitch_2
        0x40025 -> :sswitch_1
    .end sparse-switch
.end method
