.class public interface abstract Lcom/android/internal/telephony/ILGImsPhoneCall;
.super Ljava/lang/Object;
.source "ILGImsPhoneCall.java"


# virtual methods
.method public abstract accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract canUpdate()Z
.end method

.method public abstract cancelUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract extendToConference([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getCallProfile()Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract getLGVideoProvider()Lcom/android/ims/LGVideoProvider;
.end method

.method public abstract getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract getProposedCallProfile()Lcom/android/ims/ImsCallProfile;
.end method

.method public abstract hangup(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract hangupNotResume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract inviteParticipants([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract reject(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract removeParticipants([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method
