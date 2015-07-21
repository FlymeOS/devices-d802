.class interface abstract Landroid/telephony/ILGSmsMessage;
.super Ljava/lang/Object;
.source "ILGSmsMessage.java"


# virtual methods
.method public abstract calculateEmojiLength(Ljava/lang/String;Z)[I
.end method

.method public abstract calculateLGLength(Ljava/lang/CharSequence;Z)[I
.end method

.method public abstract calculateLGLengthAuto(Ljava/lang/String;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method public abstract calculateLength(Ljava/lang/CharSequence;ZZ)[I
.end method

.method public abstract createDataCodingScheme(Landroid/telephony/SmsMessage$MessageClass;ZIIZI)B
.end method

.method public abstract findKSC5601LimitIndex(Ljava/lang/String;II)I
.end method

.method public abstract fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fragmentTextEx(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fragmentTextEx(Ljava/lang/String;IZZ)Ljava/util/ArrayList;
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

.method public abstract getBearerData(Lcom/android/internal/telephony/SmsMessageBase;)Lcom/android/internal/telephony/cdma/sms/BearerData;
.end method

.method public abstract getConfirmReadInfo(Lcom/android/internal/telephony/SmsMessageBase;)Landroid/os/Bundle;
.end method

.method public abstract getDataCodingScheme(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method public abstract getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Landroid/telephony/SmsMessage$DeliverPdu;
.end method

.method public abstract getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BII)Landroid/telephony/SmsMessage$DeliverPdu;
.end method

.method public abstract getNextPosForEmojiConcatMessage(CII)I
.end method

.method public abstract getOriginalAddress(Lcom/android/internal/telephony/SmsMessageBase;)Ljava/lang/String;
.end method

.method public abstract getReplyAddress(Lcom/android/internal/telephony/SmsMessageBase;)Ljava/lang/String;
.end method

.method public abstract getSmsFormatForLGU(I)Ljava/lang/String;
.end method

.method public abstract getSpecialMessageInfo(Lcom/android/internal/telephony/SmsMessageBase;)Landroid/os/Bundle;
.end method

.method public abstract getStaticDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)Landroid/telephony/SmsMessage$DeliverPdu;
.end method

.method public abstract getStaticSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII[B)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BLjava/lang/String;)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZLjava/lang/String;)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPduforEmailOverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPduforEmailOverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getTeleServiceId(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method public abstract makeSmsHeader(ILjava/lang/String;)[B
.end method

.method public abstract setValidityPeriod(I)V
.end method

.method public abstract uiccGetSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
.end method
