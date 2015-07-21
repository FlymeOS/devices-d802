.class public Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;
.super Lcom/android/internal/telephony/gsm/GsmCallTracker;
.source "GsmCallTrackerEx.java"


# static fields
.field private static final DBG_POLL:Z


# instance fields
.field private mIsEcmTimerCanceled:Z

.field mPendingCallClirMode:I

.field mPendingCallInEcm:Z

.field mPendingCallUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field private mPollTimeout:I

.field private mPollTimeoutCount:I

.field private mPollTimeoutExpired:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 43
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeout:I

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    .line 45
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mIsEcmTimerCanceled:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallInEcm:Z

    .line 57
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 216
    packed-switch p1, :pswitch_data_0

    .line 220
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 217
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 218
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private okUpdateCall(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 284
    const/4 v0, 0x1

    .line 286
    .local v0, "needNotify":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 287
    :cond_0
    const-string v2, "GsmCallTracker"

    const-string v3, "exceptcallstate --> Call instance is null "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 298
    .end local v0    # "needNotify":Z
    .local v1, "needNotify":I
    :goto_0
    return v1

    .line 291
    .end local v1    # "needNotify":I
    .restart local v0    # "needNotify":Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_4

    .line 294
    :cond_3
    const/4 v0, 0x0

    .line 295
    const-string v2, "GsmCallTracker"

    const-string v3, "exceptcallstate --> It does not need to be updated"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v0

    .line 298
    .restart local v1    # "needNotify":I
    goto :goto_0
.end method

.method private processDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v3, "GsmCallTracker"

    const-string v4, "processDialString()..."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v3, "GsmCallTracker"

    const-string v4, "dialString is empty"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    move-object v0, p1

    .line 137
    .local v0, "convertDialString":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    .line 138
    .local v2, "isVoiceMailCall":Z
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->is611DialNumber(Ljava/lang/String;)Z

    move-result v1

    .line 140
    .local v1, "is611number":Z
    if-eqz v2, :cond_2

    .line 141
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->convertInternationalVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v3, "GsmCallTracker"

    const-string v4, "processDialString()isVoiceMailCall TRUE!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , convertDialString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    .line 146
    invoke-static {p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->convertInternational611Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v3, "GsmCallTracker"

    const-string v4, "processDialString()is611number TRUE!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "GsmCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , convertDialString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "support_assisted_dialing"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "GSMCallTrackerEx  "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ********** Dial() before Assisted Dial Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/telephony/utils/AssistedDialUtils;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialFinalNumberForGSM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v3, "GSMCallTrackerEx "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "******** Dial() after Assisted Dial Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private radioLogForMLT(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 410
    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 411
    .local v3, "isDebugMode":Z
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 413
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 415
    .local v4, "mltRadioInfo":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 417
    :try_start_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v5, v6
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    const-string v5, "LOGRadioInfo : broadcast"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 429
    if-eqz v3, :cond_1

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOGRadioInfo : logRadioInfo     "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 433
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.LOG_RADIO_INFO"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    const-string v5, "exceptionType"

    const/16 v6, 0x10

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v5, "ModemLogData"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_1

    .line 422
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :cond_2
    const-string v5, "LOGRadioInfo : ar or ar.result = null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelEcmTimerForEmergencyCall(ZZ)V
    .locals 2
    .param p1, "isPhoneInEcmMode"    # Z
    .param p2, "isEmergencyCall"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_emergency_callback_mode_for_gsm"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->handleEcmTimer(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public dialForVolte(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 65
    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "inEcm":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 67
    .local v2, "isPhoneInEcmMode":Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 70
    .local v1, "isEmergencyCall":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialForVolte() - inEcm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEmergencyCall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 73
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 74
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->handleEcmTimer(I)V

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    const-string v4, "isInEmergencyCall set to true on dialForVolte()"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 79
    const-string v4, "ril.cdma.emergencyCall"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 90
    :cond_1
    :goto_1
    return v3

    .line 81
    :cond_2
    const-string v4, "ril.cdma.emergencyCall"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIsE911ForVolte(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->exitEmergencyCallbackMode()V

    .line 90
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected dialNormalCallInEcmMode(ZZILcom/android/internal/telephony/UUSInfo;)Z
    .locals 4
    .param p1, "isPhoneInEcmMode"    # Z
    .param p2, "isEmergencyCall"    # Z
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "support_emergency_callback_mode_for_gsm"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    move v0, v1

    .line 208
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->exitEmergencyCallbackMode()V

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallClirMode:I

    .line 203
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 204
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallInEcm:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 61
    return-void
.end method

.method protected getDialStringForOperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->processDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_smart_dialing"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/telephony/LGSpecialNumberUtils;->getDialStringForSprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_1
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 324
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-void

    .line 328
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 369
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 332
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallInEcm:Z

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallClirMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallUusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 336
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallInEcm:Z

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto :goto_0

    .line 344
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_POLL_DIAL_HANGUP_DONE: mPollTimeoutCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fgCall.getState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    .line 347
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 348
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeout:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 352
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    .line 353
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingOperations:I

    .line 354
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mLastRelevantPoll:Landroid/os/Message;

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 356
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    goto/16 :goto_0

    .line 363
    :sswitch_2
    const-string v0, "EVENT_LOG_RADIO_INFO_RECEIVED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->radioLogForMLT(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 328
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x18 -> :sswitch_1
        0x1b -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleSrvccConn(ILcom/android/internal/telephony/DriverCall;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_srvcc"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->supportSRVCC(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->initSrvccHandover()V

    .line 267
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isSrvccConfConn:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsSrvccConfConn:Z

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/telephony/LGSrvccManager;->setConfConn(Lcom/android/internal/telephony/Connection;)V

    .line 272
    :cond_0
    return-void
.end method

.method public hangUpForVolte(Z)Z
    .locals 2
    .param p1, "isE911WithEcbm"    # Z

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangUpForVolte() - isE911WithEcbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->handleEcmTimer(I)V

    .line 102
    :cond_0
    const-string v0, "isInEmergencyCall set to false on hangUpForVolte()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 103
    const-string v0, "ril.cdma.emergencyCall"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected initPendingCallInEcm()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallInEcm:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingCallInEcm:Z

    .line 193
    :cond_0
    return-void
.end method

.method protected pollCallsWhenCallTimeoutLGU(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 390
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingOperations:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    if-lez v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForegroundCall.getState()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingOperations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPollTimeoutCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mLastRelevantPoll:Landroid/os/Message;

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 398
    :cond_0
    return-void
.end method

.method protected restartEcmTimer()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_emergency_callback_mode_for_gsm"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->handleEcmTimer(I)V

    .line 187
    :cond_0
    return-void
.end method

.method protected sendIntentWhenStkCcModifiedNumber(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 375
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 377
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    .line 379
    const-string v2, "GsmCallTracker"

    const-string v3, "VOICE_STK_CC_MODIFIED - send broadcast"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.android.intent.action.voice_stk_cc_modified"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 384
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected sendRadioLogForMLT()V
    .locals 3

    .prologue
    .line 403
    const/4 v0, 0x0

    const-string v1, "SUPPORT_LOG_RF_INFO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const v1, 0xc0002

    const/16 v2, 0x1b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getModemStringItem(ILandroid/os/Message;)V

    .line 406
    :cond_0
    return-void
.end method

.method protected startOpDonePoll()V
    .locals 5

    .prologue
    const/16 v2, 0x18

    const/4 v4, 0x0

    .line 227
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOpDonePoll mPollTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPollTimeoutExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->removeMessages(I)V

    .line 230
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeout:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    .line 232
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    .line 234
    :cond_0
    return-void
.end method

.method protected stopOpDonePoll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopOpDonePoll mPollTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPollTimeoutExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 238
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->removeMessages(I)V

    .line 239
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    .line 240
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutCount:I

    .line 242
    :cond_0
    return-void
.end method

.method protected timeOutLGU(ILcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 4
    .param p1, "i"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    const/16 v3, 0xd

    const/4 v0, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPollTimeoutExpired is trigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 307
    iput v3, p2, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 309
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    .line 310
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPollTimeoutExpired:Z

    .line 311
    const/4 v0, 0x1

    .line 313
    :cond_0
    return v0
.end method

.method protected updatePhoneStateForOperator()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInEcmExitDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->exitEmergencyCallbackMode()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 257
    const-string v0, "isInEmergencyCall set to false updatePhoneState "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerEx;->log(Ljava/lang/String;)V

    .line 258
    const-string v0, "ril.cdma.emergencyCall"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    return-void
.end method
