.class Lcom/android/server/ePDGSTypeConnection$DcConnectedState;
.super Lcom/android/internal/util/State;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGSTypeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcConnectedState"
.end annotation


# instance fields
.field public mTimecount:I

.field final synthetic this$0:Lcom/android/server/ePDGSTypeConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGSTypeConnection;)V
    .locals 1

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p2, "x1"    # Lcom/android/server/ePDGSTypeConnection$1;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;-><init>(Lcom/android/server/ePDGSTypeConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcConnectedState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const v2, 0x4001f

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGSTypeConnection;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 492
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcConnectedState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    .line 502
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x138d

    const/16 v6, 0x138c

    const/16 v5, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 509
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 644
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcConnectedState nothandled msg.what=0x"

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

    .line 647
    const/4 v0, 0x0

    .line 650
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 512
    .end local v0    # "retVal":Z
    :sswitch_0
    iget v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    .line 515
    iget v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    rem-int/lit8 v1, v1, 0xa

    if-ne v1, v3, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcConnectedState!!! : EVENT_EPDG_TIME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 521
    :cond_0
    iget v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 523
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const v3, 0x4001f

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/ePDGSTypeConnection;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 524
    const/4 v0, 0x1

    .line 525
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 528
    .end local v0    # "retVal":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    if-nez v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : it\'s not good packet condition, so send change prefmode to modem -> WWAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 532
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput v6, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    .line 533
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 539
    :goto_1
    const/4 v0, 0x1

    .line 540
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 537
    .end local v0    # "retVal":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const v3, 0x4001f

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/ePDGSTypeConnection;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 544
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v4, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    .line 545
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : we get packet loss, so go to fail!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 546
    iget v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    if-le v1, v3, :cond_3

    .line 548
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : send change prefmode to modem -> WWAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 550
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput v6, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    .line 551
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3200(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 557
    :goto_2
    const/4 v0, 0x1

    .line 558
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 555
    .end local v0    # "retVal":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcConnectedState : we get packet loss, but we wait more mTimecount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->mTimecount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 561
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : we get Handover Fail!! it should not happen!!"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput v7, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    .line 563
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3300(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 564
    const/4 v0, 0x1

    .line 565
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 570
    .end local v0    # "retVal":Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_4

    .line 573
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput v7, v1, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    .line 574
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 591
    :goto_3
    const/4 v0, 0x1

    .line 594
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 578
    .end local v0    # "retVal":Z
    :cond_4
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput v5, v1, Lcom/android/server/ePDGSTypeConnection;->cid:I

    .line 579
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ePDGSTypeConnection;->notifyePDGCompleted(II)V

    .line 581
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    if-eqz v1, :cond_5

    .line 583
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3500(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 587
    :cond_5
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1300(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3600(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 600
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_6

    .line 602
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : send change prefmode to modem -> WWAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 604
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2200(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3700(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 605
    const/4 v0, 0x1

    .line 606
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 609
    .end local v0    # "retVal":Z
    :cond_6
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-ne v1, v3, :cond_7

    .line 610
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->cid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ePDGSTypeConnection;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 611
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : ePDGDeactivateDataCall - VZWAPP"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput v5, v1, Lcom/android/server/ePDGSTypeConnection;->cid:I

    .line 613
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3800(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 614
    const/4 v0, 0x1

    .line 615
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 617
    .end local v0    # "retVal":Z
    :cond_7
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2200(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$3900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 618
    const/4 v0, 0x1

    .line 619
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 626
    .end local v0    # "retVal":Z
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : msg.what=EVENT_WIFI_DISCONNECT"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v4, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    .line 630
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v1, v1, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    if-nez v1, :cond_8

    .line 632
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcConnectedState : Wifi Disconnected so prefmode -> WWAN"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget v3, v3, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->getAPNTypewithFid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/ePDGSTypeConnection;->setePDGsetprefTest(Ljava/lang/String;I)V

    .line 635
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$2200(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$4000(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 640
    :cond_8
    const/4 v0, 0x1

    .line 641
    .restart local v0    # "retVal":Z
    goto/16 :goto_0

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x40001 -> :sswitch_5
        0x40006 -> :sswitch_3
        0x40009 -> :sswitch_4
        0x4000b -> :sswitch_1
        0x4000c -> :sswitch_2
        0x4001f -> :sswitch_0
    .end sparse-switch
.end method
