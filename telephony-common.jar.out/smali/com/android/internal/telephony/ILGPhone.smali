.class public interface abstract Lcom/android/internal/telephony/ILGPhone;
.super Ljava/lang/Object;
.source "ILGPhone.java"


# virtual methods
.method public abstract acceptCall(Lcom/android/internal/telephony/LGCallProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract createCallProfile(II)Lcom/android/internal/telephony/LGCallProfile;
.end method

.method public abstract dial([Ljava/lang/String;Lcom/android/internal/telephony/LGCallProfile;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract isUtAvailable()Z
.end method

.method public abstract registerForImsPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract unregisterForImsPhoneStateChanged(Landroid/os/Handler;)V
.end method
