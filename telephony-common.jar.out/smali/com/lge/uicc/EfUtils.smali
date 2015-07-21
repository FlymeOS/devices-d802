.class public Lcom/lge/uicc/EfUtils;
.super Ljava/lang/Object;
.source "EfUtils.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/EfUtils;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bcdToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 137
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/lge/uicc/EfUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v8, 0x9

    .line 149
    if-eqz p0, :cond_0

    array-length v6, p0

    if-le v6, p1, :cond_0

    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    .line 150
    :cond_0
    const-string v6, ""

    .line 171
    :goto_0
    return-object v6

    .line 152
    :cond_1
    add-int v6, p1, p2

    array-length v7, p0

    if-le v6, v7, :cond_2

    .line 153
    array-length v6, p0

    sub-int p2, v6, p1

    .line 155
    :cond_2
    mul-int/lit8 v6, p2, 0x2

    new-array v1, v6, [C

    .line 156
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 157
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    :goto_1
    if-ge v4, p2, :cond_6

    .line 159
    add-int v6, p1, v4

    aget-byte v0, p0, v6

    .line 161
    .local v0, "b":B
    and-int/lit8 v5, v0, 0xf

    .line 162
    .local v5, "v":I
    if-le v5, v8, :cond_4

    move v2, v3

    .line 171
    .end local v0    # "b":B
    .end local v3    # "count":I
    .end local v5    # "v":I
    .restart local v2    # "count":I
    :cond_3
    :goto_2
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 163
    .end local v2    # "count":I
    .restart local v0    # "b":B
    .restart local v3    # "count":I
    .restart local v5    # "v":I
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 165
    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v5, v6, 0xf

    .line 167
    const/16 v6, 0xf

    if-ne v5, v6, :cond_5

    .line 157
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_1

    .line 168
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-gt v5, v8, :cond_3

    .line 169
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    aput-char v6, v1, v2

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3

    .end local v0    # "b":B
    .end local v2    # "count":I
    .end local v5    # "v":I
    .restart local v3    # "count":I
    :cond_6
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 101
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static bytesToHexString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 115
    if-eqz p0, :cond_0

    array-length v3, p0

    if-le v3, p1, :cond_0

    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    .line 116
    :cond_0
    const-string v3, ""

    .line 127
    :goto_0
    return-object v3

    .line 118
    :cond_1
    add-int v3, p1, p2

    array-length v4, p0

    if-le v3, v4, :cond_2

    .line 119
    array-length v3, p0

    sub-int p2, v3, p1

    .line 121
    :cond_2
    mul-int/lit8 v3, p2, 0x2

    new-array v1, v3, [C

    .line 122
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_3

    .line 123
    add-int v3, p1, v2

    aget-byte v0, p0, v3

    .line 124
    .local v0, "b":B
    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/lge/uicc/EfUtils;->HEX_CHARS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 125
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/lge/uicc/EfUtils;->HEX_CHARS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "b":B
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static bytesToInt([B)I
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v1, 0x4

    .line 62
    if-nez p0, :cond_1

    .line 63
    const/4 v2, -0x1

    .line 70
    :cond_0
    return v2

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    .local v2, "value":I
    array-length v3, p0

    if-ge v3, v1, :cond_2

    array-length v1, p0

    .line 67
    .local v1, "sz":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 68
    mul-int/lit16 v3, v2, 0x100

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int v2, v3, v4

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hexCharToInt(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 29
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 32
    :goto_0
    return v0

    .line 30
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 31
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 80
    if-nez p0, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 91
    :cond_0
    return-object v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 85
    .local v3, "sz":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 86
    .local v1, "chars":[C
    div-int/lit8 v4, v3, 0x2

    new-array v0, v4, [B

    .line 88
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 89
    div-int/lit8 v4, v2, 0x2

    aget-char v5, v1, v2

    invoke-static {v5}, Lcom/lge/uicc/EfUtils;->hexCharToInt(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/lge/uicc/EfUtils;->hexCharToInt(C)I

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 88
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method public static hexStringToInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 43
    if-nez p0, :cond_1

    .line 44
    const/4 v2, -0x1

    .line 51
    :cond_0
    return v2

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    .local v2, "value":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 48
    .local v1, "sz":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    mul-int/lit8 v3, v2, 0x10

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/lge/uicc/EfUtils;->hexCharToInt(C)I

    move-result v4

    add-int v2, v3, v4

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 4
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 183
    if-eqz p0, :cond_0

    if-gt p1, p2, :cond_0

    array-length v3, p0

    if-ge v3, p2, :cond_2

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 191
    :cond_1
    return-object v0

    .line 187
    :cond_2
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 188
    .local v0, "arrayBuf":[B
    move v1, p1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 189
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 188
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
