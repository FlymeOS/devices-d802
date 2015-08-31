.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT_DCS:I = 0x8

.field public static final ENCODING_7BIT_DCS:I = 0x0

.field public static final ENCODING_8BIT_DCS:I = 0x84

.field public static final ENCODING_UNKNOWN_DCS:I = -0x1

.field private static final INVALID_VALIDITY_PERIOD:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final PID_1ST_SPECIAL_SMS:I = 0x48

.field public static final PID_2ND_SPECIAL_SMS:I = 0x5f

.field public static final PID_KT_CALLBACK_URL:I = 0x4e

.field public static final PID_KT_FOTA:I = 0x7d

.field public static final PID_KT_LBS:I = 0x51

.field public static final PID_KT_PORT_ADDRESS:I = 0x53

.field public static final PID_LGT_PORT_ADDRESS:I = 0x53

.field public static final PID_LMS:I = 0x4f

.field public static final PID_NORMAL_MESSAGE:I = 0x0

.field public static final PID_SKT_CALLBACK_URL:I = 0x91

.field public static final PID_SKT_PORT_ADDRESS:I = 0xa2

.field private static final VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final VALIDITY_PERIOD_MIN:I = 0x5

.field private static final VDBG:Z


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mMti:I

.field private mProtocolIdentifier:I

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private mVoiceMailCount:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 142
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 157
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 748
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 6
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 1061
    const/4 v1, 0x0

    .line 1062
    .local v1, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1063
    .local v3, "r":Landroid/content/res/Resources;
    const v5, #android:bool@config_sms_force_7bit_encoding#t

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1064
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1066
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1067
    move-object v1, p0

    .line 1069
    :cond_1
    invoke-static {v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 1070
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v4, :cond_3

    .line 1071
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1072
    .restart local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/lit8 v2, v5, 0x2

    .line 1073
    .local v2, "octets":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1074
    const/16 v5, 0x8c

    if-le v2, v5, :cond_4

    .line 1080
    const/16 v0, 0x86

    .line 1081
    .local v0, "max_user_data_bytes_with_header":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1083
    const/16 v5, 0x4a4

    if-gt v2, v5, :cond_2

    .line 1084
    add-int/lit8 v0, v0, -0x2

    .line 1087
    :cond_2
    add-int/lit8 v5, v0, -0x1

    add-int/2addr v5, v2

    div-int/2addr v5, v0

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1089
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v5, v0

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1095
    .end local v0    # "max_user_data_bytes_with_header":I
    :goto_0
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1097
    .end local v2    # "octets":I
    :cond_3
    return-object v4

    .line 1092
    .restart local v2    # "octets":I
    :cond_4
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1093
    rsub-int v5, v2, 0x8c

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 243
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 245
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 250
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 251
    const-string v5, "SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 268
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 255
    .restart local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 258
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 262
    .local v3, "size":I
    new-array v2, v3, [B

    .line 263
    .local v2, "pdu":[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 264
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 268
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 179
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 180
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 184
    goto :goto_0

    .line 185
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 187
    goto :goto_0
.end method

.method static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 542
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 544
    .local v1, "textPart":[B
    if-eqz p1, :cond_0

    .line 546
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 548
    .local v2, "userData":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 549
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 550
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 555
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 556
    .local v0, "ret":[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 557
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 558
    return-object v0

    .line 553
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_0
    move-object v2, v1

    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method public static getRelativeValidityPeriod(I)I
    .locals 5
    .param p0, "validityPeriod"    # I

    .prologue
    const v3, 0x9b0a0

    .line 303
    const/4 v0, -0x1

    .line 305
    .local v0, "relValidityPeriod":I
    const/4 v2, 0x5

    if-lt p0, v2, :cond_0

    if-le p0, v3, :cond_1

    .line 306
    :cond_0
    const-string v2, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Validity Period"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 319
    .end local v0    # "relValidityPeriod":I
    .local v1, "relValidityPeriod":I
    :goto_0
    return v1

    .line 310
    .end local v1    # "relValidityPeriod":I
    .restart local v0    # "relValidityPeriod":I
    :cond_1
    const/16 v2, 0x2d0

    if-gt p0, v2, :cond_3

    .line 311
    div-int/lit8 v2, p0, 0x5

    add-int/lit8 v0, v2, -0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 319
    .end local v0    # "relValidityPeriod":I
    .restart local v1    # "relValidityPeriod":I
    goto :goto_0

    .line 312
    .end local v1    # "relValidityPeriod":I
    .restart local v0    # "relValidityPeriod":I
    :cond_3
    const/16 v2, 0x5a0

    if-gt p0, v2, :cond_4

    .line 313
    add-int/lit16 v2, p0, -0x2d0

    div-int/lit8 v2, v2, 0x1e

    add-int/lit16 v0, v2, 0x8f

    goto :goto_1

    .line 314
    :cond_4
    const v2, 0xa8c0

    if-gt p0, v2, :cond_5

    .line 315
    div-int/lit16 v2, p0, 0x5a0

    add-int/lit16 v0, v2, 0xa6

    goto :goto_1

    .line 316
    :cond_5
    if-gt p0, v3, :cond_2

    .line 317
    div-int/lit16 v2, p0, 0x2760

    add-int/lit16 v0, v2, 0xc0

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originatorPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .prologue
    const/4 v7, 0x0

    .line 630
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 631
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 632
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 633
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 635
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 636
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 638
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 640
    .local v4, "smsHeaderData":[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 641
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v2, 0x0

    .line 674
    :goto_0
    return-object v2

    .line 646
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 647
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 654
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 658
    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v5, :cond_1

    .line 659
    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 664
    :cond_1
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 667
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 668
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 671
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 673
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    .line 609
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "validityPeriod"    # I

    .prologue
    const/4 v5, 0x0

    .line 590
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v5

    move v7, v5

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    .line 335
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I

    .prologue
    .line 363
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 21
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .prologue
    .line 387
    const/4 v4, 0x0

    const-string v5, "addProtocolID"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 388
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 529
    :goto_0
    return-object v15

    .line 396
    :cond_0
    const/4 v4, 0x0

    const-string v5, "sprint_segment_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    const/16 p4, 0x0

    .line 402
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_3

    .line 403
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 406
    :cond_3
    if-nez p5, :cond_6

    .line 413
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->includeForceGsmAlphabetLGLength(Ljava/lang/String;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v17

    .line 415
    .local v17, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 416
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 417
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 419
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    if-nez p6, :cond_4

    if-eqz p7, :cond_6

    .line 421
    :cond_4
    if-eqz p4, :cond_8

    .line 422
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v16

    .line 423
    .local v16, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v4, v0, :cond_5

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v4, v0, :cond_6

    .line 425
    :cond_5
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating language table in SMS header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move/from16 v0, p6

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 429
    move/from16 v0, p7

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 430
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 441
    .end local v16    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v17    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    :goto_1
    new-instance v15, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v15}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 443
    .local v15, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v20, 0x0

    .line 444
    .local v20, "validityPeriodFormat":I
    const/4 v14, -0x1

    .line 448
    .local v14, "relativeValidityPeriod":I
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v14

    if-ltz v14, :cond_7

    .line 449
    const/16 v20, 0x2

    .line 452
    :cond_7
    shl-int/lit8 v4, v20, 0x3

    or-int/lit8 v5, v4, 0x1

    if-eqz p4, :cond_9

    const/16 v4, 0x40

    :goto_2
    or-int/2addr v4, v5

    int-to-byte v13, v4

    .line 455
    .local v13, "mtiByte":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v13, v2, v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v11

    .line 462
    .local v11, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_a

    .line 463
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 489
    .local v19, "userData":[B
    :goto_3
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_e

    .line 490
    const/4 v4, 0x0

    aget-byte v4, v19, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa0

    if-le v4, v5, :cond_b

    .line 492
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message too long ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v19, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " septets)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 433
    .end local v11    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "mtiByte":B
    .end local v14    # "relativeValidityPeriod":I
    .end local v15    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v19    # "userData":[B
    .end local v20    # "validityPeriodFormat":I
    .restart local v17    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_8
    new-instance v16, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 434
    .restart local v16    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 435
    move/from16 v0, p7

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 436
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 452
    .end local v16    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v17    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v14    # "relativeValidityPeriod":I
    .restart local v15    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v20    # "validityPeriodFormat":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    .line 467
    .restart local v11    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "mtiByte":B
    :cond_a
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .restart local v19    # "userData":[B
    goto :goto_3

    .line 468
    .end local v19    # "userData":[B
    :catch_0
    move-exception v18

    .line 469
    .local v18, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v4, "SmsMessage"

    const-string v5, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 472
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 475
    .end local v18    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v12

    .line 479
    .local v12, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v19

    .line 480
    .restart local v19    # "userData":[B
    const/16 p5, 0x3

    goto :goto_3

    .line 481
    .end local v19    # "userData":[B
    :catch_2
    move-exception v18

    .line 482
    .restart local v18    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v4, "SmsMessage"

    const-string v5, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 503
    .end local v12    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v18    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v19    # "userData":[B
    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 517
    :goto_4
    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v4, :cond_c

    .line 518
    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 522
    :cond_c
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_d

    .line 524
    invoke-virtual {v11, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 527
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, v19

    array-length v5, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 528
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, v15, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 505
    :cond_e
    const/4 v4, 0x0

    aget-byte v4, v19, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8c

    if-le v4, v5, :cond_f

    .line 507
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message too long ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v19, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 512
    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 694
    const-string v1, "addProtocolID"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 696
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    .line 743
    :goto_0
    return-object v6

    .line 700
    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 704
    .local v6, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_3

    .line 705
    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 712
    :goto_1
    if-eqz p3, :cond_1

    .line 714
    or-int/lit8 v1, p2, 0x20

    int-to-byte p2, v1

    .line 719
    :cond_1
    sget v1, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v1, :cond_2

    .line 720
    or-int/lit8 v1, p2, 0x10

    int-to-byte p2, v1

    .line 724
    :cond_2
    invoke-virtual {v6, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 727
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 731
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v7

    .line 735
    .local v7, "daBytes":[B
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_4

    :goto_2
    sub-int v0, v1, v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 739
    array-length v0, v7

    invoke-virtual {v6, v7, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 742
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 707
    .end local v7    # "daBytes":[B
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_1

    .restart local v7    # "daBytes":[B
    :cond_4
    move v0, v4

    .line 735
    goto :goto_2
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 278
    .local v0, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "smscLen":I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 223
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 211
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 4
    .param p1, "pdu"    # [B

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1220
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1222
    .local v1, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1224
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1232
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1234
    .local v0, "firstByte":I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 1235
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_0

    .line 1251
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1241
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1253
    :goto_0
    return-void

    .line 1244
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1247
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1313
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1315
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1317
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1324
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1328
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1335
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1339
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1341
    .local v0, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1342
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_1
    move v1, v3

    .line 1313
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1339
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v1, 0x1

    .line 1262
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1265
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1267
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1269
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1270
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1272
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1275
    const/4 v3, 0x0

    const-string v4, "create_pdu_by_sms_status"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-ne v1, v3, :cond_0

    .line 1276
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1282
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1284
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1285
    .local v0, "extraParams":I
    move v2, v0

    .line 1286
    .local v2, "moreExtraParams":I
    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1290
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    .line 1294
    :cond_1
    and-int/lit8 v3, v0, 0x78

    if-nez v3, :cond_4

    .line 1296
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1297
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1300
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1301
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1304
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1305
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5

    .line 1306
    .local v1, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1310
    .end local v0    # "extraParams":I
    .end local v1    # "hasUserDataHeader":Z
    .end local v2    # "moreExtraParams":I
    :cond_4
    return-void

    .line 1305
    .restart local v0    # "extraParams":I
    .restart local v2    # "moreExtraParams":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1351
    and-int/lit16 v4, p2, 0x80

    const/16 v7, 0x80

    if-ne v4, v7, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->mzSetDestinationAddress()V

    const/4 v4, 0x0

    const-string v7, "seperate_processing_sms_uicc"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1359
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1363
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v4, :cond_1

    .line 1369
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1373
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1381
    const/4 v2, 0x0

    .line 1382
    .local v2, "validityPeriodLength":I
    shr-int/lit8 v4, p2, 0x3

    and-int/lit8 v1, v4, 0x3

    .line 1383
    .local v1, "validityPeriodFormat":I
    if-nez v1, :cond_3

    .line 1385
    const/4 v2, 0x0

    move v3, v2

    .line 1397
    .end local v2    # "validityPeriodLength":I
    .local v3, "validityPeriodLength":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    if-lez v3, :cond_5

    .line 1399
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .end local v1    # "validityPeriodFormat":I
    .end local v3    # "validityPeriodLength":I
    :cond_2
    move v4, v6

    .line 1351
    goto :goto_0

    .line 1387
    .restart local v1    # "validityPeriodFormat":I
    .restart local v2    # "validityPeriodLength":I
    :cond_3
    const/4 v4, 0x2

    if-ne v4, v1, :cond_4

    .line 1389
    const/4 v2, 0x1

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1393
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_4
    const/4 v2, 0x7

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1402
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_5
    and-int/lit8 v4, p2, 0x40

    const/16 v7, 0x40

    if-ne v4, v7, :cond_6

    move v0, v5

    .line 1404
    .local v0, "hasUserDataHeader":Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1405
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_6
    move v0, v6

    .line 1402
    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 17
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .prologue
    .line 1415
    const/4 v5, 0x0

    .line 1416
    .local v5, "hasMessageClass":Z
    const/4 v13, 0x0

    .line 1418
    .local v13, "userDataCompressed":Z
    const/4 v4, 0x0

    .line 1421
    .local v4, "encodingType":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0x80

    if-nez v14, :cond_8

    .line 1422
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_3

    const/4 v13, 0x1

    .line 1423
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_4

    const/4 v5, 0x1

    .line 1425
    :goto_1
    if-eqz v13, :cond_5

    .line 1426
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    :goto_2
    const/4 v14, 0x1

    if-ne v4, v14, :cond_17

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v3

    .line 1557
    .local v3, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1558
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1568
    if-eqz p2, :cond_1f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v14, v14, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_1f

    .line 1569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v14, v14, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1570
    .local v9, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v14, v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v10, v14, 0xff

    .line 1577
    .local v10, "msgInd":I
    if-eqz v10, :cond_1

    const/16 v14, 0x80

    if-ne v10, v14, :cond_1e

    .line 1578
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1579
    const/16 v14, 0x80

    if-ne v10, v14, :cond_18

    .line 1581
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1612
    :cond_2
    :goto_5
    iget v14, v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1620
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v14, :cond_1d

    .line 1621
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1625
    :goto_6
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Dont store = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Vmail count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1422
    .end local v3    # "count":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v10    # "msgInd":I
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1423
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1429
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v14, v14, 0x2

    and-int/lit8 v14, v14, 0x3

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_2

    .line 1431
    :pswitch_0
    const/4 v4, 0x1

    .line 1432
    goto/16 :goto_2

    .line 1435
    :pswitch_1
    const/4 v4, 0x3

    .line 1436
    goto/16 :goto_2

    .line 1440
    :pswitch_2
    const/4 v14, 0x0

    const-string v15, "KSC5601Decoding"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 1441
    const/4 v4, 0x2

    .line 1442
    goto/16 :goto_2

    .line 1448
    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 1449
    .local v12, "r":Landroid/content/res/Resources;
    const v14, #android:bool@config_sms_decode_gsm_8bit_data#t

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1451
    const/4 v4, 0x2

    .line 1452
    goto/16 :goto_2

    .line 1455
    .end local v12    # "r":Landroid/content/res/Resources;
    :cond_7
    :pswitch_3
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 1461
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xf0

    if-ne v14, v15, :cond_a

    .line 1462
    const/4 v5, 0x1

    .line 1463
    const/4 v13, 0x0

    .line 1465
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v14, v14, 0x4

    if-nez v14, :cond_9

    .line 1467
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1470
    :cond_9
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 1472
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xc0

    if-eq v14, v15, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xd0

    if-eq v14, v15, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xe0

    if-ne v14, v15, :cond_14

    .line 1481
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xe0

    if-ne v14, v15, :cond_c

    .line 1482
    const/4 v4, 0x3

    .line 1487
    :goto_7
    const/4 v13, 0x0

    .line 1488
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v14, v14, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_d

    const/4 v2, 0x1

    .line 1492
    .local v2, "active":Z
    :goto_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v14, v14, 0x3

    if-nez v14, :cond_10

    .line 1493
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1494
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1495
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xc0

    if-ne v14, v15, :cond_e

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1498
    const/4 v14, 0x1

    if-ne v2, v14, :cond_f

    .line 1499
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1504
    :goto_a
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MWI in DCS for Vmail. DCS = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Dont store = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " vmail count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1484
    .end local v2    # "active":Z
    :cond_c
    const/4 v4, 0x1

    goto :goto_7

    .line 1488
    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    .line 1495
    .restart local v2    # "active":Z
    :cond_e
    const/4 v14, 0x0

    goto :goto_9

    .line 1501
    :cond_f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_a

    .line 1510
    :cond_10
    const/4 v14, 0x0

    const-string v15, "voicemailWaitingIndication_MEGAFON"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    .line 1511
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 1512
    .local v7, "mSimOperator":Ljava/lang/String;
    if-eqz v7, :cond_12

    const-string v14, "25002"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1513
    const-string v14, "parseUserData(), MEGAFON RU, parse as voicemail message"

    invoke-static {v14}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1514
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1515
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xc0

    if-ne v14, v15, :cond_11

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto/16 :goto_2

    :cond_11
    const/4 v14, 0x0

    goto :goto_b

    .line 1517
    :cond_12
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1518
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MWI in DCS for fax/email/other: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1522
    .end local v7    # "mSimOperator":Ljava/lang/String;
    :cond_13
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1523
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MWI in DCS for fax/email/other: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1529
    .end local v2    # "active":Z
    :cond_14
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xc0

    const/16 v15, 0x80

    if-ne v14, v15, :cond_16

    .line 1532
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v15, 0x84

    if-ne v14, v15, :cond_15

    .line 1534
    const/4 v4, 0x4

    .line 1540
    :goto_c
    const/4 v14, 0x0

    const-string v15, "KSC5601Decoding"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 1542
    const/4 v5, 0x0

    .line 1543
    const/4 v13, 0x0

    .line 1546
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xf0

    invoke-static {v14, v15}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getEncodingTypeByDataCodingScheme(II)I

    move-result v4

    goto/16 :goto_2

    .line 1536
    :cond_15
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "5 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1550
    :cond_16
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "3 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1555
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1583
    .restart local v3    # "count":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .restart local v10    # "msgInd":I
    :cond_18
    const/4 v14, 0x0

    const-string v15, "KRVMSType"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1a

    .line 1584
    if-nez v10, :cond_2

    .line 1585
    const-string v14, "gsm.sim.operator.numeric"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1586
    .local v8, "mccmnc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parseUserData(), [KR_VMS] mccmnc : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1587
    const-string v14, "45008"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    const-string v14, "45002"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    const-string v14, "45005"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    const-string v14, ""

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1590
    :cond_19
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto/16 :goto_5

    .line 1594
    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v14, :cond_2

    .line 1602
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xd0

    if-eq v14, v15, :cond_1b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0xe0

    if-ne v14, v15, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v14, v14, 0x3

    if-eqz v14, :cond_2

    .line 1608
    :cond_1c
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto/16 :goto_5

    .line 1623
    :cond_1d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto/16 :goto_6

    .line 1635
    :cond_1e
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1641
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v10    # "msgInd":I
    :cond_1f
    packed-switch v4, :pswitch_data_1

    .line 1682
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v14, :cond_20

    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1687
    :cond_20
    const/4 v14, 0x0

    const-string v15, "dcm_service_type_ota_dm"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_21

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v11

    .line 1689
    .local v11, "protocolIdentifier":I
    const/16 v14, 0x7d

    if-ne v11, v14, :cond_21

    .line 1690
    const-string v14, ""

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1695
    .end local v11    # "protocolIdentifier":I
    :cond_21
    if-nez v5, :cond_26

    .line 1696
    sget-object v14, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1714
    :goto_e
    const/4 v14, 0x0

    const-string v15, "doNotUse_Class2"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_23

    .line 1715
    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v16, "sms_over_ims_in_ap"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-ne v14, v15, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v14

    const/16 v15, 0x7f

    if-eq v14, v15, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v14

    const/16 v15, 0x7c

    if-ne v14, v15, :cond_27

    .line 1717
    :cond_22
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pp download msg recv "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1727
    :cond_23
    :goto_f
    return-void

    .line 1643
    :pswitch_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_d

    .line 1648
    :pswitch_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parseUserData(), ENCODING_8BIT : messageBody is other binary data format encodingType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1650
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getMessageBodyBySimInfo(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_d

    .line 1666
    :pswitch_6
    if-eqz p2, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v14, v14, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v15, v14

    :goto_10
    if-eqz p2, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v14, v14, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15, v14}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_d

    :cond_24
    const/4 v14, 0x0

    move v15, v14

    goto :goto_10

    :cond_25
    const/4 v14, 0x0

    goto :goto_11

    .line 1672
    :pswitch_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_d

    .line 1676
    :pswitch_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_d

    .line 1698
    :cond_26
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v14, v14, 0x3

    packed-switch v14, :pswitch_data_2

    goto/16 :goto_e

    .line 1700
    :pswitch_9
    sget-object v14, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 1703
    :pswitch_a
    sget-object v14, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 1706
    :pswitch_b
    sget-object v14, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 1709
    :pswitch_c
    sget-object v14, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 1719
    :cond_27
    if-nez v5, :cond_28

    .line 1720
    sget-object v14, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_f

    .line 1722
    :cond_28
    sget-object v14, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_f

    .line 1429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1641
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1698
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public getConfirmReadInfo()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1861
    const-string v3, "GsmSmsKTConfirmRead"

    move-object v1, v2

    check-cast v1, [[B

    invoke-static {v3, v2, p0, v1, v2}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    .line 1862
    .local v0, "confirmReadMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-nez v0, :cond_0

    .line 1866
    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Lcom/lge/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0
.end method

.method public getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1892
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "address":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1894
    .local v3, "sum":I
    const-string v2, ""

    .line 1895
    .local v2, "messageId":Ljava/lang/String;
    const-string v4, "\\D+"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1896
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1897
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1899
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageId(), address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scTimestamp= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sum= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1902
    return-object v2
.end method

.method public getNumOfVoicemails()I
    .locals 2

    .prologue
    .line 1759
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1762
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1766
    :goto_0
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0

    .line 1764
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0
.end method

.method public getOriginalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1819
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1820
    .local v0, "originatingAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1821
    const-string v0, ""

    .line 1823
    .end local v0    # "originatingAddress":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1800
    const/4 v1, 0x0

    const-string v2, "kr_address_spec"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1802
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getreplyAddress()Ljava/lang/String;

    move-result-object v0

    .line 1803
    .local v0, "uiAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1810
    .end local v0    # "uiAddress":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1808
    .restart local v0    # "uiAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1810
    .end local v0    # "uiAddress":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1103
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getSmsDisplayMode()I
    .locals 1

    .prologue
    .line 1786
    const-string v0, "getSmsDisplayMode(), is not supported in GSM mode."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    .line 1787
    const/4 v0, -0x1

    return v0
.end method

.method public getSpecialMessageInfo()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1877
    const-string v4, "GsmSmsKRSpecialMessage"

    move-object v2, v3

    check-cast v2, [[B

    invoke-static {v4, v3, p0, v2, v3}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v1

    .line 1878
    .local v1, "specialMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-nez v1, :cond_0

    .line 1883
    :goto_0
    return-object v3

    .line 1882
    :cond_0
    invoke-interface {v1}, Lcom/lge/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "info":Landroid/os/Bundle;
    move-object v3, v0

    .line 1883
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public getreplyAddress()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1833
    const-string v5, "GsmSmsKTReplyAddress"

    move-object v3, v4

    check-cast v3, [[B

    invoke-static {v5, v4, p0, v3, v4}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v1

    .line 1834
    .local v1, "replyAddress":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-nez v1, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-object v4

    .line 1838
    :cond_1
    invoke-interface {v1}, Lcom/lge/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v0

    .line 1839
    .local v0, "info":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1843
    const-string v3, "valid"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1844
    const-string v3, "reply_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1845
    .local v2, "tmpReplyAddress":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1846
    const-string v4, ""

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 1848
    goto :goto_0

    .line 1850
    .end local v2    # "tmpReplyAddress":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1135
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1146
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    .line 1150
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1157
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v2, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v0

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1167
    const/4 v2, 0x0

    const-string v3, "Canada_voicemail"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1170
    const-string v2, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1171
    const-string v1, "isMwiDontStore(), CPHS with no userdata. No Display SMS."

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    :cond_2
    const-string v0, "isMwiDontStore(), CPHS with userdata. Dispaly SMS."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move v0, v1

    .line 1175
    goto :goto_0

    .line 1180
    :cond_3
    const-string v2, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 1185
    goto :goto_0
.end method

.method public isMwiUrgentMessage()Z
    .locals 1

    .prologue
    .line 1776
    const-string v0, "isMwiUrgentMessage(), is not supported in GSM mode."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    .line 1777
    const/4 v0, 0x0

    return v0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1204
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mzSetDestinationAddress()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    return-void
.end method
