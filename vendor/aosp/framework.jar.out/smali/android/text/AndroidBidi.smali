.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B
    .param p3, "n"    # I
    .param p4, "haveInfo"    # Z

    .prologue
    .line 29
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 33
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    .line 34
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 37
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 42
    :pswitch_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 46
    .local v0, "result":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 47
    :goto_1
    invoke-static {p1, p2, v0, p3}, Landroid/text/AndroidBidi;->changeNumberRun([C[BII)V

    .line 48
    return v0

    .line 38
    .end local v0    # "result":I
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    .line 39
    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    .line 40
    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    .line 41
    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    .line 46
    .restart local v0    # "result":I
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static changeNumberRun([C[BII)V
    .locals 8
    .param p0, "ch"    # [C
    .param p1, "chInfo"    # [B
    .param p2, "para"    # I
    .param p3, "n"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_6

    .line 77
    aget-char v0, p0, v2

    .line 78
    .local v0, "c":C
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_0

    const/16 v5, 0x23

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2a

    if-ne v0, v5, :cond_4

    .line 79
    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v5, v6}, Landroid/text/AndroidBidi;->isDigitsOnly([CII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    aget-byte v1, p1, v2

    .line 81
    .local v1, "currentLevel":B
    add-int/lit8 v5, v2, -0x1

    aget-byte v4, p1, v5

    .line 82
    .local v4, "previousLevel":B
    invoke-static {v4}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    aput-byte v4, p1, v2

    .line 85
    .end local v1    # "currentLevel":B
    .end local v4    # "previousLevel":B
    :cond_1
    if-ltz v2, :cond_2

    sub-int v5, p3, v2

    if-le v5, v7, :cond_2

    .line 86
    add-int/lit8 v5, v2, 0x1

    invoke-static {p0, v5, v7}, Landroid/text/AndroidBidi;->isDigitsOnly([CII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    if-nez v2, :cond_3

    .line 88
    aget-byte v1, p1, v2

    .line 89
    .restart local v1    # "currentLevel":B
    add-int/lit8 v5, v2, 0x1

    aget-byte v3, p1, v5

    .line 90
    .local v3, "nextLevel":B
    invoke-static {v1}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    aput-byte v3, p1, v2

    .line 76
    .end local v1    # "currentLevel":B
    .end local v3    # "nextLevel":B
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_3
    add-int/lit8 v5, v2, -0x1

    aget-byte v4, p1, v5

    .line 95
    .restart local v4    # "previousLevel":B
    aget-byte v1, p1, v2

    .line 96
    .restart local v1    # "currentLevel":B
    add-int/lit8 v5, v2, 0x1

    aget-byte v3, p1, v5

    .line 97
    .restart local v3    # "nextLevel":B
    if-ne v4, v1, :cond_2

    invoke-static {v1}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    aput-byte v3, p1, v2

    goto :goto_1

    .line 104
    .end local v1    # "currentLevel":B
    .end local v3    # "nextLevel":B
    .end local v4    # "previousLevel":B
    :cond_4
    const/16 v5, 0x20

    if-eq v0, v5, :cond_5

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_2

    .line 105
    :cond_5
    if-lez v2, :cond_2

    add-int/lit8 v5, p3, -0x1

    if-ge v2, v5, :cond_2

    .line 106
    add-int/lit8 v5, v2, 0x1

    invoke-static {p0, v5, v6}, Landroid/text/AndroidBidi;->isDigitsOnly([CII)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v5, v6}, Landroid/text/AndroidBidi;->isDigitsOnly([CII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    aget-byte v1, p1, v2

    .line 108
    .restart local v1    # "currentLevel":B
    add-int/lit8 v5, v2, 0x1

    aget-byte v3, p1, v5

    .line 109
    .restart local v3    # "nextLevel":B
    add-int/lit8 v5, v2, -0x1

    aget-byte v4, p1, v5

    .line 110
    .restart local v4    # "previousLevel":B
    invoke-static {v4}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroid/text/AndroidBidi;->isEven(B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    aput-byte v3, p1, v2

    goto :goto_1

    .line 117
    .end local v0    # "c":C
    .end local v1    # "currentLevel":B
    .end local v3    # "nextLevel":B
    .end local v4    # "previousLevel":B
    :cond_6
    return-void
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 24
    .param p0, "dir"    # I
    .param p1, "levels"    # [B
    .param p2, "lstart"    # I
    .param p3, "chars"    # [C
    .param p4, "cstart"    # I
    .param p5, "len"    # I

    .prologue
    .line 141
    if-nez p5, :cond_0

    .line 142
    sget-object v22, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 261
    :goto_0
    return-object v22

    .line 145
    :cond_0
    const/16 v22, 0x1

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/4 v2, 0x0

    .line 146
    .local v2, "baseLevel":I
    :goto_1
    aget-byte v4, p1, p2

    .line 147
    .local v4, "curLevel":I
    move v14, v4

    .line 148
    .local v14, "minLevel":I
    const/16 v18, 0x1

    .line 152
    .local v18, "runCount":I
    add-int/lit8 v8, p2, 0x1

    .local v8, "i":I
    add-int v5, p2, p5

    .local v5, "e":I
    :goto_2
    if-ge v8, v5, :cond_3

    .line 153
    :try_start_0
    aget-byte v10, p1, v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v10, "level":I
    if-eq v10, v4, :cond_1

    .line 155
    move v4, v10

    .line 156
    add-int/lit8 v18, v18, 0x1

    .line 152
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 145
    .end local v2    # "baseLevel":I
    .end local v4    # "curLevel":I
    .end local v5    # "e":I
    .end local v8    # "i":I
    .end local v10    # "level":I
    .end local v14    # "minLevel":I
    .end local v18    # "runCount":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 159
    .restart local v2    # "baseLevel":I
    .restart local v4    # "curLevel":I
    .restart local v5    # "e":I
    .restart local v8    # "i":I
    .restart local v14    # "minLevel":I
    .restart local v18    # "runCount":I
    :catch_0
    move-exception v6

    .line 160
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 165
    .end local v6    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    move/from16 v20, p5

    .line 166
    .local v20, "visLen":I
    and-int/lit8 v22, v4, 0x1

    and-int/lit8 v23, v2, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 168
    :cond_4
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_5

    .line 169
    add-int v22, p4, v20

    aget-char v3, p3, v22

    .line 171
    .local v3, "ch":C
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v3, v0, :cond_7

    .line 172
    add-int/lit8 v20, v20, -0x1

    .line 180
    .end local v3    # "ch":C
    :cond_5
    :goto_3
    add-int/lit8 v20, v20, 0x1

    .line 181
    move/from16 v0, v20

    move/from16 v1, p5

    if-eq v0, v1, :cond_6

    .line 182
    add-int/lit8 v18, v18, 0x1

    .line 186
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    if-ne v14, v2, :cond_9

    .line 188
    and-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_8

    .line 189
    sget-object v22, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    goto :goto_0

    .line 176
    .restart local v3    # "ch":C
    :cond_7
    const/16 v22, 0x20

    move/from16 v0, v22

    if-eq v3, v0, :cond_4

    const/16 v22, 0x9

    move/from16 v0, v22

    if-eq v3, v0, :cond_4

    goto :goto_3

    .line 191
    .end local v3    # "ch":C
    :cond_8
    sget-object v22, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto :goto_0

    .line 194
    :cond_9
    mul-int/lit8 v22, v18, 0x2

    move/from16 v0, v22

    new-array v9, v0, [I

    .line 195
    .local v9, "ld":[I
    move v13, v14

    .line 196
    .local v13, "maxLevel":I
    shl-int/lit8 v11, v14, 0x1a

    .line 201
    .local v11, "levelBits":I
    const/4 v15, 0x1

    .line 202
    .local v15, "n":I
    move/from16 v17, p2

    .line 203
    .local v17, "prev":I
    move v4, v14

    .line 204
    move/from16 v8, p2

    add-int v5, p2, v20

    move/from16 v16, v15

    .end local v15    # "n":I
    .local v16, "n":I
    :goto_4
    if-ge v8, v5, :cond_c

    .line 205
    aget-byte v10, p1, v8

    .line 206
    .restart local v10    # "level":I
    if-eq v10, v4, :cond_16

    .line 207
    move v4, v10

    .line 208
    if-le v10, v13, :cond_b

    .line 209
    move v13, v10

    .line 214
    :cond_a
    :goto_5
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "n":I
    .restart local v15    # "n":I
    sub-int v22, v8, v17

    or-int v22, v22, v11

    aput v22, v9, v16

    .line 215
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "n":I
    .restart local v16    # "n":I
    sub-int v22, v8, p2

    aput v22, v9, v15

    .line 216
    shl-int/lit8 v11, v4, 0x1a

    .line 217
    move/from16 v17, v8

    move/from16 v15, v16

    .line 204
    .end local v16    # "n":I
    .restart local v15    # "n":I
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v16, v15

    .end local v15    # "n":I
    .restart local v16    # "n":I
    goto :goto_4

    .line 210
    :cond_b
    if-ge v10, v14, :cond_a

    .line 211
    move v14, v10

    goto :goto_5

    .line 220
    .end local v10    # "level":I
    :cond_c
    add-int v22, p2, v20

    sub-int v22, v22, v17

    or-int v22, v22, v11

    aput v22, v9, v16

    .line 221
    move/from16 v0, v20

    move/from16 v1, p5

    if-ge v0, v1, :cond_15

    .line 222
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "n":I
    .restart local v15    # "n":I
    aput v20, v9, v15

    .line 223
    add-int/lit8 v15, v15, 0x1

    sub-int v22, p5, v20

    shl-int/lit8 v23, v2, 0x1a

    or-int v22, v22, v23

    aput v22, v9, v15

    .line 238
    :goto_7
    and-int/lit8 v22, v14, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_e

    .line 239
    add-int/lit8 v14, v14, 0x1

    .line 240
    if-le v13, v14, :cond_d

    const/16 v19, 0x1

    .line 244
    .local v19, "swap":Z
    :goto_8
    if-eqz v19, :cond_14

    .line 245
    add-int/lit8 v10, v13, -0x1

    .restart local v10    # "level":I
    :goto_9
    if-lt v10, v14, :cond_14

    .line 246
    const/4 v8, 0x0

    :goto_a
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_13

    .line 247
    aget v22, v9, v8

    aget-byte v22, p1, v22

    move/from16 v0, v22

    if-lt v0, v10, :cond_12

    .line 248
    add-int/lit8 v5, v8, 0x2

    .line 249
    :goto_b
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v5, v0, :cond_10

    aget v22, v9, v5

    aget-byte v22, p1, v22

    move/from16 v0, v22

    if-lt v0, v10, :cond_10

    .line 250
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 240
    .end local v10    # "level":I
    .end local v19    # "swap":Z
    :cond_d
    const/16 v19, 0x0

    goto :goto_8

    .line 242
    :cond_e
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    const/16 v19, 0x1

    .restart local v19    # "swap":Z
    :goto_c
    goto :goto_8

    .end local v19    # "swap":Z
    :cond_f
    const/16 v19, 0x0

    goto :goto_c

    .line 252
    .restart local v10    # "level":I
    .restart local v19    # "swap":Z
    :cond_10
    move v12, v8

    .local v12, "low":I
    add-int/lit8 v7, v5, -0x2

    .local v7, "hi":I
    :goto_d
    if-ge v12, v7, :cond_11

    .line 253
    aget v21, v9, v12

    .local v21, "x":I
    aget v22, v9, v7

    aput v22, v9, v12

    aput v21, v9, v7

    .line 254
    add-int/lit8 v22, v12, 0x1

    aget v21, v9, v22

    add-int/lit8 v22, v12, 0x1

    add-int/lit8 v23, v7, 0x1

    aget v23, v9, v23

    aput v23, v9, v22

    add-int/lit8 v22, v7, 0x1

    aput v21, v9, v22

    .line 252
    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v7, v7, -0x2

    goto :goto_d

    .line 256
    .end local v21    # "x":I
    :cond_11
    add-int/lit8 v8, v5, 0x2

    .line 246
    .end local v7    # "hi":I
    .end local v12    # "low":I
    :cond_12
    add-int/lit8 v8, v8, 0x2

    goto :goto_a

    .line 245
    :cond_13
    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 261
    .end local v10    # "level":I
    :cond_14
    new-instance v22, Landroid/text/Layout$Directions;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_0

    .end local v15    # "n":I
    .end local v19    # "swap":Z
    .restart local v16    # "n":I
    :cond_15
    move/from16 v15, v16

    .end local v16    # "n":I
    .restart local v15    # "n":I
    goto :goto_7

    .end local v15    # "n":I
    .restart local v10    # "level":I
    .restart local v16    # "n":I
    :cond_16
    move/from16 v15, v16

    .end local v16    # "n":I
    .restart local v15    # "n":I
    goto/16 :goto_6
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 57
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigitsOnly([CII)Z
    .locals 3
    .param p0, "ch"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 64
    array-length v2, p0

    if-gt p2, v2, :cond_0

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 67
    :cond_1
    move v1, p1

    .local v1, "i":I
    add-int v0, p1, p2

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 68
    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/AndroidBidi;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    const/4 v2, 0x0

    .line 72
    :goto_1
    return v2

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isEven(B)Z
    .locals 1
    .param p0, "level"    # B

    .prologue
    .line 122
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
