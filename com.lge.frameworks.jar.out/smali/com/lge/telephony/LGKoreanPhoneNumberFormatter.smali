.class Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "LGKoreanPhoneNumberFormatter.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "LGKoreanPhoneNumberFormatter"

.field private static sDDD3Number:[S

.field private static sDDD5Number:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD5Number:[S

    return-void

    .line 32
    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x1fs
        0x20s
        0x21s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x46s
        0x50s
    .end array-data

    .line 39
    nop

    :array_1
    .array-data 2
        0x12cs
        0x141s
        0x155s
        0x158s
        0x159s
        0x16ds
        0x2bcs
        0x2d7s
        0x2f3s
        0x30cs
        0x2fes
        0x313s
        0x184s
        0x302s
        0x309s
        0x2f1s
        0x2c3s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 12
    .param p0, "oritext"    # Landroid/text/Editable;

    .prologue
    const/4 v11, 0x1

    .line 47
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 48
    .local v3, "text":Landroid/text/Editable;
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v3, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 49
    invoke-interface {p0}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format input = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 55
    const/4 v9, 0x0

    .line 56
    .local v9, "tmp1stHyphen":I
    const/4 v10, 0x0

    .line 57
    .local v10, "tmp2ndHyphen":I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v8

    .line 60
    .local v8, "length":I
    invoke-static {v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->removeHyphen(Landroid/text/Editable;)V

    .line 62
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v8

    .line 64
    invoke-static {p0, v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->isValid(Landroid/text/Editable;Landroid/text/Editable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {v3, v8}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPosition(Landroid/text/Editable;I)I

    move-result v9

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tmp1stHyphen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 72
    invoke-static {v3, v8, v9}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getSecondHyphenPosition(Landroid/text/Editable;II)I

    move-result v10

    .line 75
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    if-ge v7, v8, :cond_4

    .line 76
    if-ne v7, v9, :cond_1

    if-eqz v7, :cond_1

    .line 77
    const-string v0, "-"

    invoke-interface {v3, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 79
    :cond_1
    const/4 v0, 0x4

    if-le v10, v0, :cond_3

    .line 80
    add-int/lit8 v0, v7, 0x1

    if-ne v0, v10, :cond_2

    if-eqz v7, :cond_2

    .line 81
    add-int/lit8 v0, v7, 0x1

    const-string v1, "-"

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 75
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 84
    :cond_3
    if-ne v7, v10, :cond_2

    if-eqz v7, :cond_2

    .line 85
    const-string v0, "-"

    invoke-interface {v3, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 89
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result tmp1stHyphen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result tmp2ndHyphen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format output = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 96
    :try_start_0
    const-string v0, "last"

    invoke-static {v0, p0, v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V

    .line 97
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 98
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v6

    .line 100
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selection exception e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Z)V

    .line 101
    const-string v0, "selection exception"

    invoke-static {v0, p0, v3, v11}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V

    goto/16 :goto_0
.end method

.method private static getFirstHyphenPosition(Landroid/text/Editable;I)I
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x30

    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, "tmp1stHyphen":I
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    .line 173
    const/4 v0, 0x2

    .line 177
    :cond_0
    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    .line 178
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 179
    const/4 v0, 0x3

    .line 183
    :cond_1
    const/4 v1, 0x4

    if-lt p1, v1, :cond_2

    .line 184
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionMidLength(Landroid/text/Editable;II)I

    move-result v0

    .line 187
    :cond_2
    return v0
.end method

.method private static getFirstHyphenPositionKT(Landroid/text/Editable;II)I
    .locals 7
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    move v1, p2

    .line 228
    .local v1, "tmp1stHyphen":I
    if-ne p1, v6, :cond_1

    .line 229
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v2, v3, v4

    .line 231
    .local v2, "tmpDDDNumber":I
    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 243
    .end local v2    # "tmpDDDNumber":I
    :cond_0
    return v1

    .line 234
    :cond_1
    if-le p1, v6, :cond_0

    .line 235
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x64

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v2, v3, v4

    .line 236
    .restart local v2    # "tmpDDDNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 237
    sget-object v3, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    aget-short v3, v3, v0

    if-ne v2, v3, :cond_2

    .line 238
    const/4 v1, 0x3

    .line 236
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getFirstHyphenPositionLongLength(Landroid/text/Editable;II)I
    .locals 7
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v4, 0x6

    const/4 v6, 0x1

    .line 265
    move v1, p2

    .line 268
    .local v1, "tmp1stHyphen":I
    if-ge p1, v4, :cond_0

    move v2, v1

    .line 282
    .end local v1    # "tmp1stHyphen":I
    .local v2, "tmp1stHyphen":I
    :goto_0
    return v2

    .line 272
    .end local v2    # "tmp1stHyphen":I
    .restart local v1    # "tmp1stHyphen":I
    :cond_0
    if-lt p1, v4, :cond_2

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_2

    .line 273
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x2710

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    const/4 v5, 0x3

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int v3, v4, v5

    .line 275
    .local v3, "tmpDDDNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD5Number:[S

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 276
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD5Number:[S

    aget-short v4, v4, v0

    if-ne v3, v4, :cond_1

    .line 277
    const/4 v1, 0x5

    .line 275
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "tmpDDDNumber":I
    :cond_2
    move v2, v1

    .line 282
    .end local v1    # "tmp1stHyphen":I
    .restart local v2    # "tmp1stHyphen":I
    goto :goto_0
.end method

.method private static getFirstHyphenPositionMidLength(Landroid/text/Editable;II)I
    .locals 9
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    move v0, p2

    .line 195
    .local v0, "tmp1stHyphen":I
    const-string v2, "KR"

    const-string v3, "KT"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 197
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionKT(Landroid/text/Editable;II)I

    move-result v0

    .line 204
    :goto_0
    if-ne p1, v8, :cond_2

    .line 205
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-interface {p0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int v1, v2, v3

    .line 207
    .local v1, "tmpDDDNumber":I
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1fd

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x82

    if-ne v1, v2, :cond_2

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 212
    .end local v1    # "tmpDDDNumber":I
    :cond_2
    if-le p1, v8, :cond_5

    .line 213
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-interface {p0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int v1, v2, v3

    .line 214
    .restart local v1    # "tmpDDDNumber":I
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_3

    const/16 v2, 0x1fd

    if-le v1, v2, :cond_4

    :cond_3
    const/16 v2, 0x82

    if-ne v1, v2, :cond_5

    .line 215
    :cond_4
    const/4 v0, 0x4

    .line 219
    .end local v1    # "tmpDDDNumber":I
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionLongLength(Landroid/text/Editable;II)I

    move-result v0

    .line 221
    return v0

    .line 200
    :cond_6
    invoke-static {p0, p1, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getFirstHyphenPositionSKT(Landroid/text/Editable;II)I

    move-result v0

    goto :goto_0
.end method

.method private static getFirstHyphenPositionSKT(Landroid/text/Editable;II)I
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    .line 247
    move v1, p2

    .line 250
    .local v1, "tmp1stHyphen":I
    const/4 v4, 0x4

    if-ge p1, v4, :cond_0

    move v2, v1

    .line 261
    .end local v1    # "tmp1stHyphen":I
    .local v2, "tmp1stHyphen":I
    :goto_0
    return v2

    .line 254
    .end local v2    # "tmp1stHyphen":I
    .restart local v1    # "tmp1stHyphen":I
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int v3, v4, v5

    .line 255
    .local v3, "tmpDDDNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 256
    sget-object v4, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->sDDD3Number:[S

    aget-short v4, v4, v0

    if-ne v3, v4, :cond_1

    .line 257
    const/4 v1, 0x3

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 261
    .end local v1    # "tmp1stHyphen":I
    .restart local v2    # "tmp1stHyphen":I
    goto :goto_0
.end method

.method private static getSecondHyphenPosition(Landroid/text/Editable;II)I
    .locals 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 286
    move v2, p2

    .line 287
    .local v2, "tmp1stHyphen":I
    const/4 v3, 0x0

    .line 292
    .local v3, "tmp2ndHyphen":I
    if-lez v2, :cond_5

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 294
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_0

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_3

    .line 295
    :cond_0
    move v1, v0

    .line 300
    :cond_1
    if-eqz v1, :cond_4

    .line 301
    move v3, v1

    .line 324
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_2
    :goto_1
    return v3

    .line 293
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_4
    invoke-static {p0, p1, v2, v3}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->getSecondHyphenPosition2(Landroid/text/Editable;III)I

    move-result v3

    goto :goto_1

    .line 307
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_5
    const/4 v2, 0x0

    .line 308
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_6

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_7

    .line 309
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 311
    :cond_7
    const/16 v4, 0x8

    if-lt p1, v4, :cond_9

    .line 312
    const/4 v3, 0x4

    .line 316
    :goto_2
    if-ne p1, v7, :cond_2

    const/4 v4, 0x3

    invoke-interface {p0, v6, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "050"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {p0, v6, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0130"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 314
    :cond_9
    const/4 v3, 0x3

    goto :goto_2
.end method

.method private static getSecondHyphenPosition2(Landroid/text/Editable;III)I
    .locals 5
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "length"    # I
    .param p2, "tmp1st"    # I
    .param p3, "tmp2nd"    # I

    .prologue
    const/16 v4, 0x30

    .line 328
    move v0, p2

    .line 329
    .local v0, "tmp1stHyphen":I
    move v1, p3

    .line 332
    .local v1, "tmp2ndHyphen":I
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 333
    add-int/lit8 v2, v0, 0x8

    if-lt p1, v2, :cond_0

    .line 334
    add-int/lit8 v1, v0, 0x5

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 1 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    .line 359
    :goto_0
    return v1

    .line 337
    :cond_0
    add-int/lit8 v1, v0, 0x4

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 2 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_1
    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    .line 342
    add-int/lit8 v2, v0, 0x9

    if-lt p1, v2, :cond_2

    .line 343
    add-int/lit8 v1, v0, 0x5

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 3 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    add-int/lit8 v1, v0, 0x4

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 4 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_3
    add-int/lit8 v2, v0, 0x8

    if-lt p1, v2, :cond_4

    .line 351
    add-int/lit8 v1, v0, 0x5

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 5 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_4
    add-int/lit8 v1, v0, 0x4

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case 6 tmp2ndHyphen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static isValid(Landroid/text/Editable;Landroid/text/Editable;)Z
    .locals 11
    .param p0, "oritext"    # Landroid/text/Editable;
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 121
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    .line 123
    .local v8, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 124
    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    :cond_0
    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    .line 130
    :try_start_0
    const-string v0, ""

    invoke-static {v0, p0, p1}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V

    .line 131
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 132
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 135
    :cond_1
    const-string v0, "step2"

    invoke-static {v0, p0, p1}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V

    .line 136
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v9

    .line 165
    :goto_2
    return v0

    .line 137
    :catch_0
    move-exception v6

    .line 138
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selection Exception i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Z)V

    .line 139
    const-string v0, "selection exception"

    invoke-static {v0, p0, p1, v10}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V

    goto :goto_1

    .line 123
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 157
    :cond_3
    const/4 v0, 0x2

    if-ge v8, v0, :cond_4

    move v0, v9

    .line 158
    goto :goto_2

    .line 161
    :cond_4
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v9

    .line 162
    goto :goto_2

    :cond_6
    move v0, v10

    .line 165
    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Z)V

    .line 364
    return-void
.end method

.method private static log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "oritext"    # Landroid/text/Editable;
    .param p2, "text"    # Landroid/text/Editable;

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/telephony/LGKoreanPhoneNumberFormatter;->log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V

    .line 374
    return-void
.end method

.method private static log(Ljava/lang/String;Landroid/text/Editable;Landroid/text/Editable;Z)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "oritext"    # Landroid/text/Editable;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "enforce"    # Z

    .prologue
    .line 377
    if-eqz p3, :cond_1

    .line 378
    const-string v0, "LGKoreanPhoneNumberFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oritext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz p1, :cond_0

    .line 381
    const-string v0, "LGKoreanPhoneNumberFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oritext.toString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oritext.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    if-eqz p2, :cond_1

    .line 384
    const-string v0, "LGKoreanPhoneNumberFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text.toString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "enforce"    # Z

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    const-string v0, "LGKoreanPhoneNumberFormatter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    return-void
.end method

.method private static removeHyphen(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 112
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 113
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method
