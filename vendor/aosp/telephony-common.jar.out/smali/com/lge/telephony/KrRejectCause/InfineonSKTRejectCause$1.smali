.class Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause$1;
.super Landroid/os/Handler;
.source "InfineonSKTRejectCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;


# direct methods
.method constructor <init>(Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const-string v0, "InfineonSKTRejectCause"

    const-string v1, "10SEC TIMEOUT Receivced"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;

    # invokes: Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->checkManagedRoamingDialog()V
    invoke-static {v0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->access$000(Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
