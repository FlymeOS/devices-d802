.class Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause$1;
.super Landroid/os/Handler;
.source "QcrilSKTRejectCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;


# direct methods
.method constructor <init>(Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
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
    const-string v0, "QcrilSKTRejectCause"

    const-string v1, "10SEC TIMEOUT Receivced"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause$1;->this$0:Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;

    # invokes: Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->checkManagedRoamingDialog()V
    invoke-static {v0}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->access$000(Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
