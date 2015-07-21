.class Lcom/lge/telephony/KrRejectCause/RejectCauseBase$9;
.super Ljava/lang/Object;
.source "RejectCauseBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 513
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$9;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$9;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDialogOnKeyListener keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dialog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->log(Ljava/lang/String;)V

    .line 516
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    .line 517
    if-eqz p1, :cond_0

    .line 518
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 519
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$9;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->clearStatusId()V

    .line 520
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$9;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->postDismissDialog()V

    .line 521
    const/4 v0, 0x1

    .line 525
    :cond_0
    return v0
.end method
