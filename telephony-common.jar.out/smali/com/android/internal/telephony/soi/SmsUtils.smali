.class public Lcom/android/internal/telephony/soi/SmsUtils;
.super Ljava/lang/Object;
.source "SmsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 3
    .param p0, "byteValue"    # B

    .prologue
    .line 9
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 11
    .local v1, "ret":Ljava/lang/StringBuffer;
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 12
    .local v0, "b":I
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    and-int/lit8 v0, p0, 0xf

    .line 15
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static convertDtmfToCharNum(B)C
    .locals 2
    .param p0, "dtmfDigit"    # B

    .prologue
    const/16 v1, 0xa

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "num":C
    if-lez p0, :cond_0

    if-ge p0, v1, :cond_0

    .line 201
    add-int/lit8 v1, p0, 0x30

    int-to-char v0, v1

    .line 219
    :goto_0
    return v0

    .line 202
    :cond_0
    if-nez p0, :cond_1

    .line 203
    const/16 v0, 0x44

    goto :goto_0

    .line 204
    :cond_1
    if-ne p0, v1, :cond_2

    .line 205
    const/16 v0, 0x30

    goto :goto_0

    .line 206
    :cond_2
    const/16 v1, 0xb

    if-ne p0, v1, :cond_3

    .line 207
    const/16 v0, 0x2a

    goto :goto_0

    .line 208
    :cond_3
    const/16 v1, 0xc

    if-ne p0, v1, :cond_4

    .line 209
    const/16 v0, 0x23

    goto :goto_0

    .line 210
    :cond_4
    const/16 v1, 0xd

    if-ne p0, v1, :cond_5

    .line 211
    const/16 v0, 0x41

    goto :goto_0

    .line 212
    :cond_5
    const/16 v1, 0xe

    if-ne p0, v1, :cond_6

    .line 213
    const/16 v0, 0x42

    goto :goto_0

    .line 214
    :cond_6
    const/16 v1, 0xf

    if-ne p0, v1, :cond_7

    .line 215
    const/16 v0, 0x43

    goto :goto_0

    .line 217
    :cond_7
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public static shortToByteArray(SLjava/nio/ByteOrder;)[B
    .locals 2
    .param p0, "shortValue"    # S
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 83
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static traceStack(I)Ljava/lang/String;
    .locals 5
    .param p0, "trace_count"    # I

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 224
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v2, "trace":Ljava/lang/StringBuffer;
    const/4 v0, 0x3

    .local v0, "s":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, p0, 0x3

    if-ge v0, v3, :cond_0

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
