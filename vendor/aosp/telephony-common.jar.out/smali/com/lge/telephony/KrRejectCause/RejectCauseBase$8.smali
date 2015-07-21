.class Lcom/lge/telephony/KrRejectCause/RejectCauseBase$8;
.super Landroid/os/Handler;
.source "RejectCauseBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/KrRejectCause/RejectCauseBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;


# direct methods
.method constructor <init>(Lcom/lge/telephony/KrRejectCause/RejectCauseBase;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$8;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 486
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$8;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeoutHandler MSG_ID_TIMEOUT networkDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$8;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    # getter for: Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->networkDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->access$000(Lcom/lge/telephony/KrRejectCause/RejectCauseBase;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->log(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$8;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    # getter for: Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->networkDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->access$000(Lcom/lge/telephony/KrRejectCause/RejectCauseBase;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$8;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->postDismissDialog()V

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
