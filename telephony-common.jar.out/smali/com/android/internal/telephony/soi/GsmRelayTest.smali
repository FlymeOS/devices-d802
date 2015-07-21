.class public Lcom/android/internal/telephony/soi/GsmRelayTest;
.super Landroid/os/Handler;
.source "GsmRelayTest.java"


# static fields
.field public static final MO_3GPP_TEST_ENABLE:Z

.field public static final MO_PARSE_TEST_ENABLE:Z

.field public static final MO_TEST_ENABLE:Z

.field public static final MO_TR1M_TEST_ENABLE:Z

.field public static final MT_PARSE_TEST_ENABLE:Z

.field public static final MT_TEST_ENABLE:Z

.field public static final MT_TR2M_TEST_ENABLE:Z

.field public static final SCADDRESS_TEST_ENABLE:Z

.field static final TAG:Ljava/lang/String; = "GsmRelayTest"

.field public static mTpdu:[B

.field static mTpduArray:Ljava/io/ByteArrayOutputStream;

.field private static sInstance:Lcom/android/internal/telephony/soi/GsmRelayTest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v0, "persist.soi.mo3gpp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_3GPP_TEST_ENABLE:Z

    .line 37
    const-string v0, "persist.soi.mo"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TEST_ENABLE:Z

    .line 38
    const-string v0, "persist.soi.mt"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_TEST_ENABLE:Z

    .line 39
    const-string v0, "persist.soi.scaddress"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->SCADDRESS_TEST_ENABLE:Z

    .line 40
    const-string v0, "persist.soi.mo.tr1m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TR1M_TEST_ENABLE:Z

    .line 41
    const-string v0, "persist.soi.mt.tr2m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_TR2M_TEST_ENABLE:Z

    .line 42
    const-string v0, "persist.soi.mo.parse"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_PARSE_TEST_ENABLE:Z

    .line 43
    const-string v0, "persist.soi.mt.parse"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_PARSE_TEST_ENABLE:Z

    .line 62
    new-instance v0, Lcom/android/internal/telephony/soi/GsmRelayTest;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/GsmRelayTest;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->sInstance:Lcom/android/internal/telephony/soi/GsmRelayTest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getByteDeliverPduSCTS_TimeZone()[B
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 290
    .local v0, "sctsArray":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/soi/GsmRelayTest;->getDeliverPduSCTS_TimeZone(Ljava/io/ByteArrayOutputStream;)V

    .line 291
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getDefault()Lcom/android/internal/telephony/soi/GsmRelayTest;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->sInstance:Lcom/android/internal/telephony/soi/GsmRelayTest;

    if-nez v0, :cond_1

    .line 92
    const-class v1, Lcom/android/internal/telephony/soi/GsmRelayTest;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->sInstance:Lcom/android/internal/telephony/soi/GsmRelayTest;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/internal/telephony/soi/GsmRelayTest;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/GsmRelayTest;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->sInstance:Lcom/android/internal/telephony/soi/GsmRelayTest;

    .line 96
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->sInstance:Lcom/android/internal/telephony/soi/GsmRelayTest;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getDeliverPduSCTS_TimeZone(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .param p1, "outStream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 296
    .local v2, "msgtime":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 297
    .local v4, "sctstime":Landroid/text/format/Time;
    invoke-virtual {v4, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 298
    iget-object v6, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 300
    .local v0, "mMyTimeZone":Ljava/util/TimeZone;
    iget v6, v4, Landroid/text/format/Time;->year:I

    const/16 v7, 0x7d0

    if-lt v6, v7, :cond_0

    iget v6, v4, Landroid/text/format/Time;->year:I

    add-int/lit16 v5, v6, -0x7d0

    .line 302
    .local v5, "year":I
    :goto_0
    iget v6, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v6, 0x1

    .line 305
    .local v1, "month":I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 306
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 308
    iget v6, v4, Landroid/text/format/Time;->hour:I

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    iget v6, v4, Landroid/text/format/Time;->minute:I

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 310
    iget v6, v4, Landroid/text/format/Time;->second:I

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    const v7, 0x36ee80

    div-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    return-void

    .line 300
    .end local v1    # "month":I
    .end local v5    # "year":I
    :cond_0
    iget v6, v4, Landroid/text/format/Time;->year:I

    add-int/lit16 v5, v6, -0x76c

    goto :goto_0
.end method

.method private getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/ImsPdu;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 144
    move-object v2, p1

    .line 145
    .local v2, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 146
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 147
    .local v1, "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    if-nez v2, :cond_0

    .line 148
    const-string v3, "GsmRelayTest"

    const-string v4, "getMsgObjAsyncResultObj() msg.obj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v2

    .line 150
    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 152
    const-string v3, "GsmRelayTest"

    const-string v4, "getMsgObjAsyncResultObj() msg.obj.userObj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    check-cast v1, Lcom/android/internal/telephony/soi/ImsPdu;

    .restart local v1    # "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    goto :goto_0
.end method

.method private moAckTest(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 162
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/soi/GsmRelayTest;->getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/ImsPdu;

    move-result-object v4

    .line 164
    .local v4, "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    if-nez v4, :cond_0

    .line 206
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v8, 0x1

    .line 169
    .local v8, "smsFormat":I
    invoke-virtual {v4}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/soi/RpMessage;->createFromRpdu([B)Lcom/android/internal/telephony/soi/RpMessage;

    move-result-object v6

    .line 171
    .local v6, "rpAck":Lcom/android/internal/telephony/soi/RpMessage;
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/RpMessage;->getRpMti()I

    move-result v13

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_TEST_ENABLE:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 172
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/16 v14, 0xfd

    invoke-direct {v13, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sput-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpduArray:Ljava/io/ByteArrayOutputStream;

    .line 173
    const/16 v13, 0xfd

    new-array v13, v13, [B

    sput-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpdu:[B

    .line 174
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/RpMessage;->getTpdu()[B

    move-result-object v10

    .line 175
    .local v10, "tempTpdu":[B
    array-length v9, v10

    .line 176
    .local v9, "submitTpduLen":I
    const/4 v13, 0x2

    aget-byte v2, v10, v13

    .line 177
    .local v2, "dalen":I
    div-int/lit8 v13, v2, 0x2

    add-int/lit8 v13, v13, 0x2

    rem-int/lit8 v14, v2, 0x2

    add-int v1, v13, v14

    .line 178
    .local v1, "addresslen":I
    sget-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpduArray:Ljava/io/ByteArrayOutputStream;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 179
    sget-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpduArray:Ljava/io/ByteArrayOutputStream;

    const/4 v14, 0x2

    add-int/lit8 v15, v1, 0x2

    invoke-virtual {v13, v10, v14, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 180
    sget-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpduArray:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/soi/GsmRelayTest;->getDeliverPduSCTS_TimeZone(Ljava/io/ByteArrayOutputStream;)V

    .line 181
    add-int/lit8 v13, v1, 0x2

    add-int/lit8 v12, v13, 0x2

    .line 182
    .local v12, "tpudPos":I
    sget-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpduArray:Ljava/io/ByteArrayOutputStream;

    sub-int v14, v9, v12

    invoke-virtual {v13, v10, v12, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 183
    sget-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpduArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    sput-object v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpdu:[B

    .line 184
    const-string v13, "GsmRelayTest"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "moAckTest() mTpdu:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpdu:[B

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v1    # "addresslen":I
    .end local v2    # "dalen":I
    .end local v9    # "submitTpduLen":I
    .end local v10    # "tempTpdu":[B
    .end local v12    # "tpudPos":I
    :cond_1
    const/4 v3, 0x0

    .line 187
    .local v3, "data":[B
    const-string v13, "soi.mo.error"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 188
    .local v5, "isMoRpError":Z
    const-string v13, "soi.parse.test"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, "testCase":Ljava/lang/String;
    sget-boolean v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_PARSE_TEST_ENABLE:Z

    if-eqz v13, :cond_3

    if-eqz v11, :cond_3

    const-string v13, "0"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 191
    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    .line 192
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v13

    invoke-static {v13, v11}, Lcom/android/internal/telephony/soi/RpMessageTest;->getRpErrorRpdu(ILjava/lang/String;)[B

    move-result-object v3

    .line 199
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-virtual {v4}, Lcom/android/internal/telephony/soi/ImsPdu;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v8, v3, v13}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 200
    .local v7, "rpAckImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    sget-boolean v13, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TR1M_TEST_ENABLE:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 201
    const-string v13, "GsmRelayTest"

    const-string v14, "moAckTest() MO_TR1M_TEST_ENABLE"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v7    # "rpAckImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v13

    invoke-static {v13, v11}, Lcom/android/internal/telephony/soi/RpMessageTest;->getRpAckRpdu(ILjava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    .line 197
    :cond_3
    const/4 v13, 0x3

    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/soi/RpMessage;->getRpAckRpdu(II)[B

    move-result-object v3

    goto :goto_1

    .line 204
    .restart local v7    # "rpAckImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/soi/SoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/soi/GsmRelayTest;->invokeMT()V

    goto/16 :goto_0
.end method

.method private mtConcatTest(I)V
    .locals 11
    .param p1, "nConcat"    # I

    .prologue
    const/4 v8, 0x7

    .line 242
    const/4 v6, 0x1

    .line 243
    .local v6, "smsFormat":I
    const-string v4, "821020921852"

    .line 244
    .local v4, "scAddress":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/soi/RpMessageTest;->getMtConcatRpdu(I)[B

    move-result-object v0

    .line 245
    .local v0, "data":[B
    new-array v5, v8, [B

    .line 246
    .local v5, "scts":[B
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/GsmRelayTest;->getByteDeliverPduSCTS_TimeZone()[B

    move-result-object v5

    .line 247
    const/16 v1, 0x16

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 248
    aget-byte v7, v5, v2

    aput-byte v7, v0, v1

    .line 247
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-direct {v3, v6, v0, v4}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 251
    .local v3, "rpMTImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/soi/SoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 252
    const/16 v7, 0x7d1

    if-ne p1, v7, :cond_1

    .line 254
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v7

    const/16 v8, 0x7d2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, p0, v8, v9, v10}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 256
    :cond_1
    return-void
.end method

.method private mtTest()V
    .locals 10

    .prologue
    .line 259
    const/4 v4, 0x1

    .line 260
    .local v4, "smsFormat":I
    const-string v3, "01020911495"

    .line 261
    .local v3, "scAddress":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpdu:[B

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "tpdu":Ljava/lang/String;
    const-string v7, "GsmRelayTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mtTest() tpdu: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "data":[B
    const-string v7, "soi.parse.test"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "testCase":Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_PARSE_TEST_ENABLE:Z

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 266
    invoke-static {v5}, Lcom/android/internal/telephony/soi/RpMessageTest;->getRpDataRpdu(Ljava/lang/String;)[B

    move-result-object v0

    .line 270
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-direct {v2, v4, v0, v3}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 271
    .local v2, "rpMTImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/soi/SoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 273
    :try_start_0
    sget-object v7, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpduArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_1
    return-void

    .line 268
    .end local v2    # "rpMTImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    :cond_0
    const/4 v7, 0x1

    const/16 v8, 0xa

    sget-object v9, Lcom/android/internal/telephony/soi/GsmRelayTest;->mTpdu:[B

    invoke-static {v7, v8, v3, v9}, Lcom/android/internal/telephony/soi/RpMessage;->getRpDataRpdu(IILjava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    .line 274
    .restart local v2    # "rpMTImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private mtTestPreTreat()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    const-string v2, "soi.mt.ppdownload"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 229
    .local v1, "ppDownloadTest":Z
    const-string v2, "soi.mt.concat"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 230
    .local v0, "concatTest":Z
    sget-boolean v2, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_TEST_ENABLE:Z

    if-eqz v2, :cond_0

    .line 231
    if-ne v0, v4, :cond_1

    .line 232
    const/16 v2, 0x7d1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelayTest;->mtConcatTest(I)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-ne v1, v4, :cond_2

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/GsmRelayTest;->ppDownloadTest()V

    goto :goto_0

    .line 236
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/GsmRelayTest;->mtTest()V

    goto :goto_0
.end method

.method private ppDownloadTest()V
    .locals 5

    .prologue
    .line 281
    const/4 v3, 0x1

    .line 282
    .local v3, "smsFormat":I
    const-string v2, "821020921852"

    .line 283
    .local v2, "scAddress":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/soi/RpMessageTest;->getPpDownloadRpdu()[B

    move-result-object v0

    .line 284
    .local v0, "data":[B
    new-instance v1, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 285
    .local v1, "rpMTImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/soi/SoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 286
    return-void
.end method

.method private smmaAckTest(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 210
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/soi/GsmRelayTest;->getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/ImsPdu;

    move-result-object v1

    .line 211
    .local v1, "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-eqz v1, :cond_0

    .line 215
    const/4 v5, 0x1

    .line 216
    .local v5, "smsFormat":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v4

    .line 217
    .local v4, "smmaData":[B
    const/4 v2, 0x0

    .line 218
    .local v2, "mr":I
    array-length v6, v4

    if-le v6, v7, :cond_2

    .line 219
    aget-byte v2, v4, v7

    .line 221
    :cond_2
    const/4 v6, 0x3

    invoke-static {v6, v2}, Lcom/android/internal/telephony/soi/RpMessage;->getRpAckRpdu(II)[B

    move-result-object v0

    .line 222
    .local v0, "data":[B
    new-instance v3, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/ImsPdu;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v0, v6}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 223
    .local v3, "rpAckImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/soi/SoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x7d2

    const/4 v3, 0x0

    .line 67
    const-string v0, "GsmRelayTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelayTest;->msgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 70
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, p0, v3, v1, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/GsmRelayTest;->mtTestPreTreat()V

    goto :goto_0

    .line 74
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 75
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/soi/GsmRelayTest;->mtConcatTest(I)V

    goto :goto_0

    .line 78
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x834

    invoke-virtual {v0, p0, v3, v1, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelayTest;->moAckTest(Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x835

    invoke-virtual {v0, p0, v3, v1, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelayTest;->smmaAckTest(Landroid/os/Message;)V

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_1
        0x834 -> :sswitch_2
        0x835 -> :sswitch_3
    .end sparse-switch
.end method

.method public invokeMT()V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 132
    return-void
.end method

.method public invokeMoAck(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 3
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 136
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x834

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 137
    return-void
.end method

.method public invokeSmmaAck(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 3
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 141
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x835

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 142
    return-void
.end method

.method public msgToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 102
    sparse-switch p1, :sswitch_data_0

    .line 112
    const-string v0, "Invalid cmd"

    :goto_0
    return-object v0

    .line 104
    :sswitch_0
    const-string v0, "MSG_INVOKE_MT"

    goto :goto_0

    .line 106
    :sswitch_1
    const-string v0, "MSG_INVOKE_MT_CONCAT"

    goto :goto_0

    .line 108
    :sswitch_2
    const-string v0, "MSG_INVOKE_MO_ACK"

    goto :goto_0

    .line 110
    :sswitch_3
    const-string v0, "MSG_INVOKE_SMMA_ACK"

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_1
        0x834 -> :sswitch_2
        0x835 -> :sswitch_3
    .end sparse-switch
.end method
