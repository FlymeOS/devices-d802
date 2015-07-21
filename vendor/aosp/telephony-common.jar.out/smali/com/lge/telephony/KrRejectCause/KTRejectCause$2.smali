.class Lcom/lge/telephony/KrRejectCause/KTRejectCause$2;
.super Ljava/lang/Object;
.source "KTRejectCause.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/KrRejectCause/KTRejectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/telephony/KrRejectCause/KTRejectCause;


# direct methods
.method constructor <init>(Lcom/lge/telephony/KrRejectCause/KTRejectCause;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause$2;->this$0:Lcom/lge/telephony/KrRejectCause/KTRejectCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 459
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 460
    packed-switch p2, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->isManagedRoamingDialogDisplayed:Z

    .line 479
    return-void

    .line 462
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "networkSettingIntent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    sget-object v1, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 470
    .end local v0    # "networkSettingIntent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause$2;->this$0:Lcom/lge/telephony/KrRejectCause/KTRejectCause;

    # getter for: Lcom/lge/telephony/KrRejectCause/KTRejectCause;->mStatusId:I
    invoke-static {v1}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->access$100(Lcom/lge/telephony/KrRejectCause/KTRejectCause;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 471
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause$2;->this$0:Lcom/lge/telephony/KrRejectCause/KTRejectCause;

    const-string v2, "kt_network_rej_code_status_lu_fail"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/telephony/KrRejectCause/KTRejectCause$2;->this$0:Lcom/lge/telephony/KrRejectCause/KTRejectCause;

    iget-boolean v3, v3, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->canShowAlert:Z

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
