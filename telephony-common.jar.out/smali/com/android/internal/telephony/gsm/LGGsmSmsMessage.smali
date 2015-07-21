.class public Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "LGGsmSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT_DCS:I = 0x8

.field public static final ENCODING_7BIT_DCS:I = 0x0

.field public static final ENCODING_8BIT_DCS:I = 0x84

.field public static final ENCODING_UNKNOWN_DCS:I = -0x1

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

.field private static final VDBG:Z = true

.field private static sEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 513
    return-void
.end method

.method public static calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 1940
    invoke-static {p0, p1}, Lcom/lge/internal/telephony/LGGsmAlphabet;->countGsmSeptetsLossyAuto(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 1941
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 1942
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1943
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 1944
    .local v0, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1945
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 1946
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1948
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1954
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1956
    .end local v0    # "octets":I
    :cond_0
    return-object v1

    .line 1951
    .restart local v0    # "octets":I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1952
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 12
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "dataCodingScheme"    # I

    .prologue
    const/4 v9, 0x0

    .line 1580
    new-instance v1, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p1, v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 1581
    .local v1, "dcs":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getEncodingType()I

    move-result v2

    .line 1583
    .local v2, "encodingType":I
    new-instance v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1586
    .local v6, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    packed-switch v2, :pswitch_data_0

    .line 1615
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v4, v10, 0x2

    .line 1616
    .local v4, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1617
    const/16 v10, 0x8c

    const/16 v11, 0x86

    invoke-static {v6, v4, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 1618
    iget v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1619
    const/4 v10, 0x3

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .end local v4    # "octets":I
    :goto_0
    move-object v9, v6

    .line 1630
    :goto_1
    return-object v9

    .line 1589
    :pswitch_0
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 1590
    .local v7, "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v7, :cond_0

    .line 1591
    const-string v10, "calculateLength(), countGsmSeptets return is null"

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1622
    .end local v7    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catch_0
    move-exception v3

    .line 1623
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateLength(), encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 1595
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    :try_start_1
    iget v5, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1597
    .local v5, "septets":I
    iput v5, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1598
    const/16 v10, 0xa0

    const/16 v11, 0x99

    invoke-static {v6, v5, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 1599
    const/4 v10, 0x1

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1625
    .end local v5    # "septets":I
    .end local v7    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catch_1
    move-exception v3

    .line 1626
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateLength(), encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 1605
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :pswitch_1
    :try_start_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "euc-kr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1606
    .local v8, "textPart":[B
    array-length v0, v8

    .line 1608
    .local v0, "byteCount":I
    iput v0, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1609
    const/16 v10, 0x8c

    const/16 v11, 0x86

    invoke-static {v6, v0, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 1610
    const/4 v10, 0x2

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 12
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "useUserInterface"    # Z

    .prologue
    .line 1489
    const/4 v10, 0x0

    const-string v11, "KREncodingScheme"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1490
    new-instance v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1492
    .local v7, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez p1, :cond_0

    const/4 v10, 0x1

    :goto_0
    :try_start_0
    invoke-static {p0, v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->countGsmSeptetsEx(Ljava/lang/CharSequence;Z)[I

    move-result-object v5

    .line 1493
    .local v5, "params":[I
    const/4 v10, 0x0

    aget v6, v5, v10

    .line 1496
    .local v6, "septets":I
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isCountCharIndexInsteadOfSeptets()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1497
    const/4 v10, 0x1

    aget v0, v5, v10

    .line 1498
    .local v0, "charindex":I
    sget v10, Landroid/telephony/LGSmsMessageImpl;->LIMIT_USER_DATA_SEPTETS:I

    if-le v6, v10, :cond_2

    .line 1499
    new-instance v10, Lcom/android/internal/telephony/EncodeException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    .end local v0    # "charindex":I
    .end local v5    # "params":[I
    .end local v6    # "septets":I
    :catch_0
    move-exception v2

    .line 1514
    .local v2, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isKSC5601Encoding()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 1516
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1518
    .local v3, "message":Ljava/lang/String;
    :try_start_1
    const-string v10, "euc-kr"

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 1536
    .local v9, "textPart":[B
    array-length v8, v9

    .line 1537
    .local v8, "textLen":I
    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1539
    :try_start_2
    sget v10, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_BYTES_EX:I

    sget v11, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_BYTES_EX:I

    invoke-static {v7, v8, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v7

    .line 1543
    :goto_1
    const/4 v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1566
    .end local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v3    # "message":Ljava/lang/String;
    .end local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v8    # "textLen":I
    .end local v9    # "textPart":[B
    :goto_2
    return-object v7

    .line 1492
    .restart local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 1502
    .restart local v5    # "params":[I
    .restart local v6    # "septets":I
    :cond_1
    const/4 v10, 0x0

    :try_start_3
    aget v0, v5, v10

    .line 1506
    .restart local v0    # "charindex":I
    :cond_2
    iput v0, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1509
    :try_start_4
    sget v10, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_SEPTETS_EX:I

    sget v11, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_SEPTETS_EX:I

    invoke-static {v7, v0, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 1512
    :goto_3
    const/4 v10, 0x1

    :try_start_5
    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 1519
    .end local v0    # "charindex":I
    .end local v5    # "params":[I
    .end local v6    # "septets":I
    .restart local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v3    # "message":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1521
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v10, "calculateLength(), Implausible UnsupportedEncodingException "

    invoke-static {v10, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1522
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1523
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1524
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1525
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 1527
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 1528
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v10, "calculateLength(), Implausible RuntimeException "

    invoke-static {v10, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1529
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1530
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1531
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1532
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 1545
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "message":Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v7}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1547
    .restart local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v10, 0x0

    :try_start_6
    const-string v11, "countLengthBytes"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 1548
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v4, v10, 0x2

    .line 1549
    .local v4, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1550
    sget v10, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_BYTES_EX:I

    sget v11, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_BYTES_EX:I

    invoke-static {v7, v4, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v7

    .line 1561
    .end local v4    # "octets":I
    :goto_4
    const/4 v10, 0x3

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 1552
    :cond_4
    :try_start_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v4, v10, 0x2

    .line 1553
    .restart local v4    # "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1554
    const/16 v10, 0x8c

    sget v11, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_BYTES_EX:I

    invoke-static {v7, v4, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 1555
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 1557
    .end local v4    # "octets":I
    :catch_3
    move-exception v10

    goto :goto_4

    .line 1566
    .end local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    goto/16 :goto_2

    .line 1540
    .restart local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v8    # "textLen":I
    .restart local v9    # "textPart":[B
    :catch_4
    move-exception v10

    goto/16 :goto_1

    .line 1510
    .end local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v3    # "message":Ljava/lang/String;
    .end local v8    # "textLen":I
    .end local v9    # "textPart":[B
    .restart local v0    # "charindex":I
    .restart local v5    # "params":[I
    .restart local v6    # "septets":I
    :catch_5
    move-exception v10

    goto :goto_3
.end method

.method public static calculateLengthHeaderEx(Ljava/lang/CharSequence;IZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 12
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "dataCodingScheme"    # I
    .param p2, "bReplyAddress"    # Z
    .param p3, "bSafeSMS"    # Z

    .prologue
    .line 1706
    new-instance v1, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p1, v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 1707
    .local v1, "dcs":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getEncodingType()I

    move-result v3

    .line 1709
    .local v3, "encodingType":I
    new-instance v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1712
    .local v7, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    packed-switch v3, :pswitch_data_0

    .line 1739
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v5, v10, 0x2

    .line 1740
    .local v5, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1741
    const/4 v10, 0x3

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1742
    invoke-static {v7, v5, p2, p3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateTedForEncoding(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;IZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1743
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1755
    .end local v5    # "octets":I
    .end local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    return-object v7

    .line 1715
    .restart local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :pswitch_0
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    .line 1717
    .local v8, "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v8, :cond_0

    .line 1718
    const-string v10, "calculateLengthHeaderEx(), countGsmSeptets return is null"

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1719
    const/4 v7, 0x0

    goto :goto_0

    .line 1722
    :cond_0
    iget v6, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1723
    .local v6, "septets":I
    iput v6, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1724
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1725
    invoke-static {v7, v6, p2, p3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateTedForEncoding(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;IZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1747
    .end local v6    # "septets":I
    .end local v8    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catch_0
    move-exception v4

    .line 1748
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateLengthHeaderEx(), encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1749
    const/4 v7, 0x0

    goto :goto_0

    .line 1730
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    :try_start_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "euc-kr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1731
    .local v9, "textPart":[B
    array-length v0, v9

    .line 1732
    .local v0, "byteCount":I
    iput v0, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1733
    const/4 v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1734
    invoke-static {v7, v0, p2, p3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateTedForEncoding(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;IZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1750
    .end local v0    # "byteCount":I
    .end local v9    # "textPart":[B
    :catch_1
    move-exception v2

    .line 1751
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateLengthHeaderEx(), encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1752
    const/4 v7, 0x0

    goto :goto_0

    .line 1712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static calculateLengthHeaderReplyaddressEx(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 12
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "dataCodingScheme"    # I

    .prologue
    const/4 v9, 0x0

    .line 1643
    new-instance v1, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p1, v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 1644
    .local v1, "dcs":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getEncodingType()I

    move-result v2

    .line 1646
    .local v2, "encodingType":I
    new-instance v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1649
    .local v6, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    packed-switch v2, :pswitch_data_0

    .line 1676
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v4, v10, 0x2

    .line 1677
    .local v4, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1678
    const/16 v10, 0x7d

    const/16 v11, 0x7d

    invoke-static {v6, v4, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 1679
    iget v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1680
    const/4 v10, 0x3

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .end local v4    # "octets":I
    :goto_0
    move-object v9, v6

    .line 1692
    :goto_1
    return-object v9

    .line 1652
    :pswitch_0
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 1654
    .local v7, "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v7, :cond_0

    .line 1655
    const-string v10, "calculateLengthHeaderReplyaddressEx(), countGsmSeptets return is null"

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1684
    .end local v7    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catch_0
    move-exception v3

    .line 1685
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateLengthHeaderReplyaddressEx(), encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 1659
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    :try_start_1
    iget v5, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1661
    .local v5, "septets":I
    iput v5, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1662
    const/16 v10, 0x8e

    const/16 v11, 0x8e

    invoke-static {v6, v5, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 1663
    const/4 v10, 0x1

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1687
    .end local v5    # "septets":I
    .end local v7    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catch_1
    move-exception v3

    .line 1688
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateLengthHeaderReplyaddressEx(), encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 1667
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :pswitch_1
    :try_start_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "euc-kr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1668
    .local v8, "textPart":[B
    array-length v0, v8

    .line 1670
    .local v0, "byteCount":I
    iput v0, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1671
    const/16 v10, 0x7d

    const/16 v11, 0x7d

    invoke-static {v6, v0, v10, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 1672
    const/4 v10, 0x2

    iput v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p0, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .param p1, "codeUnitCount"    # I
    .param p2, "maxUserData"    # I
    .param p3, "maxUserDataWithHeader"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1790
    if-le p1, p2, :cond_0

    .line 1791
    :try_start_0
    div-int v1, p1, p3

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1792
    rem-int v1, p1, p3

    sub-int v1, p3, v1

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1801
    :goto_0
    return-object p0

    .line 1794
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1795
    sub-int v1, p2, p1

    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method private static calculateTedForEncoding(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;IZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .param p1, "size"    # I
    .param p2, "bReplyAddress"    # Z
    .param p3, "bSafeSMS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1768
    if-eqz p3, :cond_5

    .line 1769
    if-eqz p2, :cond_2

    .line 1770
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_0

    const/16 v1, 0x8b

    move v2, v1

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_1

    const/16 v1, 0x85

    :goto_1
    invoke-static {p0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    .line 1783
    :goto_2
    return-object p0

    .line 1770
    :cond_0
    const/16 v1, 0x7a

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x75

    goto :goto_1

    .line 1772
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_3

    const/16 v1, 0x9b

    move v2, v1

    :goto_3
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_4

    const/16 v1, 0x95

    :goto_4
    invoke-static {p0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/16 v1, 0x88

    move v2, v1

    goto :goto_3

    :cond_4
    const/16 v1, 0x83

    goto :goto_4

    .line 1774
    :cond_5
    if-eqz p2, :cond_8

    .line 1775
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_6

    const/16 v1, 0x8e

    move v2, v1

    :goto_5
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_7

    const/16 v1, 0x89

    :goto_6
    invoke-static {p0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    goto :goto_2

    :cond_6
    const/16 v1, 0x7d

    move v2, v1

    goto :goto_5

    :cond_7
    const/16 v1, 0x78

    goto :goto_6

    .line 1777
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_9

    const/16 v1, 0xa0

    move v2, v1

    :goto_7
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v3, :cond_a

    const/16 v1, 0x99

    :goto_8
    invoke-static {p0, p1, v2, v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateMsgCountCodeUnitsRemaining(Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;III)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    goto :goto_2

    :cond_9
    sget v1, Landroid/telephony/LGSmsMessageImpl;->MAX_USER_DATA_BYTES_EX:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_7

    :cond_a
    const/16 v1, 0x86

    goto :goto_8

    .line 1779
    :catch_0
    move-exception v0

    .line 1780
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public static cdmaIntTobcdByte(I)B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 2076
    const/4 v0, 0x0

    .line 2079
    .local v0, "ret":B
    rem-int/lit8 v1, p0, 0xa

    div-int/lit8 v2, p0, 0xa

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-byte v0, v1

    .line 2081
    and-int/lit8 v1, v0, 0xf

    and-int/lit16 v2, v0, 0xf0

    or-int/2addr v1, v2

    int-to-byte v0, v1

    .line 2083
    return v0
.end method

.method public static countGsmSeptetsEx(Ljava/lang/CharSequence;Z)[I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 1459
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 1461
    .local v2, "ret":[I
    const/4 v0, 0x0

    .line 1462
    .local v0, "charIndex":I
    const/4 v3, 0x0

    .line 1463
    .local v3, "sz":I
    const/4 v1, 0x0

    .line 1465
    .local v1, "count":I
    if-eqz p0, :cond_0

    .line 1466
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1469
    :cond_0
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1470
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 1471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1473
    :cond_1
    const/4 v4, 0x0

    aput v1, v2, v4

    .line 1474
    const/4 v4, 0x1

    aput v0, v2, v4

    .line 1475
    return-object v2
.end method

.method public static createDataCodingScheme(Lcom/android/internal/telephony/SmsConstants$MessageClass;ZIIZI)B
    .locals 3
    .param p0, "messageclass"    # Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .param p1, "isCompressed"    # Z
    .param p2, "encodingtype"    # I
    .param p3, "msgwatingtype"    # I
    .param p4, "msgwaitingactive"    # Z
    .param p5, "msgwaitingkind"    # I

    .prologue
    .line 894
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 895
    const/16 v0, 0x20

    .line 900
    .local v0, "data":B
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDataCodingScheme(), data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for bit 5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDataCodingScheme(), encodingtype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 904
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq p0, v1, :cond_3

    .line 905
    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 910
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDataCodingScheme(), data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for bit 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 913
    if-eqz p2, :cond_0

    .line 914
    add-int/lit8 v1, p2, -0x1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 917
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDataCodingScheme(), data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for bit 3-2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 920
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne p0, v1, :cond_4

    .line 921
    or-int/lit8 v1, v0, 0x0

    int-to-byte v0, v1

    .line 930
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDataCodingScheme(), data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for bit 1-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDataCodingScheme(), data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 934
    return v0

    .line 897
    .end local v0    # "data":B
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "data":B
    goto/16 :goto_0

    .line 907
    :cond_3
    or-int/lit8 v1, v0, 0x0

    int-to-byte v0, v1

    goto :goto_1

    .line 922
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne p0, v1, :cond_5

    .line 923
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_2

    .line 924
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne p0, v1, :cond_6

    .line 925
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    goto :goto_2

    .line 926
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne p0, v1, :cond_1

    .line 927
    or-int/lit8 v1, v0, 0x3

    int-to-byte v0, v1

    goto :goto_2
.end method

.method private static encodeKR(Ljava/lang/String;[B)[B
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

    .line 688
    const-string v3, "euc-kr"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 691
    .local v1, "textPart":[B
    const/4 v3, 0x0

    const-string v4, "lgu_gsm_submit_encoding_type"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    const-string v3, "ksc5601"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 698
    :cond_0
    if-eqz p1, :cond_1

    .line 700
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 702
    .local v2, "userData":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 703
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 704
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 709
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 710
    .local v0, "ret":[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 711
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 712
    return-object v0

    .line 707
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_1
    move-object v2, v1

    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method private static encodeUCS(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;J)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "byteoutput"    # Ljava/io/ByteArrayOutputStream;
    .param p3, "time"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1095
    :try_start_0
    const-string v4, "utf-16be"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1101
    .local v0, "textPart":[B
    if-eqz p1, :cond_0

    .line 1102
    array-length v4, p1

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 1103
    .local v2, "userData":[B
    array-length v4, p1

    invoke-static {p1, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1104
    array-length v4, p1

    array-length v5, v0

    invoke-static {v0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1110
    :goto_0
    array-length v4, v2

    const/16 v5, 0x8c

    if-le v4, v5, :cond_1

    move-object p2, v3

    .line 1135
    .end local v0    # "textPart":[B
    .end local v2    # "userData":[B
    .end local p2    # "byteoutput":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object p2

    .line 1096
    .restart local p2    # "byteoutput":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 1097
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v4, "getDeliverPdu(), Implausible UnsupportedEncodingException "

    invoke-static {v4, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p2, v3

    .line 1098
    goto :goto_1

    .line 1106
    .end local v1    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "textPart":[B
    :cond_0
    move-object v2, v0

    .restart local v2    # "userData":[B
    goto :goto_0

    .line 1116
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1120
    const-string v4, "dcm_copytosim_localtimezone"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1121
    invoke-static {p3, p4, p2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V

    .line 1128
    :goto_2
    if-eqz p1, :cond_3

    .line 1129
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1130
    array-length v3, p1

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1134
    :goto_3
    array-length v3, v2

    invoke-virtual {p2, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1125
    :cond_2
    invoke-static {p3, p4, p2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    goto :goto_2

    .line 1132
    :cond_3
    array-length v3, v2

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    .locals 10
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "time"    # J
    .param p6, "header"    # [B
    .param p7, "encodingtype"    # I

    .prologue
    .line 1021
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BIII)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BIII)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    .locals 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "time"    # J
    .param p6, "header"    # [B
    .param p7, "encodingtype"    # I
    .param p8, "languageTable"    # I
    .param p9, "languageShiftTable"    # I

    .prologue
    .line 1038
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1039
    :cond_0
    const/4 v6, 0x0

    .line 1084
    :goto_0
    return-object v6

    .line 1042
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;-><init>()V

    .line 1045
    .local v6, "ret":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    if-eqz p6, :cond_2

    const/16 v8, 0x40

    :goto_1
    or-int/lit8 v8, v8, 0x0

    int-to-byte v5, v8

    .line 1047
    .local v5, "mtiByte":B
    invoke-static {p0, p1, v5, p3, v6}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 1050
    .local v3, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x1

    move/from16 v0, p7

    if-ne v0, v8, :cond_6

    .line 1053
    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v7

    .line 1055
    .local v7, "userData":[B
    move/from16 v0, p7

    invoke-static {v0, v7}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isMessageTooLong(I[B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1056
    const/4 v6, 0x0

    goto :goto_0

    .line 1045
    .end local v3    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "mtiByte":B
    .end local v7    # "userData":[B
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1061
    .restart local v3    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "mtiByte":B
    .restart local v7    # "userData":[B
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1065
    const/4 v8, 0x0

    const-string v9, "dcm_copytosim_localtimezone"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1066
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V

    .line 1071
    :goto_2
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    .end local v7    # "userData":[B
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v6, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedMessage:[B

    goto :goto_0

    .line 1069
    .restart local v7    # "userData":[B
    :cond_5
    :try_start_1
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1072
    .end local v7    # "userData":[B
    :catch_0
    move-exception v4

    .line 1073
    .local v4, "ex":Lcom/android/internal/telephony/EncodeException;
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-static {p2, v0, v3, v1, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->encodeUCS(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;J)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1074
    const/4 v6, 0x0

    goto :goto_0

    .line 1079
    .end local v4    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_6
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-static {p2, v0, v3, v1, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->encodeUCS(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;J)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1080
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "protocolId"    # I
    .param p5, "ret"    # Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    .prologue
    const/4 v3, 0x0

    .line 1404
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1408
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 1409
    const/4 v2, 0x0

    iput-object v2, p5, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 1416
    :goto_0
    if-eqz p3, :cond_0

    .line 1418
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 1419
    const-string v2, "getDeliverPduHead(), SMS status report requested"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1421
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1425
    invoke-static {p1}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1427
    .local v1, "daBytes":[B
    if-nez v1, :cond_2

    .line 1428
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1429
    const/16 v2, 0x81

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1442
    :goto_1
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1443
    return-object v0

    .line 1411
    .end local v1    # "daBytes":[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p5, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    .line 1434
    .restart local v1    # "daBytes":[B
    :cond_2
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

    :goto_2
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1438
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1434
    goto :goto_2
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 10
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0xb4

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1186
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_2

    .line 1187
    const/4 v7, 0x0

    iput-object v7, p4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 1193
    :goto_0
    if-eqz p3, :cond_0

    .line 1195
    or-int/lit8 v7, p2, 0x20

    int-to-byte p2, v7

    .line 1196
    const-string v7, "getDeliverPduHead(), SMS status report requested"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 1198
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1201
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 1204
    .local v3, "oaBytes":[B
    if-nez v3, :cond_3

    .line 1205
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1208
    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1, v5, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 1210
    .local v2, "gsm7BitPackedAddress":[B
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [B

    .line 1211
    .local v4, "readGsm7BitPackedAddress":[B
    const/4 v5, 0x1

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v2, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1213
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1214
    const/16 v5, 0xd0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1215
    const/4 v5, 0x0

    array-length v7, v4

    invoke-virtual {v0, v4, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    .end local v2    # "gsm7BitPackedAddress":[B
    .end local v4    # "readGsm7BitPackedAddress":[B
    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1232
    return-object v0

    .line 1189
    .end local v3    # "oaBytes":[B
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    .line 1216
    .restart local v3    # "oaBytes":[B
    :catch_0
    move-exception v1

    .line 1217
    .local v1, "e":Lcom/android/internal/telephony/EncodeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeliverPduHead(), "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/EncodeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 1223
    .end local v1    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_3
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_4

    :goto_2
    sub-int v5, v7, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1227
    array-length v5, v3

    invoke-virtual {v0, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    move v5, v6

    .line 1223
    goto :goto_2
.end method

.method private static getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 12
    .param p0, "msgtime"    # J
    .param p2, "byteoutput"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1151
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v5, "sctstime":Landroid/text/format/Time;
    invoke-virtual {v5, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1154
    iget v9, v5, Landroid/text/format/Time;->year:I

    const/16 v10, 0x7d0

    if-lt v9, v10, :cond_0

    iget v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit16 v7, v9, -0x7d0

    .line 1155
    .local v7, "year":I
    :goto_0
    iget v9, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v9, 0x1

    .line 1159
    .local v3, "month":I
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v8

    .line 1160
    .local v8, "yearByte":B
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    .line 1161
    .local v4, "monthByte":B
    iget v9, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v0

    .line 1162
    .local v0, "dayByte":B
    iget v9, v5, Landroid/text/format/Time;->hour:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v1

    .line 1163
    .local v1, "hourByte":B
    iget v9, v5, Landroid/text/format/Time;->minute:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v2

    .line 1164
    .local v2, "minuteByte":B
    iget v9, v5, Landroid/text/format/Time;->second:I

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v6

    .line 1168
    .local v6, "secondByte":B
    invoke-virtual {p2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1169
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1170
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1171
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1172
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1173
    invoke-virtual {p2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1174
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1176
    return-object p2

    .line 1154
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

.method private static getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V
    .locals 6
    .param p0, "msgtime"    # J
    .param p2, "outStream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1367
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1368
    .local v2, "sctstime":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1369
    iget-object v4, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1371
    .local v0, "mMyTimeZone":Ljava/util/TimeZone;
    iget v4, v2, Landroid/text/format/Time;->year:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_0

    iget v4, v2, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v4, -0x7d0

    .line 1373
    .local v3, "year":I
    :goto_0
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v4, 0x1

    .line 1377
    .local v1, "month":I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1378
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1379
    iget v4, v2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1380
    iget v4, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1381
    iget v4, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1382
    iget v4, v2, Landroid/text/format/Time;->second:I

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1383
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, 0x36ee80

    div-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1384
    return-void

    .line 1371
    .end local v1    # "month":I
    .end local v3    # "year":I
    :cond_0
    iget v4, v2, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v4, -0x76c

    goto :goto_0
.end method

.method static getEncodingTypeByDataCodingScheme(II)I
    .locals 2
    .param p0, "mDataCodingScheme"    # I
    .param p1, "dataCodingScheme_byte"    # I

    .prologue
    .line 1975
    const/4 v0, 0x0

    .line 1977
    .local v0, "encodingType":I
    const/16 v1, 0x80

    if-eq p1, v1, :cond_0

    const/16 v1, 0x90

    if-ne p1, v1, :cond_2

    .line 1978
    :cond_0
    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    .line 1992
    :cond_1
    :goto_0
    return v0

    .line 1982
    :pswitch_0
    const/4 v0, 0x1

    .line 1983
    goto :goto_0

    .line 1985
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1988
    :cond_2
    const/16 v1, 0xa0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb0

    if-ne p1, v1, :cond_1

    .line 1989
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getMessageBodyBySimInfo(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;
    .locals 6
    .param p0, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 1999
    const/4 v0, 0x0

    .line 2000
    .local v0, "mMessageBody":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2001
    .local v2, "mccCode":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 2002
    .local v1, "mSimOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 2003
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2006
    :cond_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "450"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2007
    const-string v3, "KSC5601Decoding"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2008
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v0

    .line 2022
    :goto_0
    return-object v0

    .line 2010
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2012
    :cond_2
    const-string v3, "handle8bit"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 2013
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2015
    :cond_3
    const-string v3, "KSC5601Decoding"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2016
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2018
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSCAddressFromEF()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 718
    const-string v0, ""

    .line 720
    .local v0, "mSCAddress":Ljava/lang/String;
    const-string v5, "addSCAddress"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_5

    .line 721
    const/16 v5, 0x6f42

    invoke-static {v5}, Lcom/lge/uicc/LGUiccManager;->readIccRecordToString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    if-nez v0, :cond_0

    .line 724
    const-string v5, "getSCAddressFromEF(), mSCAddress = null"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move-object v0, v4

    .line 765
    :goto_0
    return-object v0

    .line 726
    :cond_0
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSCAddressFromEF(), scaddr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 730
    const-string v5, "SKT"

    const-string v6, "ril.card_operator"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 732
    .local v2, "token":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "msisdn":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSCAddressFromEF(), msisdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 736
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 737
    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+82"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSCAddressFromEF(), mSCAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 740
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "82"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 749
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_2
    const-string v5, "setNullSCAddress_Intel"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_3

    .line 750
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSCAddressFromEF(), mSCAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 751
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 752
    const-string v0, "+7"

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSCAddressFromEF(), mSCAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move-object v0, v4

    .line 759
    goto/16 :goto_0

    .line 761
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSCAddressFromEF(), mSCAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object v0, v4

    .line 765
    goto/16 :goto_0
.end method

.method public static getStaticDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    .locals 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "time"    # J
    .param p6, "protocolId"    # I
    .param p7, "dataCodingScheme"    # I
    .param p8, "header"    # [B

    .prologue
    .line 1300
    const-string v2, "getStaticDeliverPdu(),[getStaticDeliverPdu]"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),scAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),originatorAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),protocolId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1308
    new-instance v9, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;

    move/from16 v0, p7

    invoke-direct {v9, v0, p2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 1310
    .local v9, "dcs":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getEncodingType()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 1311
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v10

    .line 1313
    .local v10, "reCalcDataCodingScheme":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),[Dcs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),dataCodingScheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),sEncodingType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(),reCalcDataCodingScheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1318
    if-eqz p1, :cond_0

    const-string v2, "Unknown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    :cond_0
    const-string p1, ""

    .line 1322
    :cond_1
    if-nez p2, :cond_2

    .line 1323
    const-string p2, ""

    .line 1326
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;-><init>()V

    .line 1329
    .local v7, "ret":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    if-eqz p8, :cond_3

    const/16 v2, 0x40

    :goto_0
    or-int/lit8 v2, v2, 0x0

    int-to-byte v4, v2

    .local v4, "mtiByte":B
    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move/from16 v6, p6

    .line 1331
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    .line 1336
    .local v8, "bo":Ljava/io/ByteArrayOutputStream;
    sget v2, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    if-nez v2, :cond_4

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDeliverPdu(), ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: ENCODING_UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1338
    const/4 v7, 0x0

    .line 1353
    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    :goto_1
    return-object v7

    .line 1329
    .end local v4    # "mtiByte":B
    .end local v8    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1341
    .restart local v4    # "mtiByte":B
    .restart local v8    # "bo":Ljava/io/ByteArrayOutputStream;
    :cond_4
    move-object/from16 v0, p8

    invoke-static {p2, v0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getUserData(Ljava/lang/String;[B)[B

    move-result-object v11

    .line 1342
    .local v11, "userData":[B
    if-eqz v11, :cond_5

    sget v2, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-static {v2, v11}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isMessageTooLong(I[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1343
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 1345
    :cond_6
    invoke-virtual {v8, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1348
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v8}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V

    .line 1351
    const/4 v2, 0x0

    array-length v3, v11

    invoke-virtual {v8, v11, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1352
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v7, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$DeliverPdu;->encodedMessage:[B

    goto :goto_1
.end method

.method public static getStaticSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "dataCodingScheme"    # I
    .param p6, "protocolId"    # I

    .prologue
    .line 1240
    new-instance v1, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;

    invoke-direct {v1, p5, p2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 1242
    .local v1, "dcs":Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getEncodingType()I

    move-result v6

    sput v6, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 1243
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v3

    .line 1245
    .local v3, "reCalcDataCodingScheme":I
    const-string v6, "getStaticSubmitPdu(),[getStaticSubmitPdu]"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),[Dcs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),scAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),destinationAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),statusReportRequested: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),header: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),dataCodingScheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),reCalcDataCodingScheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1254
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),sEncodingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(),protocolId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1258
    if-nez p1, :cond_0

    .line 1259
    const/4 v4, 0x0

    .line 1291
    :goto_0
    return-object v4

    .line 1262
    :cond_0
    const-string v6, "Unknown"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1263
    const-string p1, ""

    .line 1266
    :cond_1
    if-nez p2, :cond_2

    .line 1267
    const-string p2, ""

    .line 1270
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1272
    .local v4, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v6, 0x40

    :goto_1
    or-int/lit8 v6, v6, 0x1

    int-to-byte v2, v6

    .line 1273
    .local v2, "mtiByte":B
    invoke-static {p0, p1, v2, p3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1277
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    sget v6, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    if-nez v6, :cond_4

    .line 1278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStaticSubmitPdu(), ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: ENCODING_UNKNOWN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 1279
    const/4 v4, 0x0

    goto :goto_0

    .line 1272
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "mtiByte":B
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1282
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "mtiByte":B
    :cond_4
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getUserData(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 1283
    .local v5, "userData":[B
    if-eqz v5, :cond_5

    sget v6, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-static {v6, v5}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isMessageTooLong(I[B)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1284
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 1287
    :cond_6
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1289
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1290
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    .line 2031
    invoke-static {}, Lcom/lge/internal/telephony/LGGsmAlphabet;->getEnabledSingleShiftTablesLG()[I

    move-result-object v0

    array-length v7, v0

    .line 2034
    .local v7, "singleShiftIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubmitPdu(), singleShiftIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2037
    if-lez v7, :cond_0

    .line 2038
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 2042
    :goto_0
    return-object v0

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v8 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "protocolId"    # I

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 v5, 0x0

    .line 587
    :goto_0
    return-object v5

    .line 531
    :cond_0
    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 532
    const-string p1, ""

    .line 535
    :cond_1
    if-nez p2, :cond_2

    .line 536
    const-string p2, ""

    .line 539
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 541
    .local v5, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x1

    int-to-byte v2, v0

    .local v2, "mtiByte":B
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p6

    .line 542
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    .line 548
    .local v6, "bo":Ljava/io/ByteArrayOutputStream;
    sput p5, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 549
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    if-nez v0, :cond_3

    .line 551
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 555
    :cond_3
    const/4 v0, 0x0

    const-string v1, "lgu_gsm_submit_encoding_type"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 556
    const-string v0, "ril.card_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 562
    :cond_4
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getUserData(Ljava/lang/String;[B)[B

    move-result-object v7

    .line 563
    .local v7, "userData":[B
    if-eqz v7, :cond_5

    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-static {v0, v7}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isMessageTooLong(I[B)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 564
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 541
    .end local v2    # "mtiByte":B
    .end local v6    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "userData":[B
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 567
    .restart local v2    # "mtiByte":B
    .restart local v6    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "userData":[B
    :cond_7
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 568
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 580
    :goto_2
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->vp:I

    if-lez v0, :cond_8

    .line 581
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->vp:I

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 585
    :cond_8
    const/4 v0, 0x0

    array-length v1, v7

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 586
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0

    .line 569
    :cond_9
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 570
    const/16 v0, 0x84

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 574
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "protocolId"    # I
    .param p5, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 955
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xb4

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 960
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 961
    :cond_0
    const-string v5, "addSCAddress"

    invoke-static {v6, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v3, :cond_5

    .line 962
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSCAddressFromEF()Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, "mSCAddress":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 964
    iput-object v6, p5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 978
    .end local v2    # "mSCAddress":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    .line 980
    or-int/lit8 v5, p2, 0x20

    int-to-byte p2, v5

    .line 985
    :cond_1
    sget v5, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->vp:I

    if-lez v5, :cond_2

    .line 986
    or-int/lit8 v5, p2, 0x10

    int-to-byte p2, v5

    .line 990
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSubmitPduHead(), mtiByte = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 992
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 995
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 999
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1001
    .local v1, "daBytes":[B
    if-eqz v1, :cond_3

    .line 1005
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_7

    :goto_1
    sub-int v3, v5, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1009
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1012
    :cond_3
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1013
    return-object v0

    .line 966
    .end local v1    # "daBytes":[B
    .restart local v2    # "mSCAddress":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 969
    .end local v2    # "mSCAddress":Ljava/lang/String;
    :cond_5
    iput-object v6, p5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 973
    :cond_6
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1    # "daBytes":[B
    :cond_7
    move v3, v4

    .line 1005
    goto :goto_1
.end method

.method private static getSubmitPduHeadforEmailOverSms(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v3, 0x0

    .line 773
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 777
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_3

    .line 778
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 785
    :goto_0
    if-eqz p3, :cond_0

    .line 787
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 793
    :cond_0
    sget v2, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->vp:I

    if-lez v2, :cond_1

    .line 794
    or-int/lit8 v2, p2, 0x10

    int-to-byte p2, v2

    .line 798
    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 801
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 805
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 810
    .local v1, "daBytes":[B
    if-eqz v1, :cond_2

    .line 811
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 818
    const/16 v2, -0x80

    aput-byte v2, v1, v3

    .line 819
    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 820
    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 823
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 827
    :cond_2
    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 829
    return-object v0

    .line 780
    .end local v1    # "daBytes":[B
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1    # "daBytes":[B
    :cond_4
    move v2, v3

    .line 811
    goto :goto_1
.end method

.method public static getSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I

    .prologue
    .line 837
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 838
    :cond_0
    const/4 v9, 0x0

    .line 883
    :goto_0
    return-object v9

    .line 841
    :cond_1
    new-instance v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v9}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 843
    .local v9, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_4

    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x1

    int-to-byte v8, v0

    .line 845
    .local v8, "mtiByte":B
    invoke-static {p0, p1, v8, p3, v9}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSubmitPduHeadforEmailOverSms(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    .line 852
    .local v6, "bo":Ljava/io/ByteArrayOutputStream;
    sput p5, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 856
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    if-nez v0, :cond_2

    .line 858
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 860
    :cond_2
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getUserData(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 861
    .local v10, "userData":[B
    if-eqz v10, :cond_3

    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    invoke-static {v0, v10}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isMessageTooLong(I[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 862
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 843
    .end local v6    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "mtiByte":B
    .end local v10    # "userData":[B
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 865
    .restart local v6    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "mtiByte":B
    .restart local v10    # "userData":[B
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    const/4 v1, 0x0

    sget v2, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->createDataCodingScheme(Lcom/android/internal/telephony/SmsConstants$MessageClass;ZIIZI)B

    move-result v7

    .line 868
    .local v7, "dcs":B
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubmitPduforEmailoverSms(), DCS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 874
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->vp:I

    if-lez v0, :cond_6

    .line 875
    sget v0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->vp:I

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 879
    :cond_6
    const/4 v0, 0x0

    array-length v1, v10

    invoke-virtual {v6, v10, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 881
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method private static getUserData(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 595
    :try_start_0
    sget v4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    if-ne v4, v5, :cond_0

    .line 596
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getUserData7bit(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 622
    :goto_0
    return-object v3

    .line 598
    :cond_0
    sget v4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    if-ne v4, v6, :cond_1

    .line 599
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getUserData8bit(Ljava/lang/String;[B)[B

    move-result-object v3

    .local v3, "userData":[B
    goto :goto_0

    .line 602
    .end local v3    # "userData":[B
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .restart local v3    # "userData":[B
    goto :goto_0

    .line 604
    .end local v3    # "userData":[B
    :catch_0
    move-exception v1

    .line 605
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 606
    .end local v1    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 609
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isKSC5601Encoding()Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 610
    const/4 v4, 0x2

    sput v4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 611
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getUserData8bit(Ljava/lang/String;[B)[B

    move-result-object v3

    goto :goto_0

    .line 615
    :cond_2
    const/4 v4, 0x3

    sput v4, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 616
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    .line 618
    :catch_2
    move-exception v2

    .line 619
    .local v2, "uex_2":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static getUserData7bit(Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 628
    invoke-static {p0, p1, v2, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v1

    .line 631
    .local v1, "userData":[B
    const/4 v2, 0x0

    const-string v3, "KREncodingScheme"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 632
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isCountCharIndexInsteadOfSeptets()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    invoke-static {p0, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 634
    .local v0, "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    sget v3, Landroid/telephony/LGSmsMessageImpl;->LIMIT_USER_DATA_SEPTETS:I

    if-le v2, v3, :cond_0

    .line 635
    new-instance v2, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    .end local v0    # "tedGsm7bit":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    return-object v1
.end method

.method private static getUserData8bit(Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 645
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->encodeKR(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 654
    :goto_0
    return-object v2

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x3

    sput v3, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->sEncodingType:I

    .line 649
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 650
    :catch_1
    move-exception v0

    .line 651
    .local v0, "ucs2_uex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static gsmIntTobcdByte(I)B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 2064
    const/4 v0, 0x0

    .line 2067
    .local v0, "ret":B
    rem-int/lit8 v1, p0, 0xa

    div-int/lit8 v2, p0, 0xa

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-byte v0, v1

    .line 2069
    and-int/lit8 v1, v0, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v0, v1

    .line 2071
    return v0
.end method

.method static includeForceGsmAlphabetLGLength(Ljava/lang/String;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1963
    const/4 v1, 0x0

    .line 1965
    .local v1, "isConvertToGsmAlphabet":Z
    const-string v2, "persist.gsm.sms.forcegsm7"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    .local v0, "encodingType":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1968
    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    return-object v2
.end method

.method public static isCountCharIndexInsteadOfSeptets()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1894
    const/4 v1, 0x0

    const-string v2, "countCharIndexInsteadOfSeptets"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1895
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isReleaseOperator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1900
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKSC5601Encoding()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1879
    const/4 v1, 0x0

    const-string v2, "KSC5601Encoding"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1880
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isReleaseOperator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1885
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMessageTooLong(I[B)Z
    .locals 4
    .param p0, "encodingTypeValue"    # I
    .param p1, "userData"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 658
    if-ne p0, v0, :cond_0

    .line 659
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa0

    if-le v2, v3, :cond_1

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMessageTooLong()_7bit, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: Message too long("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 679
    :goto_0
    return v0

    .line 673
    :cond_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8c

    if-le v2, v3, :cond_1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMessageTooLong()_8_ucs, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: Message too long("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 679
    goto :goto_0
.end method

.method public static isReleaseOperator()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1909
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1910
    .local v1, "numeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isReleaseOperator(), numeric : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1911
    if-nez v1, :cond_1

    .line 1929
    :cond_0
    :goto_0
    return v2

    .line 1915
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 1916
    goto :goto_0

    .line 1919
    :cond_2
    const/4 v4, 0x0

    const-string v5, "releaseOperatorMccMnc"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1921
    .local v0, "mccmnc":Ljava/lang/String;
    if-nez v0, :cond_3

    move v2, v3

    .line 1922
    goto :goto_0

    .line 1925
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 1926
    goto :goto_0
.end method

.method public static makeSafeSmsField(Landroid/content/Intent;[B)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pdus"    # [B

    .prologue
    .line 2091
    const/4 v1, 0x0

    .line 2093
    .local v1, "safe_sms":B
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isReleaseOperator()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2094
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2095
    .local v0, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2096
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget-byte v1, v2, Lcom/android/internal/telephony/SmsHeader;->safeSMS:B

    .line 2097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSafeSMS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2101
    .end local v0    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const-string v2, "safe_sms"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 2102
    return-void
.end method

.method public static makeSmsHeader(ILjava/lang/String;)[B
    .locals 11
    .param p0, "readReplyValue"    # I
    .param p1, "replyAddress"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1838
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1840
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const-string v5, "replyAddress"

    invoke-static {v10, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isReleaseOperator()Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1841
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1843
    invoke-static {p1}, Lcom/lge/telephony/LGPhoneNumberUtils;->KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 1844
    .local v0, "daBytes":[B
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;-><init>()V

    .line 1845
    .local v1, "replayaddress":Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->replyData:[B

    .line 1846
    if-nez v0, :cond_2

    .line 1847
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    .line 1856
    .end local v0    # "daBytes":[B
    .end local v1    # "replayaddress":Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_0
    :goto_0
    const-string v5, "confirmRead"

    invoke-static {v10, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isReleaseOperator()Z

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1857
    const/4 v5, -0x1

    if-le p0, v5, :cond_1

    .line 1858
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;-><init>()V

    .line 1859
    .local v2, "smsConfirmRead":Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    iput v6, v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->length:I

    .line 1860
    new-array v5, v6, [B

    iput-object v5, v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    .line 1861
    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    int-to-byte v6, p0

    aput-byte v6, v5, v7

    .line 1862
    iput-object v2, v3, Lcom/android/internal/telephony/SmsHeader;->smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    .line 1867
    .end local v2    # "smsConfirmRead":Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    :cond_1
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 1868
    .local v4, "smsHeaderData":[B
    return-object v4

    .line 1849
    .end local v4    # "smsHeaderData":[B
    .restart local v0    # "daBytes":[B
    .restart local v1    # "replayaddress":Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_2
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v8, v5, 0x2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xf0

    const/16 v9, 0xf0

    if-ne v5, v9, :cond_3

    move v5, v6

    :goto_1
    sub-int v5, v8, v5

    iput v5, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    .line 1850
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    goto :goto_0

    :cond_3
    move v5, v7

    .line 1849
    goto :goto_1
.end method


# virtual methods
.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public getSmsDisplayMode()I
    .locals 1

    .prologue
    .line 1826
    const/4 v0, -0x1

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, -0x1

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public isMwiUrgentMessage()Z
    .locals 1

    .prologue
    .line 1812
    const-string v0, "isMwiUrgentMessage(), is not supported in GSM mode."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    .line 1813
    const/4 v0, 0x0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method
