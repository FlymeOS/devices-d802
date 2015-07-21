.class public abstract Lcom/lge/telephony/KrRejectCause/SKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/RejectCauseBase;
.source "SKTRejectCause.java"


# static fields
.field protected static isManagedRoamingDialogDisplayed:Z


# instance fields
.field mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mStatusId:I

.field protected managedRoamingDialog:Landroid/app/AlertDialog;

.field onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mStatusId:I

    .line 160
    new-instance v0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/SKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 184
    new-instance v0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause$2;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause$2;-><init>(Lcom/lge/telephony/KrRejectCause/SKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 40
    sput-object p1, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 41
    return-void
.end method

.method private processIntentBroadcastForOTA(I)V
    .locals 5
    .param p1, "statusId"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "bOtaIsRunning":Z
    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "card_operator":Ljava/lang/String;
    const-string v3, "KT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.REJECTE_CAUSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "rejectIntent":Landroid/content/Intent;
    const-string v3, "mmReject"

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mm_reject_cause:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v3, "gmmReject"

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v3, "servicestate"

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->srv_status:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v3, "ril.gsm.reject_cause"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    sget-object v3, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 267
    const-string v3, "Send intent REJECTE_CAUSE"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 270
    .end local v2    # "rejectIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkGsmServiceStatus()I
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "statusId":I
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 124
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 126
    return v0
.end method

.method protected clearStatusId()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method protected createManagedRoamingDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 197
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v4, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    .line 202
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    sget-object v4, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mActivityManager":Landroid/app/ActivityManager;
    check-cast v0, Landroid/app/ActivityManager;

    .line 203
    .restart local v0    # "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 205
    .local v2, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    .line 206
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "runningTask":Ljava/lang/String;
    const-string v4, "com.android.phone.NetworkSetting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    .end local v3    # "runningTask":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->postDismissDialog()V

    .line 215
    const-string v4, "createManagedRoamingDialog show"

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 217
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "managed_roaming_dialog_content_skt"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "managed_roaming_dialog_ok_button_skt"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "managed_roaming_dialog_cancel_button_skt"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    .line 227
    iget-object v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 228
    iget-object v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    sput-boolean v7, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    .line 231
    iget-object v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 232
    iget-object v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-static {v4}, Lcom/android/internal/telephony/LGTelephonyUtils;->makePublic(Landroid/app/Dialog;)V

    .line 233
    iget-object v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 234
    const-string v4, "managedRoamingDialog show"

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected dismissManagedRoamingDialog()V
    .locals 1

    .prologue
    .line 238
    sget-boolean v0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->managedRoamingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 240
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    .line 242
    :cond_0
    return-void
.end method

.method protected getStatusIdFromRejectCause(II)I
    .locals 1
    .param p1, "cause"    # I
    .param p2, "statusId"    # I

    .prologue
    .line 131
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, p2

    .line 157
    .end local p2    # "statusId":I
    .local v0, "statusId":I
    :goto_0
    return v0

    .line 135
    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, p2

    .line 157
    .end local p2    # "statusId":I
    .restart local v0    # "statusId":I
    goto :goto_0

    .line 150
    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :pswitch_1
    move p2, p1

    .line 151
    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->initialize()V

    .line 110
    const-string v0, "gsm.rc_2_rs_3_5.exist"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "ril.gsm.reject_cause"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "ril.gsm.mm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "ril.gsm.gmm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected abstract processIntentBroadcast()V
.end method

.method protected processRejectCause()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 47
    const-string v4, "processRejectCause"

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 49
    const-string v4, "gsm.lge.ota_is_running"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isRejectDialogActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->postDismissDialog()V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->processIntentBroadcast()V

    .line 57
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->checkGsmServiceStatus()I

    move-result v3

    .line 59
    .local v3, "statusId":I
    invoke-direct {p0, v3}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->processIntentBroadcastForOTA(I)V

    .line 62
    iget v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->srv_status:I

    if-ne v4, v6, :cond_1

    if-nez v3, :cond_1

    sget-boolean v4, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v4, :cond_1

    .line 64
    const-string v4, "dismissManagedRoamingDialog"

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->dismissManagedRoamingDialog()V

    .line 69
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mm_reject_cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mm_reject_cause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gmm_reject_cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 72
    sget-object v4, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->isUsimPersoLocked(Landroid/content/Context;)Z

    move-result v0

    .line 73
    .local v0, "locked":Z
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    .line 74
    .local v2, "persoLockChecked":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", persoLockChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 75
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 76
    const-string v4, "Ignore the reject cause, PersoLock is not checked yet"

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 105
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    iget v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mStatusId:I

    if-ne v4, v3, :cond_4

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->pre_srv_status:I

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->srv_status:I

    if-eq v4, v5, :cond_2

    if-ne v3, v6, :cond_2

    .line 86
    :cond_4
    iget v4, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mStatusId:I

    if-ne v4, v6, :cond_5

    if-eq v3, v6, :cond_5

    .line 87
    const-string v4, "gsm.rc_2_rs_3_5.exist"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_5
    if-nez v3, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->initialize()V

    .line 93
    sget-object v4, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 94
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const v4, 0xc73b

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 95
    const-string v4, "clear reject notification"

    invoke-virtual {p0, v4}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->log(Ljava/lang/String;)V

    .line 100
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_6
    iput v3, p0, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->mStatusId:I

    .line 101
    const-string v4, "ril.gsm.reject_cause"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->processStatuId(I)V

    goto :goto_0
.end method
