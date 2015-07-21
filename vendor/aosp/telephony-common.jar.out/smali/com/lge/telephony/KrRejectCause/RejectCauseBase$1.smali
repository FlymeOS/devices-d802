.class Lcom/lge/telephony/KrRejectCause/RejectCauseBase$1;
.super Ljava/lang/Object;
.source "RejectCauseBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showDialog(Ljava/lang/String;ZZ)V
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
    .line 349
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$1;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    .line 351
    const-string v1, "RejectCauseBase"

    const-string v2, "showDialog onclick : "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v1, "KR"

    const-string v2, "SKT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$1;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v1}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->isUsimRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "SKT_ROAMING_NETWORK_RESELECTION_GUIDE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "networtk_reseletion_guide_msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$1;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v1, v0, v3, v3}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->showLocationFailDialogSKT(Ljava/lang/String;ZZ)V

    .line 360
    .end local v0    # "networtk_reseletion_guide_msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/RejectCauseBase$1;->this$0:Lcom/lge/telephony/KrRejectCause/RejectCauseBase;

    invoke-virtual {v1}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->clearStatusId()V

    goto :goto_0
.end method
