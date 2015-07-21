.class public Lcom/android/internal/telephony/soi/RpMessage;
.super Ljava/lang/Object;
.source "RpMessage.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/IRpCause;
.implements Lcom/android/internal/telephony/soi/ITpCause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/soi/RpMessage$RpduParser;,
        Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;
    }
.end annotation


# static fields
.field public static final RP_ACK_MS:B = 0x2t

.field public static final RP_ACK_N:B = 0x3t

.field public static final RP_CAUSE_IEI:I = 0x42

.field public static final RP_DATA_LENGTH:I = 0xf9

.field public static final RP_DATA_MS:B = 0x0t

.field public static final RP_DATA_N:B = 0x1t

.field public static final RP_DATA_SMMA_LENGTH:I = 0x2

.field public static final RP_ERROR_MS:B = 0x4t

.field public static final RP_ERROR_N:B = 0x5t

.field public static final RP_SMMA_MS:B = 0x6t

.field public static final RP_USER_DATA_IEI:I = 0x41

.field public static final RP_USER_DATA_TPDU_LENGTH:I = 0xe8

.field private static final TAG:Ljava/lang/String; = "RpMessage"

.field public static final TPDU_MR_POS:I = 0x1

.field public static final TPDU_SIZE:I = 0xa4


# instance fields
.field private causeLength:I

.field private diagnostics:I

.field private diagnostics_present:Z

.field private ieiOfRpdu:I

.field private mr:I

.field private parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

.field private rpCause:I

.field private rpMti:I

.field private rpudLength:I

.field private scAddress:Ljava/lang/String;

.field private smsc:Ljava/lang/String;

.field private tpdu:[B

.field private tpduMr:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->diagnostics_present:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/soi/RpMessage;Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;)Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/RpMessage;
    .param p1, "x1"    # Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/soi/RpMessage;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/RpMessage;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/soi/RpMessage;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/RpMessage;
    .param p1, "x1"    # [B

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/soi/RpMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/RpMessage;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/soi/RpMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/RpMessage;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/soi/RpMessage;B)B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/RpMessage;
    .param p1, "x1"    # B

    .prologue
    .line 16
    iput-byte p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->tpduMr:B

    return p1
.end method

.method public static createFromRpdu([B)Lcom/android/internal/telephony/soi/RpMessage;
    .locals 4
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v2, Lcom/android/internal/telephony/soi/RpMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/RpMessage;-><init>()V

    .line 58
    .local v2, "msg":Lcom/android/internal/telephony/soi/RpMessage;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/soi/RpMessage;->parseRPDU([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v2    # "msg":Lcom/android/internal/telephony/soi/RpMessage;
    :goto_0
    return-object v2

    .line 60
    .restart local v2    # "msg":Lcom/android/internal/telephony/soi/RpMessage;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/RuntimeException;
    move-object v2, v3

    .line 61
    goto :goto_0

    .line 62
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v2, v3

    .line 63
    goto :goto_0
.end method

.method public static getAddressStrFromBCDwithLength([B)Ljava/lang/String;
    .locals 7
    .param p0, "address"    # [B

    .prologue
    const/4 v6, 0x0

    .line 451
    if-nez p0, :cond_0

    .line 452
    const-string v4, "RpMessage"

    const-string v5, "getAddressFromBCDwithLength : address null "

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v2, 0x0

    .line 476
    :goto_0
    return-object v2

    .line 457
    :cond_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [B

    .line 458
    .local v1, "localAddress":[B
    const/4 v4, 0x1

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {p0, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 461
    aget-byte v0, p0, v6

    .line 463
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 465
    const/4 v2, 0x0

    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v2    # "ret":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v1, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 470
    .restart local v2    # "ret":Ljava/lang/String;
    const-string v4, "RpMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAddressFromBCDwithLength :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 472
    .local v3, "tr":Ljava/lang/RuntimeException;
    const-string v4, "RpMessage"

    const-string v5, "getAddressStrFromBCDwithLength  invalid SC address: "

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    const/4 v2, 0x0

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getRpAckRpdu(II)[B
    .locals 6
    .param p0, "rlMti"    # I
    .param p1, "mr"    # I

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "ackString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0xf9

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 377
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    int-to-byte v3, p0

    invoke-static {v3}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    int-to-byte v3, p1

    invoke-static {v3}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const/16 v3, 0x41

    invoke-static {v3}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v2, "020000"

    .line 384
    .local v2, "tpduString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v3, "RpMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send RP-ACK raw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3
.end method

.method public static getRpAckRpdu(II[B)[B
    .locals 5
    .param p0, "rlMti"    # I
    .param p1, "mr"    # I
    .param p2, "tpdu"    # [B

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "ackString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xf9

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 397
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    int-to-byte v2, p0

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    int-to-byte v2, p1

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    if-eqz p2, :cond_0

    .line 402
    const/16 v2, 0x41

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    array-length v2, p2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string v2, "RpMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send RP-ACK raw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static getRpDataRpdu(IILjava/lang/String;[B)[B
    .locals 6
    .param p0, "rlMti"    # I
    .param p1, "mr"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "tpdu"    # [B

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "rpduString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xf9

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 342
    .local v2, "strBuf":Ljava/lang/StringBuffer;
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "rp_addr":Ljava/lang/String;
    const-string v3, "RpMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRpDataRpdu() rp_addr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    int-to-byte v3, p0

    invoke-static {v3}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    int-to-byte v3, p1

    invoke-static {v3}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    if-nez p0, :cond_0

    .line 351
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :goto_0
    if-nez p3, :cond_1

    .line 359
    const-string v3, "RpMessage"

    const-string v4, "getRpDataRpdu() tpdu null!!"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    const-string v3, "RpMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRpDataRpdu() rpdu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 354
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 361
    :cond_1
    array-length v3, p3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getRpErrorRpdu(II[BIII)[B
    .locals 3
    .param p0, "rlMti"    # I
    .param p1, "mr"    # I
    .param p2, "tpdu"    # [B
    .param p3, "rpCauseLength"    # I
    .param p4, "rpCause"    # I
    .param p5, "diagonastics"    # I

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "errorString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xf9

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 418
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    int-to-byte v2, p0

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    int-to-byte v2, p1

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    int-to-byte v2, p3

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    int-to-byte v2, p4

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 424
    int-to-byte v2, p5

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    :cond_0
    if-eqz p2, :cond_1

    .line 427
    const/16 v2, 0x41

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    array-length v2, p2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static getRpSMMARpdu(I)[B
    .locals 5
    .param p0, "mr"    # I

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "smmaString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 440
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    int-to-byte v2, p0

    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    const-string v2, "RpMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send RP-SMMA raw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static getStringMti(I)Ljava/lang/String;
    .locals 2
    .param p0, "mti"    # I

    .prologue
    .line 507
    packed-switch p0, :pswitch_data_0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mti: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 509
    :pswitch_0
    const-string v0, "MO : RP_DATA_MS"

    goto :goto_0

    .line 511
    :pswitch_1
    const-string v0, "MT : RP_DATA_N"

    goto :goto_0

    .line 513
    :pswitch_2
    const-string v0, "MT : RP_ACK_MS"

    goto :goto_0

    .line 515
    :pswitch_3
    const-string v0, "MO : RP_ACK_N"

    goto :goto_0

    .line 517
    :pswitch_4
    const-string v0, "MT : RP_ERROR_MS"

    goto :goto_0

    .line 519
    :pswitch_5
    const-string v0, "MO : RP_ERROR_N"

    goto :goto_0

    .line 521
    :pswitch_6
    const-string v0, "MO : RP_SMMA_MS"

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isPermanentError(I)Z
    .locals 1
    .param p0, "rpCause"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "ret":Z
    sparse-switch p0, :sswitch_data_0

    .line 500
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    .line 491
    :sswitch_0
    const/4 v0, 0x1

    .line 493
    goto :goto_0

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x45 -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x6f -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private parseRpIEI(ILcom/android/internal/telephony/soi/RpMessage$RpduParser;)V
    .locals 6
    .param p1, "mti"    # I
    .param p2, "p"    # Lcom/android/internal/telephony/soi/RpMessage$RpduParser;

    .prologue
    const/16 v5, 0xe8

    const/4 v4, 0x0

    .line 264
    :cond_0
    :goto_0
    iget v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    iget v2, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpduLen:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 265
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->ieiOfRpdu:I

    .line 267
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->ieiOfRpdu:I

    packed-switch v1, :pswitch_data_0

    .line 306
    const-string v1, "RpMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMR mr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->mr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getStringMti(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w/unknown usrDataIEI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->ieiOfRpdu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->ieiOfRpdu:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_5

    .line 317
    iget v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "RpMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRpIEI() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getStringMti(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ArrayIndexOutOfBoundsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iput v4, p0, Lcom/android/internal/telephony/soi/RpMessage;->ieiOfRpdu:I

    .line 332
    iput v4, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    .line 333
    iget v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpduLen:I

    iput v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    .line 337
    .end local v0    # "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-void

    .line 269
    :pswitch_0
    :try_start_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    .line 270
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 271
    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    if-gt v1, v5, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    iget v2, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpduLen:I

    iget v3, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 274
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->constructTPUD()V

    goto/16 :goto_0

    .line 275
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    if-eqz v1, :cond_0

    .line 280
    iget v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpduLen:I

    iput v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    .line 281
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    goto/16 :goto_0

    .line 284
    :cond_3
    iget v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpduLen:I

    iget v2, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    if-gt v1, v5, :cond_4

    .line 287
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->constructTPUD()V

    goto/16 :goto_0

    .line 294
    :cond_4
    iget v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mRpduLen:I

    iput v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    .line 295
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    goto/16 :goto_0

    .line 324
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    .line 325
    iget v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I

    iget v2, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->mCur:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCauseLength()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->causeLength:I

    return v0
.end method

.method public getDiagnostics()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->diagnostics:I

    return v0
.end method

.method public getIeiOfRpdu()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->ieiOfRpdu:I

    return v0
.end method

.method public getMr()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->mr:I

    return v0
.end method

.method public getParseError()Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    return-object v0
.end method

.method public getRpCause()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpCause:I

    return v0
.end method

.method public getRpMti()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I

    return v0
.end method

.method public getRpudLength()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    return v0
.end method

.method public getScAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->smsc:Ljava/lang/String;

    return-object v0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B

    return-object v0
.end method

.method public getTpduMr()B
    .locals 1

    .prologue
    .line 624
    iget-byte v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->tpduMr:B

    return v0
.end method

.method public isDiagnostics_present()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/android/internal/telephony/soi/RpMessage;->diagnostics_present:Z

    return v0
.end method

.method public parseRPAck(Lcom/android/internal/telephony/soi/RpMessage$RpduParser;)V
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/soi/RpMessage$RpduParser;

    .prologue
    .line 225
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/soi/RpMessage;->parseRpIEI(ILcom/android/internal/telephony/soi/RpMessage$RpduParser;)V

    .line 226
    return-void
.end method

.method public parseRPDU([B)V
    .locals 5
    .param p1, "rpdu"    # [B

    .prologue
    .line 163
    const-string v2, "RpMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseRPDU() RPDU : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;-><init>(Lcom/android/internal/telephony/soi/RpMessage;[B)V

    .line 165
    .local v1, "p":Lcom/android/internal/telephony/soi/RpMessage$RpduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v0

    .line 166
    .local v0, "firstByte":I
    and-int/lit8 v2, v0, 0x7

    iput v2, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I

    .line 167
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/soi/RpMessage;->mr:I

    .line 168
    iget v2, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I

    packed-switch v2, :pswitch_data_0

    .line 180
    :pswitch_0
    const-string v2, "RpMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseRPDU() rpMti error!!! rpMti: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 171
    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/soi/RpMessage;->parseRPData(ILcom/android/internal/telephony/soi/RpMessage$RpduParser;)V

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/soi/RpMessage;->parseRPAck(Lcom/android/internal/telephony/soi/RpMessage$RpduParser;)V

    goto :goto_0

    .line 177
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/soi/RpMessage;->parseRPError(Lcom/android/internal/telephony/soi/RpMessage$RpduParser;)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public parseRPData(ILcom/android/internal/telephony/soi/RpMessage$RpduParser;)V
    .locals 6
    .param p1, "mti"    # I
    .param p2, "p"    # Lcom/android/internal/telephony/soi/RpMessage$RpduParser;

    .prologue
    const/16 v5, 0x60

    .line 186
    const/4 v2, 0x0

    .line 189
    .local v2, "rpOa":B
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 190
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->scAddress:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    if-eqz v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v3

    int-to-byte v1, v3

    .line 195
    .local v1, "rpDa":B
    if-eqz v1, :cond_3

    .line 196
    new-instance v3, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    const/16 v4, 0x60

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;-><init>(Lcom/android/internal/telephony/soi/RpMessage;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v1    # "rpDa":B
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    if-nez v3, :cond_0

    .line 217
    new-instance v3, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;-><init>(Lcom/android/internal/telephony/soi/RpMessage;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    goto :goto_0

    .line 210
    .end local v0    # "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v3

    int-to-byte v2, v3

    .line 211
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->scAddress:Ljava/lang/String;

    .line 213
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    .line 214
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->constructTPUD()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public parseRPError(Lcom/android/internal/telephony/soi/RpMessage$RpduParser;)V
    .locals 3
    .param p1, "p"    # Lcom/android/internal/telephony/soi/RpMessage$RpduParser;

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->causeLength:I

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpCause:I

    .line 239
    iget v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->causeLength:I

    packed-switch v1, :pswitch_data_0

    .line 254
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    const/16 v2, 0x60

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;-><init>(Lcom/android/internal/telephony/soi/RpMessage;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    .line 261
    .end local v0    # "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    return-void

    .line 243
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage$RpduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->diagnostics:I

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/soi/RpMessage;->diagnostics_present:Z

    .line 256
    :pswitch_1
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/soi/RpMessage;->parseRpIEI(ILcom/android/internal/telephony/soi/RpMessage$RpduParser;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCauseLength(I)V
    .locals 0
    .param p1, "causeLength"    # I

    .prologue
    .line 564
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->causeLength:I

    .line 565
    return-void
.end method

.method public setDiagnostics(I)V
    .locals 0
    .param p1, "diagnostics"    # I

    .prologue
    .line 620
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->diagnostics:I

    .line 621
    return-void
.end method

.method public setDiagnostics_present(Z)V
    .locals 0
    .param p1, "diagnostics_present"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->diagnostics_present:Z

    .line 613
    return-void
.end method

.method public setIeiOfRpdu(I)V
    .locals 0
    .param p1, "ieiOfRpdu"    # I

    .prologue
    .line 548
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->ieiOfRpdu:I

    .line 549
    return-void
.end method

.method public setMr(I)V
    .locals 0
    .param p1, "mr"    # I

    .prologue
    .line 540
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->mr:I

    .line 541
    return-void
.end method

.method public setParseError(Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;)V
    .locals 0
    .param p1, "parseError"    # Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->parseError:Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    .line 605
    return-void
.end method

.method public setRpCause(I)V
    .locals 0
    .param p1, "rpCause"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpCause:I

    .line 573
    return-void
.end method

.method public setRpMti(I)V
    .locals 0
    .param p1, "rpMti"    # I

    .prologue
    .line 532
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpMti:I

    .line 533
    return-void
.end method

.method public setRpudLength(I)V
    .locals 0
    .param p1, "rpudLength"    # I

    .prologue
    .line 556
    iput p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->rpudLength:I

    .line 557
    return-void
.end method

.method public setScAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->scAddress:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->smsc:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public setTpdu([B)V
    .locals 0
    .param p1, "tpdu"    # [B

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->tpdu:[B

    .line 597
    return-void
.end method

.method public setTpduMr(B)V
    .locals 0
    .param p1, "tpduMr"    # B

    .prologue
    .line 628
    iput-byte p1, p0, Lcom/android/internal/telephony/soi/RpMessage;->tpduMr:B

    .line 629
    return-void
.end method
