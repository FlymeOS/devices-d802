.class public Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;
.super Ljava/lang/Object;
.source "LGCdmaSmsMessage.java"


# static fields
.field private static timeSmsOnCSim:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->timeSmsOnCSim:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 73
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthEx(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 58
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/LGCdmaSmsBearerData;->calcTextEncodingDetailsEx(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected static cdmaNANPcheckprocess(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 8
    .param p0, "destAddr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .prologue
    .line 1149
    const-string v5, "gsm.sim.operator.iso-country"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    .local v1, "defaultIso":Ljava/lang/String;
    const-string v5, "gsm.operator.iso-country"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "currIso":Ljava/lang/String;
    const-string v3, "011"

    .line 1152
    .local v3, "nanp_idp_string":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 1153
    .local v4, "nanpdestAddr":Ljava/lang/String;
    const-string v5, "gsm.operator.idpstring"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "idp_str":Ljava/lang/String;
    const-string v5, "us"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "privateGetSubmitPdu() : idp_str "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1158
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1162
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object p0

    .line 1163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "US_Sim privateGetSubmitPdu() : destAddr :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1166
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "privateGetSubmitPdu() : destAddr :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1167
    return-object p0
.end method

.method private static getCdmaDeliverPduSCTS(J)[B
    .locals 12
    .param p0, "msgtime"    # J

    .prologue
    .line 86
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 89
    .local v0, "byteoutput":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCdmaDeliverPduSCTS(), [SMS_VZW_UICC] 2. TimeZone.getDefault().getID() = ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 90
    new-instance v6, Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, "sctstime":Landroid/text/format/Time;
    invoke-virtual {v6, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 94
    iget v10, v6, Landroid/text/format/Time;->year:I

    const/16 v11, 0x7d0

    if-lt v10, v11, :cond_0

    iget v10, v6, Landroid/text/format/Time;->year:I

    add-int/lit16 v8, v10, -0x7d0

    .line 95
    .local v8, "year":I
    :goto_0
    iget v10, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v10, 0x1

    .line 98
    .local v4, "month":I
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->cdmaIntTobcdByte(I)B

    move-result v9

    .line 99
    .local v9, "yearByte":B
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->cdmaIntTobcdByte(I)B

    move-result v5

    .line 100
    .local v5, "monthByte":B
    iget v10, v6, Landroid/text/format/Time;->monthDay:I

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->cdmaIntTobcdByte(I)B

    move-result v1

    .line 101
    .local v1, "dayByte":B
    iget v10, v6, Landroid/text/format/Time;->hour:I

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->cdmaIntTobcdByte(I)B

    move-result v2

    .line 102
    .local v2, "hourByte":B
    iget v10, v6, Landroid/text/format/Time;->minute:I

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->cdmaIntTobcdByte(I)B

    move-result v3

    .line 103
    .local v3, "minuteByte":B
    iget v10, v6, Landroid/text/format/Time;->second:I

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->cdmaIntTobcdByte(I)B

    move-result v7

    .line 106
    .local v7, "secondByte":B
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 107
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    return-object v10

    .line 94
    .end local v1    # "dayByte":B
    .end local v2    # "hourByte":B
    .end local v3    # "minuteByte":B
    .end local v4    # "month":I
    .end local v5    # "monthByte":B
    .end local v7    # "secondByte":B
    .end local v8    # "year":I
    .end local v9    # "yearByte":B
    :cond_0
    iget v10, v6, Landroid/text/format/Time;->year:I

    add-int/lit16 v8, v10, -0x76c

    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    .locals 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "time"    # J
    .param p6, "header"    # [B
    .param p7, "encodingtype"    # I

    .prologue
    .line 130
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 131
    :cond_0
    const/4 v5, 0x0

    .line 238
    :goto_0
    return-object v5

    .line 134
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;-><init>()V

    .line 137
    .local v5, "ret":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    if-eqz p6, :cond_2

    const/16 v9, 0x40

    :goto_1
    or-int/lit8 v9, v9, 0x0

    int-to-byte v4, v9

    .line 139
    .local v4, "mtiByte":B
    invoke-static {p0, p1, v4, p3, v5}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 142
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x1

    move/from16 v0, p7

    if-ne v0, v9, :cond_6

    .line 148
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p6

    invoke-static {p2, v0, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v8

    .line 150
    .local v8, "userData":[B
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xa0

    if-le v9, v10, :cond_3

    .line 152
    const/4 v5, 0x0

    goto :goto_0

    .line 137
    .end local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "mtiByte":B
    .end local v8    # "userData":[B
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 157
    .restart local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "mtiByte":B
    .restart local v8    # "userData":[B
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 161
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v2, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedMessage:[B

    goto :goto_0

    .line 162
    .end local v8    # "userData":[B
    :catch_0
    move-exception v3

    .line 168
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v9, "utf-16be"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 174
    .local v6, "textPart":[B
    if-eqz p6, :cond_4

    .line 175
    move-object/from16 v0, p6

    array-length v9, v0

    array-length v10, v6

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 176
    .restart local v8    # "userData":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p6

    array-length v11, v0

    move-object/from16 v0, p6

    invoke-static {v0, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 177
    const/4 v9, 0x0

    move-object/from16 v0, p6

    array-length v10, v0

    array-length v11, v6

    invoke-static {v6, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    :goto_3
    array-length v9, v8

    const/16 v10, 0x8c

    if-le v9, v10, :cond_5

    .line 184
    const/4 v5, 0x0

    goto :goto_0

    .line 169
    .end local v6    # "textPart":[B
    .end local v8    # "userData":[B
    :catch_1
    move-exception v7

    .line 170
    .local v7, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v9, "getDeliverPdu(), Implausible UnsupportedEncodingException"

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 171
    const/4 v5, 0x0

    goto :goto_0

    .line 179
    .end local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "textPart":[B
    :cond_4
    move-object v8, v6

    .restart local v8    # "userData":[B
    goto :goto_3

    .line 189
    :cond_5
    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 195
    array-length v9, v8

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v2, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 205
    .end local v3    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v6    # "textPart":[B
    .end local v8    # "userData":[B
    :cond_6
    :try_start_2
    const-string v9, "utf-16be"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 211
    .restart local v6    # "textPart":[B
    if-eqz p6, :cond_7

    .line 212
    move-object/from16 v0, p6

    array-length v9, v0

    array-length v10, v6

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 213
    .restart local v8    # "userData":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p6

    array-length v11, v0

    move-object/from16 v0, p6

    invoke-static {v0, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 214
    const/4 v9, 0x0

    move-object/from16 v0, p6

    array-length v10, v0

    array-length v11, v6

    invoke-static {v6, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 219
    :goto_4
    array-length v9, v8

    const/16 v10, 0x8c

    if-le v9, v10, :cond_8

    .line 221
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 206
    .end local v6    # "textPart":[B
    .end local v8    # "userData":[B
    :catch_2
    move-exception v7

    .line 207
    .restart local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v9, "getDeliverPdu(), Implausible UnsupportedEncodingException"

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 208
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 216
    .end local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "textPart":[B
    :cond_7
    move-object v8, v6

    .restart local v8    # "userData":[B
    goto :goto_4

    .line 226
    :cond_8
    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 232
    array-length v9, v8

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v2, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_2
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    .prologue
    const/4 v3, 0x0

    .line 256
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 259
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_2

    .line 260
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 266
    :goto_0
    if-eqz p3, :cond_0

    .line 268
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 270
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 273
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 277
    .local v1, "oaBytes":[B
    if-eqz v1, :cond_1

    .line 278
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 285
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 287
    :cond_1
    return-object v0

    .line 262
    .end local v1    # "oaBytes":[B
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1    # "oaBytes":[B
    :cond_3
    move v2, v3

    .line 278
    goto :goto_1
.end method

.method private static getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 12
    .param p0, "msgtime"    # J
    .param p2, "byteoutput"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 302
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDeliverPduSCTS(), [SMS_VZW_UICC] 1. TimeZone.getDefault().getID() = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 303
    new-instance v5, Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 305
    .local v5, "sctstime":Landroid/text/format/Time;
    invoke-virtual {v5, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 307
    iget v9, v5, Landroid/text/format/Time;->year:I

    const/16 v10, 0x7d0

    if-lt v9, v10, :cond_0

    iget v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit16 v7, v9, -0x7d0

    .line 308
    .local v7, "year":I
    :goto_0
    iget v9, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v9, 0x1

    .line 312
    .local v3, "month":I
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v8

    .line 313
    .local v8, "yearByte":B
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    .line 314
    .local v4, "monthByte":B
    iget v9, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v0

    .line 315
    .local v0, "dayByte":B
    iget v9, v5, Landroid/text/format/Time;->hour:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v1

    .line 316
    .local v1, "hourByte":B
    iget v9, v5, Landroid/text/format/Time;->minute:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v2

    .line 317
    .local v2, "minuteByte":B
    iget v9, v5, Landroid/text/format/Time;->second:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    .line 320
    .local v6, "secondByte":B
    invoke-virtual {p2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 324
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    invoke-virtual {p2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 326
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    return-object p2

    .line 307
    .end local v0    # "dayByte":B
    .end local v1    # "hourByte":B
    .end local v2    # "minuteByte":B
    .end local v3    # "month":I
    .end local v4    # "monthByte":B
    .end local v6    # "secondByte":B
    .end local v7    # "year":I
    .end local v8    # "yearByte":B
    :cond_0
    iget v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit16 v7, v9, -0x76c

    goto :goto_0
.end method

.method public static getDeliverPriority(Lcom/android/internal/telephony/cdma/sms/BearerData;)I
    .locals 1
    .param p0, "mBearerData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v0, :cond_0

    .line 1100
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDomainNotiPdu(Ljava/lang/String;Ljava/lang/String;[BZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 3
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 495
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 496
    :cond_0
    const-string v1, "getDomainNotiPdu(), [Domain Notification] No data or No destination Address."

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x0

    .line 506
    :goto_0
    return-object v1

    .line 499
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 500
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 501
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 503
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 504
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomainNotiPdu(), [Domain Notification] userData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 506
    invoke-static {p1, p3, v0}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->privateGetDomainNotiPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getParameterLength(B)I
    .locals 4
    .param p0, "paramLen"    # B

    .prologue
    .line 1088
    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 1089
    .local v0, "firstNumber":I
    and-int/lit8 v2, p0, 0xf

    .line 1090
    .local v2, "secondNumber":I
    mul-int/lit8 v3, v0, 0x10

    add-int v1, v3, v2

    .line 1092
    .local v1, "parameterLen":I
    return v1
.end method

.method public static getPrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;)I
    .locals 1
    .param p0, "mBearerData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v0, :cond_0

    .line 1111
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "MessageId"    # I

    .prologue
    .line 667
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLcom/lge/internal/telephony/LGSendingSMSOption;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "msgOption"    # Lcom/lge/internal/telephony/LGSendingSMSOption;

    .prologue
    .line 663
    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Lcom/lge/internal/telephony/LGSendingSMSOption;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "cbAddress"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z
    .param p5, "cbAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 628
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 629
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 630
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 631
    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 633
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 634
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 636
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 637
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 638
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 639
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 640
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 642
    invoke-static {p1, p4, v2, p5}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Lcom/lge/internal/telephony/LGSendingSMSOption;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "msgOption"    # Lcom/lge/internal/telephony/LGSendingSMSOption;

    .prologue
    .line 677
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 678
    :cond_0
    const/4 v1, 0x0

    .line 684
    :goto_0
    return-object v1

    .line 681
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 682
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 683
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 684
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Lcom/lge/internal/telephony/LGSendingSMSOption;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "cbAddress"    # Ljava/lang/String;

    .prologue
    .line 596
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 597
    :cond_0
    const/4 v1, 0x0

    .line 603
    :goto_0
    return-object v1

    .line 600
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 601
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 602
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 603
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTimeforSMSonCSim()J
    .locals 2

    .prologue
    .line 706
    sget-wide v0, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->timeSmsOnCSim:J

    return-wide v0
.end method

.method private static privateGetDomainNotiPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 13
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 510
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 513
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 514
    .local v1, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    iput v10, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 516
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 517
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 518
    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 519
    iput-boolean v11, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 521
    iput-boolean v12, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 522
    iput v10, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 523
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 524
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 526
    .local v4, "encodedBearerData":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "privateGetDomainNotiPdu(), [Domain Notification] BearerData(str): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "privateGetDomainNotiPdu(), [Domain Notification] BearerData(bin) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "privateGetDomainNotiPdu(), MO (encoded) BearerData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 530
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "privateGetDomainNotiPdu(), MO raw BearerData = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 532
    if-nez v4, :cond_0

    move-object v7, v8

    .line 570
    :goto_0
    return-object v7

    .line 536
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 537
    .local v5, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 538
    const/16 v9, 0x1092

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 539
    iput-object v2, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 540
    iput v12, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 541
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 543
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 544
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 545
    .local v3, "dos":Ljava/io/DataOutputStream;
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 546
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 547
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 548
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 549
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 550
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 551
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 552
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 553
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v10, 0x0

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 555
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 556
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 557
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 558
    array-length v9, v4

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 559
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v3, v4, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 560
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 562
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 563
    .local v7, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 564
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "privateGetDomainNotiPdu(), [Domain Notification] encodeMessage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 565
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 567
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v6

    .line 568
    .local v6, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "privateGetDomainNotiPdu(), [Domain Notification] creating SubmitPdu failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    move-object v7, v8

    .line 570
    goto/16 :goto_0
.end method

.method public static privateGetSubmitPdu(Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "MessageId"    # I

    .prologue
    const/4 v7, 0x0

    .line 954
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 958
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmsMessage : privateGetSubmitPdu() - raw destAddrStr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SmsMessage : privateGetSubmitPdu() - parse destAddr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 961
    if-nez v2, :cond_0

    move-object v6, v7

    .line 1014
    :goto_0
    return-object v6

    .line 965
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 967
    .local v1, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v8, 0x6

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 968
    iput p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 970
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 971
    .local v4, "encodedBearerData":[B
    if-nez v4, :cond_1

    move-object v6, v7

    .line 972
    goto :goto_0

    .line 975
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privateGetSubmitPdu(), MO (encoded) BearerData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 976
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privateGetSubmitPdu(), MO raw BearerData = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 988
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 989
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 990
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 991
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 992
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 993
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 994
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 995
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 996
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 997
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 998
    iget-object v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    invoke-virtual {v3, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1000
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 1001
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 1002
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 1003
    array-length v8, v4

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 1004
    const/4 v8, 0x0

    array-length v9, v4

    invoke-virtual {v3, v4, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1005
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1007
    new-instance v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1008
    .local v6, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1009
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1011
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v5

    .line 1012
    .local v5, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privateGetSubmitPdu(), creating SubmitPdu failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    move-object v6, v7

    .line 1014
    goto/16 :goto_0
.end method

.method public static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Lcom/lge/internal/telephony/LGSendingSMSOption;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 14
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "msgOption"    # Lcom/lge/internal/telephony/LGSendingSMSOption;

    .prologue
    .line 841
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v4

    .line 844
    .local v4, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mCBNumber:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 846
    .local v3, "cbAddrStr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - raw destAddrStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 847
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - raw cbAddress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mCBNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 848
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - parse destAddr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 849
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - parse cbAddrStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 851
    if-nez v4, :cond_0

    .line 852
    const/4 v9, 0x0

    .line 940
    :goto_0
    return-object v9

    .line 854
    :cond_0
    if-nez v3, :cond_1

    .line 855
    const/4 v9, 0x0

    goto :goto_0

    .line 858
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 860
    .local v2, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 861
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v11

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 863
    iput-boolean p1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 864
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 865
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mReadReceiptIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 866
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 869
    const/4 v11, 0x0

    const-string v12, "cdma_priority_indicator"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 870
    move-object/from16 v0, p3

    iget v11, v0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 871
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 872
    move-object/from16 v0, p3

    iget v11, v0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 876
    :cond_2
    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 877
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 879
    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 881
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 882
    .local v6, "encodedBearerData":[B
    if-nez v6, :cond_5

    .line 883
    const/4 v9, 0x0

    goto :goto_0

    .line 865
    .end local v6    # "encodedBearerData":[B
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 877
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 886
    .restart local v6    # "encodedBearerData":[B
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "privateGetSubmitPdu(), MO (encoded) BearerData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 887
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "privateGetSubmitPdu(), MO raw BearerData = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 889
    iget-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v11, :cond_7

    const/16 v10, 0x1005

    .line 893
    .local v10, "teleservice":I
    :goto_3
    const/4 v11, 0x0

    const-string v12, "support_7bit_ascii_ems"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 894
    const/16 v10, 0x1002

    .line 897
    :cond_6
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 898
    .local v7, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v11, 0x0

    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 899
    iput v10, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 900
    iput-object v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 901
    const/4 v11, 0x1

    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 902
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 914
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x64

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 915
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 916
    .local v5, "dos":Ljava/io/DataOutputStream;
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 917
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 918
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 919
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 920
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 921
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 922
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 923
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 924
    iget-object v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v12, 0x0

    iget-object v13, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v13, v13

    invoke-virtual {v5, v11, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 926
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 927
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 928
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 929
    array-length v11, v6

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 930
    const/4 v11, 0x0

    array-length v12, v6

    invoke-virtual {v5, v6, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 931
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 933
    new-instance v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 934
    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 935
    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 937
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v8

    .line 938
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "privateGetSubmitPdu(), creating SubmitPdu failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 940
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 889
    .end local v7    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "teleservice":I
    :cond_7
    const/16 v10, 0x1002

    goto/16 :goto_3
.end method

.method public static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 14
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "cbAddress"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v4

    .line 730
    .local v4, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 732
    .local v3, "cbAddrStr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - raw destAddrStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 733
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - raw cbAddress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 734
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - parse destAddr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 735
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsMessage : privateGetSubmitPdu() - parse cbAddrStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 737
    if-nez v4, :cond_0

    const/4 v9, 0x0

    .line 824
    :goto_0
    return-object v9

    .line 738
    :cond_0
    if-nez v3, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 741
    :cond_1
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->cdmaNANPcheckprocess(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v4

    .line 744
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 746
    .local v2, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 747
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v11

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 749
    iput-boolean p1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 750
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 751
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 752
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 755
    const/4 v11, 0x0

    const-string v12, "cdma_priority_indicator"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 756
    sget v11, Lcom/android/internal/telephony/cdma/SmsMessage;->mSubmitPriority:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 757
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 758
    sget v11, Lcom/android/internal/telephony/cdma/SmsMessage;->mSubmitPriority:I

    iput v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 762
    :cond_2
    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 763
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 765
    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 767
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 768
    .local v6, "encodedBearerData":[B
    if-nez v6, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    .line 763
    .end local v6    # "encodedBearerData":[B
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 770
    .restart local v6    # "encodedBearerData":[B
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "privateGetSubmitPdu(), MO (encoded) BearerData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 771
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "privateGetSubmitPdu(), MO raw BearerData = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 773
    iget-boolean v11, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v11, :cond_6

    const/16 v10, 0x1005

    .line 777
    .local v10, "teleservice":I
    :goto_2
    const/4 v11, 0x0

    const-string v12, "support_7bit_ascii_ems"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 778
    const/16 v10, 0x1002

    .line 781
    :cond_5
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 782
    .local v7, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v11, 0x0

    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 783
    iput v10, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 784
    iput-object v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 785
    const/4 v11, 0x1

    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 786
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 798
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x64

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 799
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 800
    .local v5, "dos":Ljava/io/DataOutputStream;
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 801
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 802
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 803
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 804
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 805
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 806
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 807
    iget v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 808
    iget-object v11, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v12, 0x0

    iget-object v13, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v13, v13

    invoke-virtual {v5, v11, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 810
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 811
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 812
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 813
    array-length v11, v6

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 814
    const/4 v11, 0x0

    array-length v12, v6

    invoke-virtual {v5, v6, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 815
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 817
    new-instance v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 818
    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 819
    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 821
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v8

    .line 822
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "privateGetSubmitPdu(), creating SubmitPdu failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 824
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 773
    .end local v7    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "teleservice":I
    :cond_6
    const/16 v10, 0x1002

    goto/16 :goto_2
.end method

.method public static ruimGetDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;J)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    .locals 3
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "msgTime"    # J

    .prologue
    .line 1041
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1042
    :cond_0
    const/4 v1, 0x0

    .line 1048
    :goto_0
    return-object v1

    .line 1045
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1046
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1047
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1048
    invoke-static {p1, p3, v0, p5, p6}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->ruimPrivateGetDeliverPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;J)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static ruimGetSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 1074
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1075
    :cond_0
    const/4 v1, 0x0

    .line 1082
    :goto_0
    return-object v1

    .line 1078
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1079
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1080
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1082
    invoke-static {p1, p3, v0}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->ruimPrivateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method private static ruimPrivateGetDeliverPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;J)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    .locals 13
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "msgTime"    # J

    .prologue
    .line 334
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 335
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_0

    .line 336
    const/4 v7, 0x0

    .line 409
    :goto_0
    return-object v7

    .line 339
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 340
    .local v1, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v9, 0x1

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 342
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 344
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 345
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 346
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 347
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 354
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 356
    iget-object v9, p2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 357
    const-wide/16 v10, 0x0

    cmp-long v9, p3, v10

    if-eqz v9, :cond_1

    invoke-static/range {p3 .. p4}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getCdmaDeliverPduSCTS(J)[B

    move-result-object v9

    if-eqz v9, :cond_1

    .line 358
    invoke-static/range {p3 .. p4}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getCdmaDeliverPduSCTS(J)[B

    move-result-object v6

    .line 359
    .local v6, "msgTimes":[B
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->encodefromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 362
    .end local v6    # "msgTimes":[B
    :cond_1
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 364
    .local v4, "encodedBearerData":[B
    if-nez v4, :cond_3

    .line 365
    const/4 v7, 0x0

    goto :goto_0

    .line 356
    .end local v4    # "encodedBearerData":[B
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 368
    .restart local v4    # "encodedBearerData":[B
    :cond_3
    iget-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v9, :cond_4

    const/16 v8, 0x1005

    .line 375
    .local v8, "teleservice":I
    :goto_2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 376
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 379
    .local v3, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 381
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 382
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 384
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 385
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 386
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 387
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 388
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 389
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v10, 0x0

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 392
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 393
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 394
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 396
    array-length v9, v4

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 397
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v3, v4, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 399
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 401
    new-instance v7, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;-><init>()V

    .line 402
    .local v7, "pdu":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 403
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 406
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "pdu":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    :catch_0
    move-exception v5

    .line 407
    .local v5, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ruimPrivateGetDeliverPdu(), creating SubmitPdu failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 409
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 368
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "teleservice":I
    :cond_4
    const/16 v8, 0x1002

    goto :goto_2
.end method

.method static ruimPrivateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 12
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 418
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 420
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_0

    move-object v6, v9

    .line 488
    :goto_0
    return-object v6

    .line 424
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 425
    .local v1, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v10, 0x2

    iput v10, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v10

    iput v10, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 429
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 430
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 431
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 432
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 439
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 442
    iget-object v10, p2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v10, :cond_1

    const/4 v8, 0x1

    :cond_1
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 443
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 444
    .local v4, "encodedBearerData":[B
    if-nez v4, :cond_2

    move-object v6, v9

    .line 445
    goto :goto_0

    .line 448
    :cond_2
    iget-boolean v8, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v8, :cond_3

    const/16 v7, 0x1005

    .line 455
    .local v7, "teleservice":I
    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 456
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 460
    .local v3, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 461
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 462
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 464
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 465
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 466
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 467
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 468
    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 469
    iget-object v8, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v10, 0x0

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v3, v8, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 472
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 473
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 474
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 476
    array-length v8, v4

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 477
    const/4 v8, 0x0

    array-length v10, v4

    invoke-virtual {v3, v4, v8, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 479
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 480
    new-instance v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 481
    .local v6, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 482
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 485
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v5

    .line 486
    .local v5, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ruimPrivateGetSubmitPdu(), creating SubmitPdu failed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    move-object v6, v9

    .line 488
    goto/16 :goto_0

    .line 448
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v7    # "teleservice":I
    :cond_3
    const/16 v7, 0x1002

    goto :goto_1
.end method

.method public static setTimeforSMSonCSIM(J)V
    .locals 0
    .param p0, "timemillisec"    # J

    .prologue
    .line 696
    sput-wide p0, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->timeSmsOnCSim:J

    .line 697
    return-void
.end method

.method public static setUserBearerDataLguEncoding(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/sms/UserData;
    .locals 6
    .param p0, "bearerData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .prologue
    const/4 v5, 0x1

    .line 1120
    iput-boolean v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1121
    const/16 v1, 0x10

    iput v1, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1123
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1124
    const/16 v1, 0x40

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 1126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1127
    .local v2, "token":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, "callback":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    if-nez v0, :cond_0

    .line 1131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1136
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1137
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privateGetSubmitPdu(), "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 1142
    return-object p1

    .line 1133
    :cond_0
    const-string v1, "+82"

    const-string v4, "0"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0
.end method
