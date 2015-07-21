.class abstract Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhoneBaseEx.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneBaseEx"


# instance fields
.field private mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

.field private mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 24
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    .line 30
    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/LGCallProfile;)V
    .locals 1
    .param p1, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->acceptCall(Lcom/android/internal/telephony/LGCallProfile;)V

    .line 154
    return-void
.end method

.method protected abstract addPendingMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
.end method

.method public createCallProfile(II)Lcom/android/internal/telephony/LGCallProfile;
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->createCallProfile(II)Lcom/android/internal/telephony/LGCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .param p1, "recipients"    # [Ljava/lang/String;
    .param p2, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 74
    array-length v5, p1

    if-le v5, v9, :cond_1

    .line 75
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 118
    :cond_0
    :goto_0
    return-object v4

    .line 79
    :cond_1
    new-instance v5, Ljava/lang/String;

    aget-object v6, p1, v8

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->setLastDialString(Ljava/lang/String;)V

    .line 82
    aget-object v5, p1, v8

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "newDialString":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    move-object v2, v3

    .line 94
    .local v2, "networkPortion":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isScMatchesSuppServType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 96
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->getMmiCodeFromDialString(Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v1

    .line 102
    .local v1, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const-string v5, "ImsPhoneBaseEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dial dialing w/ mmi \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-nez v1, :cond_3

    .line 106
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 109
    .local v0, "dialingNumbers":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v4, v0, v5, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dial([Ljava/lang/String;ILcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_0

    .line 110
    .end local v0    # "dialingNumbers":[Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/android/internal/telephony/LGMmiCode;->isSupportedOverUtInterface(Lcom/android/internal/telephony/MmiCode;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->addPendingMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 112
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 113
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V

    goto :goto_0

    .line 118
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected abstract getMmiCodeFromDialString(Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.end method

.method public isUtAvailable()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->isUtAvailable()Z

    move-result v0

    return v0
.end method

.method notifyImsCallConferenceStateChanged(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;)V
    .locals 1
    .param p1, "result"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method notifyImsCallUpdateReceived(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;)V
    .locals 1
    .param p1, "result"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method notifyImsRegServiceStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forRegServiceState(Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public processOverUtInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "networkPortion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 128
    const-string v1, "ImsPhoneBaseEx"

    const-string v2, "processOverUtInterface"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->getMmiCodeFromDialString(Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v0

    .line 133
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->addPendingMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V

    .line 138
    const/4 v1, 0x1

    .line 145
    :goto_0
    return v1

    .line 142
    :cond_0
    const-string v1, "ImsPhoneBaseEx"

    const-string v2, "processOverUtInterface mmi is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerForImsPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public rejectCall(I)V
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->rejectCall(I)V

    .line 158
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->removeReferences()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    .line 36
    return-void
.end method

.method protected setLGImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)V
    .locals 0
    .param p1, "ct"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mLgeCT:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    .line 40
    return-void
.end method

.method protected abstract setLastDialString(Ljava/lang/String;)V
.end method

.method public unregisterForImsPhoneStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->mImsPhoneStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 69
    return-void
.end method
