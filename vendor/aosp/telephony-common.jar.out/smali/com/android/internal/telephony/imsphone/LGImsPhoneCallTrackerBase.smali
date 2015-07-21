.class public abstract Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
.super Lcom/android/internal/telephony/CallTracker;
.source "LGImsPhoneCallTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final EVENT_CALL_START_FAILED:I = 0x67

.field protected static final EVENT_IMS_REG_STATE_CHANGED:I = 0x65

.field protected static final EVENT_REDIAL_VOLTE:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTrackerBase"

.field private static final STATE_REGISTERED:I = 0x1

.field private static final STATE_REGISTERED_NO_VOLTE:I = 0x2

.field private static final STATE_UNREGISTERED:I


# instance fields
.field private mImsRegState:I

.field protected mLGImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field protected mLastCallProfile:Lcom/android/internal/telephony/LGCallProfile;

.field private mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;)V
    .locals 2
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mImsRegState:I

    .line 65
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mLastCallProfile:Lcom/android/internal/telephony/LGCallProfile;

    .line 67
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    .line 631
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;-><init>(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mLGImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onCallStartFailedInternal(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStartFailedInternal reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extraCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 565
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getPendingMOInternal()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 567
    .local v1, "pendingMO":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v0, :cond_1

    .line 569
    if-nez v1, :cond_0

    .line 570
    const-string v2, "onCallStartFailedInternal mPendingMO is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 575
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->close()V

    .line 600
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->isLGVideoCall(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGCallHelper;->isSupportedVoLteToVoLteRedial(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->sendEmptyMessage(I)Z

    .line 584
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->close()V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->isLGVideoCall(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/LGCallHelper;->isSupportedVoLteToCsRedial(IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    .line 591
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->clearPendingMOInternal(Z)V

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->initiateSilentRedialInternal()V

    .line 593
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->close()V

    goto :goto_0

    .line 596
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->resetPendingMOInternal()V

    .line 598
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mLGImsCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v2, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0
.end method


# virtual methods
.method acceptCall(Lcom/android/internal/telephony/LGCallProfile;)V
    .locals 5
    .param p1, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 275
    const-string v2, "acceptCall w/ callProfile"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot accept call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->setMuteInternal(Z)V

    .line 285
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mLastCallProfile:Lcom/android/internal/telephony/LGCallProfile;

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->switchWaitingOrHoldingAndActiveInternal()V

    .line 305
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    const-string v2, "acceptCall: incoming..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->setMuteInternal(Z)V

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 293
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_2

    .line 294
    iget-object v2, p1, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v2, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    iget-object v3, p1, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v2, v3}, Lcom/android/ims/ImsCall;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot accept call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "no valid ims call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract addPendingMOInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
.end method

.method protected abstract allowResumeBackground()V
.end method

.method protected abstract canDialInternal()Z
.end method

.method protected abstract clearDisconnectedInternal()V
.end method

.method protected abstract clearPendingMOInternal(Z)V
.end method

.method protected abstract contains(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z
.end method

.method public createCallProfile(II)Lcom/android/internal/telephony/LGCallProfile;
    .locals 6
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCallProfile serviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getServiceIdInternal()I

    move-result v1

    if-gez v1, :cond_0

    .line 323
    new-instance v1, Lcom/android/internal/telephony/LGCallProfile;

    invoke-direct {v1, v4, v5}, Lcom/android/internal/telephony/LGCallProfile;-><init>(ILcom/android/ims/ImsCallProfile;)V

    .line 331
    :goto_0
    return-object v1

    .line 327
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/LGCallProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsManagerInternal()Lcom/android/ims/ImsManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getServiceIdInternal()I

    move-result v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LGCallProfile;-><init>(Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCallProfile failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 331
    new-instance v1, Lcom/android/internal/telephony/LGCallProfile;

    invoke-direct {v1, v4, v5}, Lcom/android/internal/telephony/LGCallProfile;-><init>(ILcom/android/ims/ImsCallProfile;)V

    goto :goto_0
.end method

.method dial([Ljava/lang/String;ILcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1, "recipients"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->clearDisconnectedInternal()V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsManagerInternal()Lcom/android/ims/ImsManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "service not available"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->canDialInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    const/4 v8, 0x0

    .line 156
    .local v8, "holdBeforeDial":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 159
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_2
    const/4 v8, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->switchWaitingOrHoldingAndActiveInternal()V

    .line 166
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 167
    .local v7, "fgState":Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 169
    .local v6, "bgState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->setClirModeInternal(I)V

    .line 170
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mLastCallProfile:Lcom/android/internal/telephony/LGCallProfile;

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getSyncHoldInternal()Ljava/lang/Object;

    move-result-object v9

    .line 174
    .local v9, "syncHold":Ljava/lang/Object;
    monitor-enter v9

    .line 175
    if-eqz v8, :cond_5

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 180
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v1, :cond_4

    .line 181
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 185
    :cond_4
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v1, :cond_5

    .line 186
    const/4 v8, 0x0

    .line 190
    :cond_5
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 191
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsPhoneCallTrackerInternal()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Landroid/os/Bundle;)V

    .line 199
    .local v0, "pendingMO":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :goto_0
    invoke-interface {v0, p3}, Lcom/android/internal/telephony/imsphone/ILGImsPhoneConnectionInternal;->setRequestedLGCallProfile(Lcom/android/internal/telephony/LGCallProfile;)V

    .line 200
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->addPendingMOInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 203
    if-nez v8, :cond_6

    .line 204
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ILcom/android/internal/telephony/LGCallProfile;)V

    .line 207
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->updatePhoneStateInternal()V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyPreciseCallStateChanged()V

    .line 210
    return-object v0

    .line 194
    .end local v0    # "pendingMO":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_7
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsPhoneCallTrackerInternal()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Landroid/os/Bundle;)V

    .line 197
    .restart local v0    # "pendingMO":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/imsphone/ILGImsPhoneConnectionInternal;->setDialStrings([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "recipients"    # [Ljava/lang/String;
    .param p2, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "oirMode":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dial([Ljava/lang/String;ILcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2
.end method

.method protected dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ILcom/android/internal/telephony/LGCallProfile;)V
    .locals 9
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 214
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialInternal : address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Lcom/android/internal/telephony/imsphone/ILGImsPhoneConnectionInternal;->isConference()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x4e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    .line 225
    :cond_1
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->hangupPendingMOInternal()V

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->setMuteInternal(Z)V

    .line 243
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 247
    .local v4, "serviceType":I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/imsphone/ILGImsPhoneConnectionInternal;->getAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "callees":[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 250
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    .end local v0    # "callees":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 253
    .restart local v0    # "callees":[Ljava/lang/String;
    :cond_3
    iget-object v3, p3, Lcom/android/internal/telephony/LGCallProfile;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 255
    .local v3, "profile":Lcom/android/ims/ImsCallProfile;
    if-nez v3, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsManagerInternal()Lcom/android/ims/ImsManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getServiceIdInternal()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/ims/ImsManager;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    .line 260
    :cond_4
    const-string v5, "oir"

    invoke-virtual {v3, v5, p2}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsManagerInternal()Lcom/android/ims/ImsManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getServiceIdInternal()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v0, v7}, Lcom/android/ims/ImsManager;->makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 264
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    .end local v0    # "callees":[Ljava/lang/String;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v3    # "profile":Lcom/android/ims/ImsCallProfile;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialInternal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    .line 267
    const/16 v5, 0x24

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->hangupPendingMOInternal()V

    goto/16 :goto_0

    .end local v1    # "e":Lcom/android/ims/ImsException;
    .end local v4    # "serviceType":I
    :cond_5
    move v4, v5

    .line 243
    goto :goto_1
.end method

.method protected abstract dialPendingMo()V
.end method

.method protected abstract findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
.end method

.method protected abstract getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.end method

.method protected abstract getClirModeInternal()I
.end method

.method protected abstract getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.end method

.method protected abstract getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;
.end method

.method protected abstract getImsManagerInternal()Lcom/android/ims/ImsManager;
.end method

.method protected abstract getImsPhoneCallTrackerInternal()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end method

.method protected getLgDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I
    .locals 2
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 435
    const/16 v0, 0x24

    .line 438
    .local v0, "cause":I
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 439
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 504
    .end local v0    # "cause":I
    :goto_0
    return v0

    .line 441
    .restart local v0    # "cause":I
    :sswitch_0
    const/16 v0, 0x19

    goto :goto_0

    .line 445
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 448
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 458
    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 464
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    .line 471
    :sswitch_5
    const/16 v0, 0x12

    goto :goto_0

    .line 475
    :sswitch_6
    const/16 v0, 0xd

    goto :goto_0

    .line 479
    :sswitch_7
    const/16 v0, 0x11

    goto :goto_0

    .line 483
    :sswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_5
        0x6f -> :sswitch_7
        0x70 -> :sswitch_7
        0x79 -> :sswitch_5
        0x7a -> :sswitch_5
        0x83 -> :sswitch_5
        0x90 -> :sswitch_5
        0xc9 -> :sswitch_6
        0xca -> :sswitch_6
        0x141 -> :sswitch_4
        0x14d -> :sswitch_1
        0x14f -> :sswitch_8
        0x151 -> :sswitch_0
        0x152 -> :sswitch_2
        0x155 -> :sswitch_1
        0x15f -> :sswitch_4
        0x160 -> :sswitch_4
        0x161 -> :sswitch_8
        0x162 -> :sswitch_4
        0x169 -> :sswitch_3
        0x1fe -> :sswitch_3
    .end sparse-switch
.end method

.method protected abstract getPendingMOInternal()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.end method

.method protected abstract getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.end method

.method protected abstract getServiceIdInternal()I
.end method

.method protected abstract getSyncHoldInternal()Ljava/lang/Object;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    const/4 v2, 0x0

    .line 88
    .local v2, "newRegState":I
    const/4 v3, 0x0

    .line 91
    .local v3, "voiceCallRegistered":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsManagerInternal()Lcom/android/ims/ImsManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getServiceIdInternal()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/ims/ImsManager;->isConnected(III)Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 98
    :goto_1
    if-eqz v3, :cond_2

    .line 99
    const/4 v2, 0x1

    .line 111
    :cond_1
    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mImsRegState:I

    if-eq v4, v2, :cond_0

    .line 112
    iput v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mImsRegState:I

    .line 114
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    iget v5, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mImsRegState:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsRegServiceStateChanged(I)V

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IMS_REG_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsManagerInternal()Lcom/android/ims/ImsManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getServiceIdInternal()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/ims/ImsManager;->isConnected(III)Z
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const/4 v2, 0x2

    goto :goto_2

    .line 106
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IMS_REG_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 119
    .end local v1    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "newRegState":I
    .end local v3    # "voiceCallRegistered":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getPendingMOInternal()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getClirModeInternal()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mLastCallProfile:Lcom/android/internal/telephony/LGCallProfile;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;ILcom/android/internal/telephony/LGCallProfile;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;

    .line 124
    .local v0, "ce":Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;
    if-eqz v0, :cond_0

    .line 125
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;->mImsCall:Lcom/android/ims/ImsCall;

    iget-object v5, v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;->mImsReasonInfo:Lcom/android/ims/ImsReasonInfo;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->onCallStartFailedInternal(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hangup(Lcom/android/internal/telephony/Call;I)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangup call, reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 352
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no connections; reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, p1

    .line 355
    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 356
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    const/4 v2, 0x0

    .line 358
    .local v2, "rejectCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(ringing) hangup incoming; reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 360
    const/4 v2, 0x1

    .line 382
    :goto_0
    if-eqz v1, :cond_2

    .line 383
    if-eqz v2, :cond_7

    .line 384
    if-gtz p2, :cond_1

    const/16 p2, 0x1f8

    .end local p2    # "reason":I
    :cond_1
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_2
    :goto_1
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .end local p1    # "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 394
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyPreciseCallStateChanged()V

    .line 395
    return-void

    .line 361
    .restart local p1    # "call":Lcom/android/internal/telephony/Call;
    .restart local p2    # "reason":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 362
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(foregnd) hangup dialing or alerting...; reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(foregnd) hangup foreground; reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    if-ne p1, v3, :cond_6

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(backgnd) hangup waiting or background; reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsPhoneCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    :cond_7
    const/16 v3, 0x1f5

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 389
    .end local p2    # "reason":I
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup conn, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->contains(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->hangup(Lcom/android/internal/telephony/Call;I)V

    .line 345
    return-void
.end method

.method protected hangupInConference(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHangupLocal()V

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 432
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    goto :goto_0
.end method

.method protected abstract hangupPendingMOInternal()V
.end method

.method protected abstract hangupPendingMo()V
.end method

.method protected hangupPendingMoForIncomingCall(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V
    .locals 1
    .param p1, "pendingMO"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "isUnknown"    # Z

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_1

    .line 404
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 405
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->clearPendingMOInternal(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->updatePhoneStateInternal()V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 410
    :cond_1
    const-string v0, "hangupPendingMoForIncomingCall already invoked makeCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract initiateSilentRedialInternal()V
.end method

.method protected isLGVideoCall(Lcom/android/ims/ImsCall;)Z
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v1, 0x0

    .line 531
    if-nez p1, :cond_0

    .line 532
    const-string v2, "isLGVoiceCall imsCall is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 556
    :goto_0
    return v1

    .line 536
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 537
    .local v0, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    if-nez v0, :cond_1

    .line 538
    const-string v2, "isLGVoiceCall imsCallProfile is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLGVoiceCall mCallType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 543
    iget v2, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 552
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isUtAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsManagerInternal()Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 606
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    if-nez v2, :cond_1

    .line 625
    :cond_0
    :goto_0
    return v5

    .line 611
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v1

    .line 612
    .local v1, "imsConfig":Lcom/android/ims/ImsConfig;
    if-eqz v1, :cond_0

    .line 613
    const/16 v6, 0x70

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsConfig;->getMasterValue(I)I

    move-result v3

    .line 614
    .local v3, "ssDomain":I
    const/16 v6, 0x71

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsConfig;->getMasterValue(I)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 616
    .local v4, "ssPref":I
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 618
    const/4 v5, 0x1

    goto :goto_0

    .line 621
    .end local v1    # "imsConfig":Lcom/android/ims/ImsConfig;
    .end local v3    # "ssDomain":I
    .end local v4    # "ssPref":I
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUtAvailable get exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract keepBackgroundHeld()Z
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract processCallStateChangeInternal(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
.end method

.method rejectCall(I)V
    .locals 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectCall reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->hangup(Lcom/android/internal/telephony/Call;I)V

    .line 316
    return-void

    .line 314
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract resetPendingMOInternal()V
.end method

.method protected abstract resumeBackground()V
.end method

.method protected abstract setClirModeInternal(I)V
.end method

.method protected setDisconnectReason(Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;Lcom/android/ims/ImsReasonInfo;)I
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 508
    const/16 v0, 0x24

    .line 510
    .local v0, "cause":I
    if-eqz p2, :cond_0

    .line 511
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getLgDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I

    move-result v0

    .line 514
    :cond_0
    if-nez p1, :cond_1

    .line 515
    const-string v1, "setDisconnectReason conn is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    .line 527
    :goto_0
    return v0

    .line 519
    :cond_1
    if-nez p2, :cond_2

    .line 520
    const-string v1, "setDisconnectReason reasonInfo is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, p1, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mPreciseCause:I

    .line 525
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->setLastReasonInfo(Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0
.end method

.method protected abstract setMuteInternal(Z)V
.end method

.method protected abstract switchWaitingOrHoldingAndActiveInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method protected abstract updatePhoneStateInternal()V
.end method
