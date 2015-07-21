.class Lcom/lge/telephony/KrRejectCause/RejectCauseBase$5;
.super Ljava/lang/Object;
.source "RejectCauseBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showLocationFailDialogSKT(Ljava/lang/String;ZZ)V
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
    .line 434
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$5;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 436
    const-string v0, "RejectCauseBase"

    const-string v1, "telephony_dialog_cancel_button showDialog onclick : "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$5;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->clearStatusId()V

    .line 438
    return-void
.end method
