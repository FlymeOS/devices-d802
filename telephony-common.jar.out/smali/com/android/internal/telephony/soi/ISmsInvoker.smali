.class public interface abstract Lcom/android/internal/telephony/soi/ISmsInvoker;
.super Ljava/lang/Object;
.source "ISmsInvoker.java"


# virtual methods
.method public abstract acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public abstract getImsRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract notifyCdmaNewSms(Landroid/os/AsyncResult;)V
.end method

.method public abstract notifyNewSms(Landroid/os/AsyncResult;)V
.end method

.method public abstract notifyNewSmsOnSim(Landroid/os/AsyncResult;)V
.end method

.method public abstract notifyNewSmsStatusReport(Landroid/os/AsyncResult;)V
.end method

.method public abstract reportSmsMemoryStatus(ZLandroid/os/Message;)V
.end method

.method public abstract sendImsCdmaSms([BIILandroid/os/Message;)V
.end method

.method public abstract sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
.end method
