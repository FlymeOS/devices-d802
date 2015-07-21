.class public interface abstract Landroid/telephony/ILGSmsManager;
.super Ljava/lang/Object;
.source "ILGSmsManager.java"


# static fields
.field public static final RESULT_ERROR_CTA_SECURITY_FAILURE:I = 0x8


# virtual methods
.method public abstract copySmsToIcc([B[BI)I
.end method

.method public abstract copySmsToIccEfForSubscriber([B[BIJ)I
.end method

.method public abstract copySmsToIccEfPrivateForSubscriber([B[BIIJ)I
.end method

.method public abstract copySmsToIccPrivate([B[BII)I
.end method

.method public abstract deleteMessageFromIccMultiMode(II)Z
.end method

.method public abstract deleteMessageFromIccMultiModeForSubscriber(IIJ)Z
.end method

.method public abstract disableGsmBroadcastRange(II)Z
.end method

.method public abstract divideMessageEx(Ljava/lang/String;IZZ)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract enableAutoDCDisconnect(I)V
.end method

.method public abstract enableGsmBroadcastRange(II)Z
.end method

.method public abstract getIsSimFull()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMaxEfSms()I
.end method

.method public abstract getMaxEfSmsForSubscriber(J)I
.end method

.method public abstract getMaxEfSmsMultiModeForSubscriber(IJ)I
.end method

.method public abstract getServiceCenterAddress()Ljava/lang/String;
.end method

.method public abstract getSmsCenterAddressForSubscriber(J)Ljava/lang/String;
.end method

.method public abstract getUiccType()I
.end method

.method public abstract insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract isBlockSendMessage(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isFdnEnabled()Z
.end method

.method public abstract isFdnEnabledOnSubscription(J)Z
.end method

.method public abstract makeSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B
.end method

.method public abstract makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)[B
.end method

.method public abstract makeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[B)[B
.end method

.method public abstract makeSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)[B
.end method

.method public abstract notSendBeforeOtaService()V
.end method

.method public abstract notSendMsgInCall()V
.end method

.method public abstract sendEmailoverMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract sendEmailoverTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V
.end method

.method public abstract sendExceptionbySentIntent(Landroid/app/PendingIntent;I)V
.end method

.method public abstract sendExceptionbySentIntent(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IIIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextMessageWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextMessageWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendReadReceipt(Ljava/lang/String;I)V
.end method

.method public abstract sendTextMessageLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V
.end method

.method public abstract sendTextMessageWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IZ)V
.end method

.method public abstract sendTextMessageWithMsgOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/lge/internal/telephony/LGSendingSMSOption;)V
.end method

.method public abstract setIsSimFull(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMultipartTextValidityPeriodForSubscriber(IJ)V
.end method

.method public abstract setOptionsBeforeSend(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setServiceCenterAddress(Ljava/lang/String;)Z
.end method

.method public abstract setSmsCenterAddressForSubscriber(Ljava/lang/String;J)Z
.end method

.method public abstract setUiccType(I)V
.end method

.method public abstract smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z
.end method

.method public abstract updateSmsOnSimReadStatus(IZ)Z
.end method

.method public abstract updateSmsOnSimReadStatusForSubscriber(IZJ)Z
.end method
