.class public abstract Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;
.super Lcom/android/internal/telephony/Call;
.source "LGImsPhoneCallBase.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGCall;
.implements Lcom/android/internal/telephony/ILGImsPhoneCall;


# instance fields
.field protected mNotResumeBackground:Z

.field private mOwner:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->mNotResumeBackground:Z

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->mNotResumeBackground:Z

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->mOwner:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    .line 38
    return-void
.end method

.method private getImsCallOrThrowException()Lcom/android/ims/ImsCall;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 203
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 204
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "disconnected"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCallOrThrowException()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 124
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "disconnected"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public canUpdate()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 182
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->hasPendingUpdate()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cancelUpdate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCallOrThrowException()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 113
    .local v0, "call":Lcom/android/ims/ImsCall;
    const/16 v2, 0x1f9

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->terminate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "disconnected"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 4
    .param p1, "recipients"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCallOrThrowException()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 146
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    .line 149
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "Illegal state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "disconnected"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 53
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getImsCall()Lcom/android/ims/ImsCall;
.end method

.method public getLGImsPhoneCall()Lcom/android/internal/telephony/ILGImsPhoneCall;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public getLGVideoProvider()Lcom/android/ims/LGVideoProvider;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 193
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 197
    :cond_0
    return-object v1
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 61
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-object v2

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v3, "Call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocalCallProfile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProposedCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 71
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getProposedCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    goto :goto_0
.end method

.method public hangup(I)V
    .locals 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->mOwner:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->hangup(Lcom/android/internal/telephony/Call;I)V

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangupNotResume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->mNotResumeBackground:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->hangup()V

    .line 215
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCallOrThrowException()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 161
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "disconnected"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public reject(I)V
    .locals 4
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCallOrThrowException()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 135
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->reject(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "disconnected"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCallOrThrowException()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 172
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "disconnected"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getImsCallOrThrowException()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 87
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-gtz p1, :cond_0

    .line 88
    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallBase;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 92
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_0

    .line 93
    iget p1, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 98
    .end local v1    # "callProfile":Lcom/android/ims/ImsCallProfile;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_1

    .line 101
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Illegal state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "disconnected"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
