.class Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;
.super Landroid/os/Handler;
.source "InfineonKTRejectCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;


# direct methods
.method constructor <init>(Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m5SECDelayedTimeoutHandler Expired!!! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;

    iget-object v2, v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mDelayedTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;

    # invokes: Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->checkManagedRoamingDialogAtBoot()V
    invoke-static {v0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->access$000(Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
