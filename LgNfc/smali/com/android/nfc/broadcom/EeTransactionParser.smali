.class public Lcom/android/nfc/broadcom/EeTransactionParser;
.super Ljava/lang/Object;
.source "EeTransactionParser.java"


# static fields
.field static final DBG:Z

.field public static final EXTRA_SECURE_ELEMENT_TRANSACTION_PARAM:Ljava/lang/String; = "com.android.nfc.brcm.SECURE_ELEMENT_TRANSACTION_PARAM"

.field public static final TAG:Ljava/lang/String; = "EeTransactionParser"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/broadcom/EeTransactionParser;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(B[B)[B
    .locals 5
    .param p0, "targetType"    # B
    .param p1, "tlv"    # [B

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "index":I
    const/4 v2, 0x0

    .line 106
    .local v2, "ret":[B
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 107
    aget-byte v3, p1, v0

    .line 108
    .local v3, "tlvType":B
    add-int/lit8 v0, v0, 0x1

    .line 109
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-short v1, v4

    .line 110
    .local v1, "len":S
    add-int/lit8 v0, v0, 0x1

    .line 112
    const/16 v4, 0x81

    if-ne v1, v4, :cond_0

    .line 113
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-short v1, v4

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_0
    if-ne v3, p0, :cond_2

    .line 117
    add-int v4, v0, v1

    invoke-static {p1, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 122
    .end local v1    # "len":S
    .end local v3    # "tlvType":B
    :cond_1
    return-object v2

    .line 120
    .restart local v1    # "len":S
    .restart local v3    # "tlvType":B
    :cond_2
    add-int/2addr v0, v1

    .line 121
    goto :goto_0
.end method

.method public static getAid([B)[B
    .locals 6
    .param p0, "tlv"    # [B

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "aid":[B
    const/16 v2, -0x40

    invoke-static {v2, p0}, Lcom/android/nfc/broadcom/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    sget-boolean v2, Lcom/android/nfc/broadcom/EeTransactionParser;->DBG:Z

    const-string v3, "EeTransactionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAid; found type 0xC0 (AID); len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 55
    .end local v0    # "aid":[B
    .local v1, "aid":[B
    :goto_0
    return-object v1

    .line 51
    .end local v1    # "aid":[B
    .restart local v0    # "aid":[B
    :cond_0
    const/16 v2, -0x7f

    invoke-static {v2, p0}, Lcom/android/nfc/broadcom/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    sget-boolean v2, Lcom/android/nfc/broadcom/EeTransactionParser;->DBG:Z

    const-string v3, "EeTransactionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAid; found type 0x81 (AID); len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 55
    .end local v0    # "aid":[B
    .restart local v1    # "aid":[B
    goto :goto_0
.end method

.method public static getParam([B)[B
    .locals 5
    .param p0, "tlv"    # [B

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 72
    .local v0, "param":[B
    const/16 v1, -0x7e

    invoke-static {v1, p0}, Lcom/android/nfc/broadcom/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    sget-boolean v1, Lcom/android/nfc/broadcom/EeTransactionParser;->DBG:Z

    const-string v2, "EeTransactionParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParam; found type 0x82 (param); len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-object v0
.end method

.method public static getSEId([B)[B
    .locals 5
    .param p0, "tlv"    # [B

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "seid":[B
    const/16 v1, -0x31

    invoke-static {v1, p0}, Lcom/android/nfc/broadcom/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    sget-boolean v1, Lcom/android/nfc/broadcom/EeTransactionParser;->DBG:Z

    const-string v2, "EeTransactionParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSEId; found type 0xCF (seid); len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-object v0
.end method
