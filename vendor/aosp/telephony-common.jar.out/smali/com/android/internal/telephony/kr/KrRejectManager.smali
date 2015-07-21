.class public Lcom/android/internal/telephony/kr/KrRejectManager;
.super Landroid/os/Handler;
.source "KrRejectManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_GET_SERVICES_STATUS:I = 0x1

.field private static final EVENT_WCDMA_ACCEPT_RECEIVED:I = 0x3

.field private static final EVENT_WCDMA_REJECT_RECEIVED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "KrRejectManager"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/kr/KrServiceStateTracker;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "sst"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p3, "krSst"    # Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 59
    iput-object p3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaRejectReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaAcceptReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    invoke-static {p1}, Lcom/lge/telephony/KrRejectCause/RejectCauseFactory;->getDefaultRejectCause(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/lge/telephony/KrRejectCause/RejectCause;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0}, Lcom/lge/telephony/KrRejectCause/RejectCause;->initialize()V

    .line 69
    :cond_0
    return-void
.end method

.method private clearEsmEmmRejectCauseLGU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "esmRejectCause"    # Ljava/lang/String;
    .param p2, "lteEmmRejectCause"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const-string v1, "gsm.lge.lte_esm_reject_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "GSM/WCDMA CS/PS in-service : clear existing ESM reject"

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 180
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    const-string v1, "gsm.lge.lte_reject_cause"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.LTE_EMM_REJECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "rejectCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 185
    const-string v1, "gsm.radio.last_ltereject"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "GSM/WCDMA CS/PS in-service : clear existing LTE EMM reject"

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private clearRejectCauseLGU()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0, v1, v1}, Lcom/lge/telephony/KrRejectCause/RejectCause;->clearRejectCause(II)Z

    .line 102
    :cond_0
    return-void
.end method

.method private clearRejectCauseNotificationLGU(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "esmRejectCause"    # Ljava/lang/String;
    .param p2, "lteEmmRejectCause"    # Ljava/lang/String;
    .param p3, "dataRegState"    # I
    .param p4, "dataRadioTech"    # I

    .prologue
    const/4 v0, 0x0

    .line 192
    const/4 v1, 0x0

    const-string v2, "KR_REJECT_CAUSE"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string v1, "GSM/WCDMA CS/PS in-service : clear all reject notification"

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRejectManager;->clearRejectCauseLGU()V

    .line 200
    :cond_0
    if-nez p3, :cond_3

    const/16 v1, 0xe

    if-ne p4, v1, :cond_3

    .line 202
    const-string v1, "ril.gsm.mm_cause"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "ril.gsm.gmm_cause"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 204
    .local v0, "nonLteRejectReceived":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 205
    const-string v1, "LTE in-service : clear GSM/WCDMA reject"

    invoke-static {v1}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/telephony/kr/KrRejectManager;->clearRejectCauseLGU()V

    .line 211
    .end local v0    # "nonLteRejectReceived":Z
    :cond_3
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;Z)V

    .line 239
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "enforce"    # Z

    .prologue
    .line 243
    const-string v0, "KrRejectManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method


# virtual methods
.method protected clearLteRejectCauseLGU(III)V
    .locals 4
    .param p1, "voiceRegState"    # I
    .param p2, "dataRegState"    # I
    .param p3, "dataRadioTech"    # I

    .prologue
    .line 214
    const-string v2, "KR"

    const-string v3, "LGU"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 217
    :cond_0
    const-string v2, "gsm.lge.lte_esm_reject_cause"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "esmRejectCause":Ljava/lang/String;
    const-string v2, "gsm.lge.lte_reject_cause"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "lteEmmRejectCause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSM/WCDMA CS/PS in-service : esmRejectCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lteEmmRejectCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/kr/KrRejectManager;->clearEsmEmmRejectCauseLGU(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/kr/KrRejectManager;->clearRejectCauseNotificationLGU(Ljava/lang/String;Ljava/lang/String;II)V

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->updateSpnDisplay()V

    .line 228
    .end local v0    # "esmRejectCause":Ljava/lang/String;
    .end local v1    # "lteEmmRejectCause":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method clearRejectCause(II)V
    .locals 1
    .param p1, "mm"    # I
    .param p2, "gmm"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0, p1, p2}, Lcom/lge/telephony/KrRejectCause/RejectCause;->clearRejectCause(II)Z

    .line 96
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-static {}, Lcom/lge/telephony/KrRejectCause/RejectCauseFactory;->dispose()V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaRejectReceived(Landroid/os/Handler;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaAcceptReceived(Landroid/os/Handler;)V

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 78
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 79
    iput-object v1, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    .line 80
    return-void
.end method

.method getModemInfoServiceStatusKR()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    const-string v1, "KR_REJECT_CAUSE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "[LGE] getBal ModemItem.W_BASE.LGE_MODEM_INFO_SERVICE_STATUS"

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const v1, 0x6001c

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/kr/KrRejectManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getModemStringItem(ILandroid/os/Message;)V

    .line 90
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x6001c

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 108
    const/4 v3, 0x0

    const-string v4, "KR_REJECT_CAUSE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-nez v3, :cond_2

    .line 110
    :cond_0
    const-string v3, " handleMessage returned "

    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 116
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-interface {v4, v3}, Lcom/lge/telephony/KrRejectCause/RejectCause;->handleServiceStatusResult(Landroid/os/AsyncResult;)I

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 124
    const-string v3, "LTE reject received : ignore WCDMA reject unsol"

    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-interface {v4, v3}, Lcom/lge/telephony/KrRejectCause/RejectCause;->handleServiceStatusResult(Landroid/os/AsyncResult;)I

    move-result v2

    .line 127
    .local v2, "result":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/kr/KrRejectManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getModemStringItem(ILandroid/os/Message;)V

    goto :goto_0

    .line 131
    :cond_4
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 132
    const-string v3, "mRejectCause ERROR!!!"

    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_5
    const-string v3, "mRejectCause process Done"

    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 141
    .end local v2    # "result":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 143
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 144
    .local v1, "ints":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGT Network Accept: mm_accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gmm_accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/kr/KrRejectManager;->log(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    aget v4, v1, v5

    aget v5, v1, v6

    invoke-interface {v3, v4, v5}, Lcom/lge/telephony/KrRejectCause/RejectCause;->clearRejectCause(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 148
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/kr/KrRejectManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getModemStringItem(ILandroid/os/Message;)V

    .line 151
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mKrSST:Lcom/android/internal/telephony/kr/KrServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/kr/KrServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isManualSelectionAvailable()Z
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    const-string v1, "KR_REJECT_CAUSE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0}, Lcom/lge/telephony/KrRejectCause/RejectCause;->bManualSelectionAvailable()Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRejectCauseStateListener(Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRejectManager;->mRejectCause:Lcom/lge/telephony/KrRejectCause/RejectCause;

    invoke-interface {v0, p1}, Lcom/lge/telephony/KrRejectCause/RejectCause;->setRejectCauseStateListener(Lcom/lge/telephony/KrRejectCause/IRejectCauseStateListener;)V

    .line 235
    :cond_0
    return-void
.end method
