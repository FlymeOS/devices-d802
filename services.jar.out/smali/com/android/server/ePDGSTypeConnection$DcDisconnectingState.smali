.class Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;
.super Lcom/android/internal/util/State;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGSTypeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGSTypeConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGSTypeConnection;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p2, "x1"    # Lcom/android/server/ePDGSTypeConnection$1;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;-><init>(Lcom/android/server/ePDGSTypeConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcDisconnectingState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcDisconnectingState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 420
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 468
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

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

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    .line 474
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 423
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcDisconnectingState: EVENT_HANDOVER_FAIL, ims should not remain in the ePDG"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 426
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2500(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 427
    const/4 v0, 0x1

    .line 428
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 431
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState: EVENT_DISCONNECTED, it should be IMS!! mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/16 v2, 0x63

    iput v2, v1, Lcom/android/server/ePDGSTypeConnection;->cid:I

    .line 433
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 435
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2600(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 441
    :goto_1
    const/4 v0, 0x1

    .line 442
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 438
    .end local v0    # "retVal":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/4 v2, 0x3

    const/16 v3, 0x138e

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 439
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1300(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2700(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 446
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcDisconnectingState: MEN BONG SM?!! Why no rsp form IPSEC!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/16 v2, 0x1389

    iput v2, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    .line 448
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$2900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 449
    const/4 v0, 0x1

    .line 450
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 454
    .end local v0    # "retVal":Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState get EPDG req, so it will be go when we get disconnect rsp mFid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # invokes: Lcom/android/server/ePDGSTypeConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/ePDGSTypeConnection;->access$3000(Lcom/android/server/ePDGSTypeConnection;Landroid/os/Message;)V

    .line 456
    const/4 v0, 0x1

    .line 457
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 461
    .end local v0    # "retVal":Z
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcDisconnectingState: msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    .line 463
    const/4 v0, 0x1

    .line 464
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x40001 -> :sswitch_4
        0x40002 -> :sswitch_3
        0x40006 -> :sswitch_1
        0x40007 -> :sswitch_2
        0x4000c -> :sswitch_0
    .end sparse-switch
.end method
