.class Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;
.super Lcom/android/internal/util/State;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGSTypeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcEPSScanState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGSTypeConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGSTypeConnection;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p2, "x1"    # Lcom/android/server/ePDGSTypeConnection$1;

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;-><init>(Lcom/android/server/ePDGSTypeConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const v5, 0x40008

    const/4 v4, 0x0

    .line 799
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "mEPSScanState state enter"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-virtual {v1}, Lcom/android/server/ePDGSTypeConnection;->makeFQDN()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "FQDN":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/ePDGSTypeConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->sendMessage(Landroid/os/Message;)V

    .line 832
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, v2, Lcom/android/server/ePDGSTypeConnection;->ePDGAddrForTestApp:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->setEPDGGWAddr([Ljava/lang/String;)I

    .line 810
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-virtual {v2, v5, v4, v4}, Lcom/android/server/ePDGSTypeConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "mEPSScanState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 847
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 869
    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEPSScanState nothandled msg.what=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 872
    const/4 v1, 0x0

    .line 875
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 852
    .end local v1    # "retVal":Z
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 854
    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, v2, Lcom/android/server/ePDGSTypeConnection;->mGWList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    .local v0, "gwaddr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-object v0, v2, Lcom/android/server/ePDGSTypeConnection;->mCurrentGW:Ljava/lang/String;

    .line 857
    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;
    invoke-static {v3}, Lcom/android/server/ePDGSTypeConnection;->access$1000(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    move-result-object v3

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->access$4800(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 864
    .end local v0    # "gwaddr":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    .line 865
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 861
    .end local v1    # "retVal":Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/16 v3, 0x138a

    iput v3, v2, Lcom/android/server/ePDGSTypeConnection;->mFailReason:I

    .line 862
    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v3, p0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;
    invoke-static {v3}, Lcom/android/server/ePDGSTypeConnection;->access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;

    move-result-object v3

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/ePDGSTypeConnection;->access$4900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 847
    nop

    :pswitch_data_0
    .packed-switch 0x40008
        :pswitch_0
    .end packed-switch
.end method
