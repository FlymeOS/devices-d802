.class public Lcom/lge/telephony/KrRejectCause/LGURejectCause;
.super Lcom/lge/telephony/KrRejectCause/RejectCauseBase;
.source "LGURejectCause.java"


# static fields
.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "LGURejectCause"


# instance fields
.field private mStatusId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 28
    sput-object p1, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 29
    return-void
.end method

.method private initializeCheckTempRejectWait()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->initialize()V

    .line 72
    const-string v0, "gsm.rc_2_rs_3_5.exist"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "ril.gsm.reject_cause"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 75
    return-void
.end method

.method private setMMTempRejected(Z)V
    .locals 2
    .param p1, "isTempRejected"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "ril.gsm.mm_temp"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "ril.gsm.mm_temp"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showRejectNotiLGU()V
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->isUsimRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mRejectCauseStateListener:Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mRejectCauseStateListener:Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-interface {v0, v1, v2}, Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;->notifyRejectCauseChanged(II)V

    goto :goto_0
.end method


# virtual methods
.method protected checkGsmServiceStatus()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "statusId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGsmServiceStatus() mm_reject_cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gmm_reject_cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 91
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    if-lez v1, :cond_0

    .line 94
    const-string v1, "ril.gsm.mm_cause"

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    if-lez v1, :cond_1

    .line 100
    const-string v1, "ril.gsm.gmm_cause"

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    iget-boolean v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause_changed:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    if-lez v1, :cond_3

    .line 110
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    .line 116
    :cond_2
    :goto_0
    return v0

    .line 112
    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    if-lez v1, :cond_2

    .line 113
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    goto :goto_0
.end method

.method public clearRejectCause(II)Z
    .locals 5
    .param p1, "clear_mm"    # I
    .param p2, "clear_gmm"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] clearRejectCause() clear_mm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clear_gmm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 211
    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 212
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    .line 213
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    .line 214
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    .line 253
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] clearRejectCause() mm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gmm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 255
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    if-nez v1, :cond_0

    .line 256
    sget-object v1, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 257
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0xc73b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return v3

    .line 217
    :cond_1
    if-ne p1, v3, :cond_4

    .line 218
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    .line 219
    iput-boolean v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause_changed:Z

    .line 220
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    if-nez v1, :cond_2

    .line 223
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto :goto_0

    .line 226
    :cond_2
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v2}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->isTempRejectAndNeedWait(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->initializeCheckTempRejectWait()V

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto :goto_0

    .line 232
    :cond_4
    if-ne p2, v3, :cond_7

    .line 233
    iput v4, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    .line 234
    iput-boolean v3, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause_changed:Z

    .line 235
    const-string v1, "ril.gsm.gmm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    if-nez v1, :cond_5

    .line 238
    const-string v1, "ril.gsm.mm_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto/16 :goto_0

    .line 241
    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mm_reject_cause:I

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v2}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->isTempRejectAndNeedWait(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->initializeCheckTempRejectWait()V

    goto/16 :goto_0

    .line 244
    :cond_6
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processRejectCause()V

    goto/16 :goto_0

    .line 249
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] clearRejectCause() Error clear_mm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clear_gmm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected clearStatusId()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method protected getStatusIdFromRejectCause(II)I
    .locals 1
    .param p1, "cause"    # I
    .param p2, "statusId"    # I

    .prologue
    .line 121
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, p2

    .line 180
    .end local p2    # "statusId":I
    .local v0, "statusId":I
    :goto_0
    return v0

    .line 171
    .end local v0    # "statusId":I
    .restart local p2    # "statusId":I
    :cond_1
    if-lez p1, :cond_2

    .line 172
    move p2, p1

    :cond_2
    move v0, p2

    .line 180
    .end local p2    # "statusId":I
    .restart local v0    # "statusId":I
    goto :goto_0
.end method

.method public initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/RejectCauseBase;->initialize()V

    .line 61
    const-string v0, "gsm.rc_2_rs_3_5.exist"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "ril.gsm.reject_cause"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "ril.gsm.mm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "ril.gsm.gmm_cause"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, v2}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->setMMTempRejected(Z)V

    .line 67
    iput v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 68
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "LGURejectCause"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method protected processRejectCause()V
    .locals 3

    .prologue
    .line 38
    const-string v1, "processRejectCause"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->checkGsmServiceStatus()I

    move-result v0

    .line 42
    .local v0, "statusId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous statusId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current statusId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 44
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    if-eq v1, v0, :cond_2

    .line 45
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->initialize()V

    .line 49
    :cond_0
    iput v0, p0, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->mStatusId:I

    .line 51
    const-string v1, "ril.gsm.reject_cause"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processStatuId(I)V

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->isRejectDialogActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {p0, v0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->processStatuId(I)V

    goto :goto_0
.end method

.method protected processStatuId(I)V
    .locals 4
    .param p1, "statusId"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStatuId : statusId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->log(Ljava/lang/String;)V

    .line 190
    const-string v1, "LGU"

    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected showDialog(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "canShow"    # Z
    .param p3, "enTimeout"    # Z

    .prologue
    .line 266
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-string v1, "ril.card_operator"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "operator":Ljava/lang/String;
    const-string v1, "LGU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/LGURejectCause;->showRejectNotiLGU()V

    goto :goto_0
.end method
