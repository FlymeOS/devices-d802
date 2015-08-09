.class public Lcom/android/server/power/EasyKnockPassword;
.super Ljava/lang/Object;
.source "EasyKnockPassword.java"


# static fields
.field static final CLUSTERING_THRESHOLD_VALUE:D = 0.1296

.field static final THRESHOLD_VALUE:D = 0.04

.field private static distanceMat:[D

.field private static mIsRotatationFixed:Z

.field private static mScreenDPI:I

.field static radiusSquared:D

.field public static rotate:[[I

.field public static twoSequenceVals:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    .line 24
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/power/EasyKnockPassword;->rotate:[[I

    .line 27
    sput v5, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x3
    .end array-data

    .line 24
    :array_c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x1
        0x4
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x4
        0x1
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static copyNewResult(Ljava/util/List;Ljava/util/List;I)[I
    .locals 8
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)[I"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 399
    .local v4, "numItems":I
    mul-int v7, v4, p2

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [I

    .line 400
    .local v6, "result":[I
    const/4 v7, 0x0

    aput v4, v6, v7

    .line 401
    const/4 v2, 0x1

    .line 403
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "curIndex":I
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 406
    .local v5, "numList":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_1

    .line 407
    :goto_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v0, v7, :cond_0

    .line 408
    aget v7, v5, v3

    aput v7, v6, v2

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 406
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    :cond_1
    :goto_3
    if-ge v0, p2, :cond_2

    .line 414
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget v7, v5, v7

    aput v7, v6, v2

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 403
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "curIndex":I
    .end local v3    # "j":I
    .end local v5    # "numList":[I
    :cond_3
    return-object v6
.end method

.method private static createUntrimmedResult(I[II[ZI)[I
    .locals 6
    .param p0, "size"    # I
    .param p1, "result"    # [I
    .param p2, "changeIndex"    # I
    .param p3, "possibleDirection"    # [Z
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    aget v3, p1, v5

    if-ge v1, v3, :cond_1

    .line 358
    mul-int v3, v1, p0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    mul-int v4, v1, p0

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    aget v4, p1, v4

    add-int/2addr v3, v4

    aget-boolean v3, p3, v3

    if-eqz v3, :cond_0

    .line 360
    add-int/lit8 p4, p4, 0x1

    .line 357
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    mul-int v3, p4, p0

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 364
    .local v2, "untrimmedResult":[I
    aput p4, v2, v5

    .line 365
    const/4 v0, 0x1

    .line 366
    .local v0, "curIndex":I
    const/4 v1, 0x0

    :goto_1
    aget v3, p1, v5

    if-ge v1, v3, :cond_3

    .line 367
    mul-int v3, v1, p0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    mul-int v4, v1, p0

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    aget v4, p1, v4

    add-int/2addr v3, v4

    aget-boolean v3, p3, v3

    if-eqz v3, :cond_2

    .line 369
    mul-int v3, v1, p0

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v3, v2, v0, p0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 370
    add-int/2addr v0, p0

    .line 366
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    :cond_3
    return-object v2
.end method

.method private static fillArray([IIIIII)V
    .locals 2
    .param p0, "toFill"    # [I
    .param p1, "val1"    # I
    .param p2, "val2"    # I
    .param p3, "startPoint"    # I
    .param p4, "changeIndex"    # I
    .param p5, "length"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-gt v0, p4, :cond_0

    .line 148
    add-int v1, p3, v0

    aput p1, p0, v1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    :goto_1
    if-ge v0, p5, :cond_1

    .line 151
    add-int v1, p3, v0

    aput p2, p0, v1

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_1
    return-void
.end method

.method private static generateFinalCandidates(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ[Z)[I
    .locals 7
    .param p3, "size"    # I
    .param p4, "rotation"    # Z
    .param p5, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ[Z)[I"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    .local p2, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, p2, p3}, Lcom/android/server/power/EasyKnockPassword;->copyNewResult(Ljava/util/List;Ljava/util/List;I)[I

    move-result-object v3

    .line 311
    .local v3, "result":[I
    invoke-static {v3, p3}, Lcom/android/server/power/RotatedBoolean;->addRotations([II)V

    .line 312
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 313
    .local v4, "changeIndex":I
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/EasyKnockPoint;

    add-int/lit8 v1, v4, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/EasyKnockPoint;

    invoke-static {v0, v1}, Lcom/android/server/power/EasyKnockPassword;->getFirstOrientation(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)[Z

    move-result-object v5

    .line 315
    .local v5, "possibleDirection":[Z
    if-eqz p4, :cond_0

    .line 316
    invoke-static {p1, p3, v3, v4, v5}, Lcom/android/server/power/EasyKnockPassword;->generateRrotatedResult(Ljava/util/List;I[II[Z)[I

    move-result-object v3

    move-object v6, v3

    .line 318
    .end local v3    # "result":[I
    .local v6, "result":[I
    :goto_0
    return-object v6

    .end local v6    # "result":[I
    .restart local v3    # "result":[I
    :cond_0
    move-object v0, p1

    move v1, p3

    move-object v2, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/EasyKnockPassword;->generateRotationFixeddResult(Ljava/util/List;I[Z[II[Z)[I

    move-result-object v3

    move-object v6, v3

    .end local v3    # "result":[I
    .restart local v6    # "result":[I
    goto :goto_0
.end method

.method private static generateMultiOrientation(I[ZII[I)[I
    .locals 8
    .param p0, "size"    # I
    .param p1, "orientation"    # [Z
    .param p2, "count"    # I
    .param p3, "orientationCount"    # I
    .param p4, "result"    # [I

    .prologue
    .line 183
    move-object v5, p4

    .line 184
    .local v5, "tmpResult":[I
    mul-int v6, p2, p0

    mul-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x1

    new-array p4, v6, [I

    .line 185
    const/4 v6, 0x0

    mul-int v7, p2, p3

    aput v7, p4, v6

    .line 186
    mul-int v0, p0, p2

    .line 187
    .local v0, "baseIndex":I
    const/4 v1, 0x1

    .line 188
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_1

    .line 189
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_0

    .line 190
    sget-object v6, Lcom/android/server/power/EasyKnockPassword;->rotate:[[I

    aget-object v4, v6, v2

    .line 191
    .local v4, "rotated":[I
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    if-gt v3, v0, :cond_0

    .line 192
    aget v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    aget v6, v4, v6

    aput v6, p4, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    .end local v3    # "j":I
    .end local v4    # "rotated":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return-object p4
.end method

.method private static generateRotationFixeddResult(Ljava/util/List;I[Z[II[Z)[I
    .locals 14
    .param p1, "size"    # I
    .param p2, "orientation"    # [Z
    .param p3, "result"    # [I
    .param p4, "changeIndex"    # I
    .param p5, "possibleDirection"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;I[Z[II[Z)[I"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    const/4 v4, 0x0

    .line 326
    .local v4, "count":I
    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {p1, v0, v1, v2, v4}, Lcom/android/server/power/EasyKnockPassword;->createUntrimmedResult(I[II[ZI)[I

    move-result-object v11

    .line 327
    .local v11, "untrimmedResult":[I
    invoke-static {v11, p0}, Lcom/android/server/power/EasyKnockPassword;->trimResult([ILjava/util/List;)[I

    move-result-object v10

    .line 328
    .local v10, "trimmedResult":[I
    const/4 v12, 0x0

    aget v4, v10, v12

    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, "orientationCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v12, 0x4

    if-ge v6, v12, :cond_1

    .line 332
    aget-boolean v12, p2, v6

    if-eqz v12, :cond_0

    .line 333
    add-int/lit8 v8, v8, 0x1

    .line 331
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 336
    :cond_1
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    const/4 v12, 0x0

    aget-boolean v12, p2, v12

    if-nez v12, :cond_5

    .line 337
    :cond_2
    mul-int v12, v4, p1

    mul-int/2addr v12, v8

    add-int/lit8 v12, v12, 0x1

    new-array v0, v12, [I

    move-object/from16 p3, v0

    .line 338
    const/4 v12, 0x0

    mul-int v13, v4, v8

    aput v13, p3, v12

    .line 339
    mul-int v3, p1, v4

    .line 340
    .local v3, "baseIndex":I
    const/4 v5, 0x1

    .line 341
    .local v5, "curIndex2":I
    const/4 v6, 0x0

    :goto_1
    const/4 v12, 0x4

    if-ge v6, v12, :cond_4

    .line 342
    aget-boolean v12, p2, v6

    if-eqz v12, :cond_3

    .line 343
    sget-object v12, Lcom/android/server/power/EasyKnockPassword;->rotate:[[I

    aget-object v9, v12, v6

    .line 344
    .local v9, "rotated":[I
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_2
    if-gt v7, v3, :cond_3

    .line 345
    aget v12, v10, v7

    add-int/lit8 v12, v12, -0x1

    aget v12, v9, v12

    aput v12, p3, v5

    .line 346
    add-int/lit8 v5, v5, 0x1

    .line 344
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 341
    .end local v7    # "j":I
    .end local v9    # "rotated":[I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v10, p3

    .line 352
    .end local v3    # "baseIndex":I
    .end local v5    # "curIndex2":I
    .end local v10    # "trimmedResult":[I
    :cond_5
    return-object v10
.end method

.method private static generateRrotatedResult(Ljava/util/List;I[II[Z)[I
    .locals 7
    .param p1, "size"    # I
    .param p2, "result"    # [I
    .param p3, "changeIndex"    # I
    .param p4, "possibleDirection"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;I[II[Z)[I"
        }
    .end annotation

    .prologue
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    const/4 v6, 0x0

    .line 378
    move-object v0, p2

    .line 379
    .local v0, "RrotatedResult":[I
    new-array v3, p1, [I

    .line 380
    .local v3, "tmp":[I
    const/4 v1, 0x1

    .line 381
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget v4, v0, v6

    if-ge v2, v4, :cond_2

    .line 382
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p3

    aget v4, v0, v4

    mul-int/lit8 v4, v4, 0x4

    mul-int v5, v2, p1

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p3

    aget v5, v0, v5

    add-int/2addr v4, v5

    aget-boolean v4, p4, v4

    if-eqz v4, :cond_0

    .line 384
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    if-ne v1, v4, :cond_1

    .line 385
    add-int/2addr v1, p1

    .line 381
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_1
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4, v3, v6, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 388
    mul-int v4, v2, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 389
    invoke-static {v3, v6, v0, v1, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 390
    add-int/2addr v1, p1

    goto :goto_1

    .line 394
    :cond_2
    invoke-static {v0, p0}, Lcom/android/server/power/EasyKnockPassword;->trimResult([ILjava/util/List;)[I

    move-result-object v4

    return-object v4
.end method

.method private static generateTwoSequence(IZII[Z)[I
    .locals 11
    .param p0, "size"    # I
    .param p1, "rotation"    # Z
    .param p2, "count"    # I
    .param p3, "changeIndex"    # I
    .param p4, "possibleDirections"    # [Z

    .prologue
    .line 202
    if-nez p1, :cond_1

    .line 203
    mul-int v1, p0, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 208
    .local v0, "result":[I
    :goto_0
    const/4 v3, 0x1

    .line 209
    .local v3, "indexFront":I
    mul-int v1, p0, p2

    add-int/lit8 v7, v1, 0x1

    .line 211
    .local v7, "indexBack":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    array-length v1, v1

    if-ge v10, v1, :cond_3

    .line 212
    sget-object v1, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v10

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v1, v2

    aget-boolean v1, p4, v1

    if-eqz v1, :cond_2

    .line 213
    sget-object v1, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v2, v2, v10

    const/4 v4, 0x1

    aget v2, v2, v4

    move v4, p3

    move v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/EasyKnockPassword;->fillArray([IIIIII)V

    .line 215
    add-int/2addr v3, p0

    .line 211
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "result":[I
    .end local v3    # "indexFront":I
    .end local v7    # "indexBack":I
    .end local v10    # "i":I
    :cond_1
    mul-int/lit8 v1, p0, 0xc

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 206
    .restart local v0    # "result":[I
    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    goto :goto_0

    .line 217
    .restart local v3    # "indexFront":I
    .restart local v7    # "indexBack":I
    .restart local v10    # "i":I
    :cond_2
    if-eqz p1, :cond_0

    .line 218
    sget-object v1, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x0

    aget v5, v1, v2

    sget-object v1, Lcom/android/server/power/EasyKnockPassword;->twoSequenceVals:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x1

    aget v6, v1, v2

    move-object v4, v0

    move v8, p3

    move v9, p0

    invoke-static/range {v4 .. v9}, Lcom/android/server/power/EasyKnockPassword;->fillArray([IIIIII)V

    .line 220
    add-int/2addr v7, p0

    goto :goto_2

    .line 224
    :cond_3
    return-object v0
.end method

.method public static getAnswers(Ljava/util/ArrayList;ZZZZ)[I
    .locals 4
    .param p1, "orientation0"    # Z
    .param p2, "orientation90"    # Z
    .param p3, "orientation180"    # Z
    .param p4, "orientation270"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;ZZZZ)[I"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "coords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPoint;>;"
    const/4 v1, 0x4

    new-array v0, v1, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 85
    .local v0, "orientation":[Z
    sget-wide v2, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    sget-boolean v1, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/power/EasyKnockPassword;->getResult(Ljava/util/List;DZ[Z)[I

    move-result-object v1

    return-object v1
.end method

.method public static getAnswers(Ljava/util/List;IZ)[I
    .locals 4
    .param p1, "dpi"    # I
    .param p2, "rotation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;IZ)[I"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    sput p1, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    .line 50
    sput-boolean p2, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    .line 52
    sget v0, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    int-to-double v0, v0

    const-wide v2, 0x3fd1a36e2eb1c433L    # 0.2756

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    .line 53
    sget-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    sget-wide v2, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    .line 54
    sget-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    sget-boolean v2, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    const/4 v3, 0x4

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/power/EasyKnockPassword;->getResult(Ljava/util/List;DZ[Z)[I

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getAnswers(Ljava/util/List;[ZIZ)[I
    .locals 5
    .param p1, "orientations"    # [Z
    .param p2, "dpi"    # I
    .param p3, "rotation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;[ZIZ)[I"
        }
    .end annotation

    .prologue
    .local p0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    const/4 v4, 0x4

    .line 58
    sput p2, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    .line 59
    sput-boolean p3, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    .line 61
    sget v0, Lcom/android/server/power/EasyKnockPassword;->mScreenDPI:I

    int-to-double v0, v0

    const-wide v2, 0x3fd1a36e2eb1c433L    # 0.2756

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    .line 62
    sget-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    sget-wide v2, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    .line 63
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eq v0, v4, :cond_1

    .line 64
    :cond_0
    const/4 p1, 0x0

    .line 65
    new-array p1, v4, [Z

    .end local p1    # "orientations":[Z
    fill-array-data p1, :array_0

    .line 67
    .restart local p1    # "orientations":[Z
    :cond_1
    sget-wide v0, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    sget-boolean v2, Lcom/android/server/power/EasyKnockPassword;->mIsRotatationFixed:Z

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/power/EasyKnockPassword;->getResult(Ljava/util/List;DZ[Z)[I

    move-result-object v0

    return-object v0

    .line 65
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected static getCandidates(Ljava/util/List;Ljava/util/List;Z[Z)[I
    .locals 1
    .param p2, "rotation"    # Z
    .param p3, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p1, "touchPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    invoke-static {p1, p0, p2, p3}, Lcom/android/server/power/EasyKnockPassword;->getMultiSequence(Ljava/util/List;Ljava/util/List;Z[Z)[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/power/EasyKnockPassword;->getOneSequence(I)[I

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1, p0, p2, p3}, Lcom/android/server/power/EasyKnockPassword;->getTwoSequence(ILjava/util/List;Ljava/util/List;Z[Z)[I

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFirstOrientation(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)[Z
    .locals 10
    .param p0, "a0"    # Lcom/android/server/power/EasyKnockPoint;
    .param p1, "a1"    # Lcom/android/server/power/EasyKnockPoint;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 249
    iget v4, p1, Lcom/android/server/power/EasyKnockPoint;->x:F

    iget v5, p0, Lcom/android/server/power/EasyKnockPoint;->x:F

    sub-float v1, v4, v5

    .line 250
    .local v1, "p0x":F
    iget v4, p1, Lcom/android/server/power/EasyKnockPoint;->y:F

    iget v5, p0, Lcom/android/server/power/EasyKnockPoint;->y:F

    sub-float v2, v4, v5

    .line 251
    .local v2, "p0y":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v0, v1, v4

    .line 252
    .local v0, "cosAngle":F
    const/16 v4, 0x14

    new-array v3, v4, [Z

    .line 253
    .local v3, "result":[Z
    float-to-double v4, v0

    const-wide v6, 0x3febb645a1cac083L    # 0.866

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 254
    const/4 v4, 0x6

    aput-boolean v8, v3, v4

    .line 255
    const/16 v4, 0x10

    aput-boolean v8, v3, v4

    .line 269
    :cond_0
    :goto_0
    float-to-double v4, v0

    const-wide v6, 0x3fd09374bc6a7efaL    # 0.259

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    float-to-double v4, v0

    const-wide v6, 0x3feee978d4fdf3b6L    # 0.966

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    .line 270
    cmpl-float v4, v2, v9

    if-lez v4, :cond_5

    .line 271
    const/16 v4, 0x8

    aput-boolean v8, v3, v4

    .line 282
    :cond_1
    :goto_1
    return-object v3

    .line 256
    :cond_2
    float-to-double v4, v0

    const-wide v6, -0x401449ba5e353f7dL    # -0.866

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 257
    const/16 v4, 0x9

    aput-boolean v8, v3, v4

    .line 258
    const/16 v4, 0x13

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 260
    cmpl-float v4, v2, v9

    if-lez v4, :cond_4

    .line 261
    const/4 v4, 0x7

    aput-boolean v8, v3, v4

    .line 262
    const/16 v4, 0xc

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 264
    :cond_4
    const/16 v4, 0xd

    aput-boolean v8, v3, v4

    .line 265
    const/16 v4, 0x12

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 273
    :cond_5
    const/16 v4, 0xe

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 275
    :cond_6
    float-to-double v4, v0

    const-wide v6, -0x402f6c8b43958106L    # -0.259

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    float-to-double v4, v0

    const-wide v6, -0x401116872b020c4aL    # -0.966

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 276
    cmpl-float v4, v2, v9

    if-lez v4, :cond_7

    .line 277
    const/16 v4, 0xb

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 279
    :cond_7
    const/16 v4, 0x11

    aput-boolean v8, v3, v4

    goto :goto_1
.end method

.method protected static getIndexList(Ljava/util/List;D)Ljava/util/ArrayList;
    .locals 5
    .param p1, "radiusSquare"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;D)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    .line 117
    .local v0, "curIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 118
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPoint;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/EasyKnockPoint;

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/power/EasyKnockPassword;->isNeighbor(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move v0, v1

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 124
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_1
    return-object v2

    .line 126
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getMultiSequence(Ljava/util/List;Ljava/util/List;Z[Z)[I
    .locals 7
    .param p2, "rotation"    # Z
    .param p3, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    .local p1, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 290
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/EasyKnockPoint;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPoint;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPoint;

    invoke-static {v1, v2, v3}, Lcom/android/server/power/RotatedBoolean;->getStrictSequence(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/EasyKnockPassword;->generateFinalCandidates(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ[Z)[I

    move-result-object v1

    return-object v1

    .line 294
    .end local v0    # "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/EasyKnockPoint;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPoint;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPoint;

    invoke-static {v1, v2, v3}, Lcom/android/server/power/RotatedBoolean;->getStrictSequence(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    .line 297
    .restart local v0    # "newResult":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 298
    add-int/lit8 v1, v6, -0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/EasyKnockPoint;

    add-int/lit8 v2, v6, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/EasyKnockPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/EasyKnockPoint;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/RotatedBoolean;->getNextSequence(Ljava/util/List;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected static getOneSequence(I)[I
    .locals 6
    .param p0, "size"    # I

    .prologue
    const/4 v5, 0x4

    .line 132
    mul-int/lit8 v4, p0, 0x4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 133
    .local v3, "result":[I
    const/4 v4, 0x0

    aput v5, v3, v4

    .line 134
    const/4 v1, 0x1

    .line 135
    .local v1, "index":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v5, :cond_1

    .line 136
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p0, :cond_0

    .line 137
    aput v0, v3, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "j":I
    :cond_1
    return-object v3
.end method

.method public static getResult(Ljava/util/List;DZ[Z)[I
    .locals 3
    .param p1, "radiusSquare"    # D
    .param p3, "rotation"    # Z
    .param p4, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;DZ[Z)[I"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/power/EasyKnockPassword;->getIndexList(Ljava/util/List;D)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v0, p0, p3, p4}, Lcom/android/server/power/EasyKnockPassword;->getCandidates(Ljava/util/List;Ljava/util/List;Z[Z)[I

    move-result-object v1

    return-object v1
.end method

.method protected static getTwoSequence(ILjava/util/List;Ljava/util/List;Z[Z)[I
    .locals 9
    .param p0, "size"    # I
    .param p3, "rotation"    # Z
    .param p4, "orientation"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z[Z)[I"
        }
    .end annotation

    .prologue
    .local p1, "touchPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    .local p2, "diffIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "count":I
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "changeIndex":I
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/EasyKnockPoint;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/EasyKnockPoint;

    invoke-static {v6, v7}, Lcom/android/server/power/EasyKnockPassword;->getFirstOrientation(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)[Z

    move-result-object v4

    .line 162
    .local v4, "possibleDirections":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x14

    if-ge v2, v6, :cond_1

    .line 163
    aget-boolean v6, v4, v2

    if-eqz v6, :cond_0

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 162
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v3, 0x0

    .line 168
    .local v3, "orientationCount":I
    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_3

    .line 169
    aget-boolean v6, p4, v2

    if-eqz v6, :cond_2

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 168
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    :cond_3
    invoke-static {p0, p3, v1, v0, v4}, Lcom/android/server/power/EasyKnockPassword;->generateTwoSequence(IZII[Z)[I

    move-result-object v5

    .line 176
    .local v5, "result":[I
    if-nez p3, :cond_5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    aget-boolean v6, p4, v8

    if-nez v6, :cond_5

    .line 177
    :cond_4
    invoke-static {p0, p4, v1, v3, v5}, Lcom/android/server/power/EasyKnockPassword;->generateMultiOrientation(I[ZII[I)[I

    move-result-object v5

    .line 179
    :cond_5
    return-object v5
.end method

.method protected static isNeighbor(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;D)Z
    .locals 4
    .param p0, "a1"    # Lcom/android/server/power/EasyKnockPoint;
    .param p1, "a2"    # Lcom/android/server/power/EasyKnockPoint;
    .param p2, "radiusSquared"    # D

    .prologue
    .line 491
    iget v2, p0, Lcom/android/server/power/EasyKnockPoint;->x:F

    iget v3, p1, Lcom/android/server/power/EasyKnockPoint;->x:F

    sub-float v0, v2, v3

    .line 492
    .local v0, "xd":F
    iget v2, p0, Lcom/android/server/power/EasyKnockPoint;->y:F

    iget v3, p1, Lcom/android/server/power/EasyKnockPoint;->y:F

    sub-float v1, v2, v3

    .line 493
    .local v1, "yd":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static obtainDistMax(Ljava/util/List;I)D
    .locals 10
    .param p1, "pointSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;I)D"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    const-wide/16 v0, 0x1

    .line 442
    .local v0, "distMax":D
    mul-int v6, p1, p1

    new-array v6, v6, [D

    sput-object v6, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    .line 443
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v6, p1, -0x1

    if-ge v2, v6, :cond_2

    .line 444
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_1

    .line 445
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/EasyKnockPoint;

    iget v7, v6, Lcom/android/server/power/EasyKnockPoint;->x:F

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/EasyKnockPoint;

    iget v6, v6, Lcom/android/server/power/EasyKnockPoint;->x:F

    sub-float v4, v7, v6

    .line 446
    .local v4, "pdelta_x":F
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/EasyKnockPoint;

    iget v7, v6, Lcom/android/server/power/EasyKnockPoint;->y:F

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/EasyKnockPoint;

    iget v6, v6, Lcom/android/server/power/EasyKnockPoint;->y:F

    sub-float v5, v7, v6

    .line 447
    .local v5, "pdelta_y":F
    sget-object v6, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v7, v2, p1

    add-int/2addr v7, v3

    mul-float v8, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    float-to-double v8, v8

    aput-wide v8, v6, v7

    .line 448
    sget-object v6, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v7, v2, p1

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    .line 449
    sget-object v6, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v7, v2, p1

    add-int/2addr v7, v3

    aget-wide v0, v6, v7

    .line 444
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 443
    .end local v4    # "pdelta_x":F
    .end local v5    # "pdelta_y":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v3    # "j":I
    :cond_2
    return-wide v0
.end method

.method private static setAddress([II[II[I)I
    .locals 7
    .param p0, "result"    # [I
    .param p1, "pointSize"    # I
    .param p2, "sameClusterList"    # [I
    .param p3, "sameClusterListCnt"    # I
    .param p4, "address"    # [I

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "addressCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x0

    aget v4, p0, v4

    if-ge v1, v4, :cond_3

    .line 459
    const/4 v3, 0x1

    .line 460
    .local v3, "rightClustered":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 461
    mul-int v4, v1, p1

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    add-int/2addr v4, v5

    aget v4, p0, v4

    mul-int v5, v1, p1

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, p2, v6

    add-int/2addr v5, v6

    aget v5, p0, v5

    if-eq v4, v5, :cond_2

    .line 463
    const/4 v3, 0x0

    .line 467
    :cond_0
    if-eqz v3, :cond_1

    .line 468
    aput v1, p4, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    .line 458
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 472
    .end local v2    # "j":I
    .end local v3    # "rightClustered":Z
    :cond_3
    return v0
.end method

.method private static setSameClusterList(DI[I)I
    .locals 10
    .param p0, "distMax"    # D
    .param p2, "pointSize"    # I
    .param p3, "sameClusterList"    # [I

    .prologue
    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, "sameClusterListCnt":I
    sget-wide v6, Lcom/android/server/power/EasyKnockPassword;->radiusSquared:D

    const-wide v8, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v8, p0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 478
    .local v4, "threshold":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, p2, -0x1

    if-ge v0, v3, :cond_2

    .line 479
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 480
    sget-object v3, Lcom/android/server/power/EasyKnockPassword;->distanceMat:[D

    mul-int v6, v0, p2

    add-int/2addr v6, v1

    aget-wide v6, v3, v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_0

    .line 481
    mul-int/lit8 v3, v2, 0x2

    aput v0, p3, v3

    .line 482
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aput v1, p3, v3

    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 479
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 478
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "j":I
    :cond_2
    return v2
.end method

.method private static trimResult([ILjava/util/List;)[I
    .locals 11
    .param p0, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/EasyKnockPoint;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "easyKnock":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/EasyKnockPoint;>;"
    const/4 v10, 0x0

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 425
    .local v6, "pointSize":I
    invoke-static {p1, v6}, Lcom/android/server/power/EasyKnockPassword;->obtainDistMax(Ljava/util/List;I)D

    move-result-wide v2

    .line 426
    .local v2, "distMax":D
    mul-int v9, v6, v6

    new-array v7, v9, [I

    .line 427
    .local v7, "sameClusterList":[I
    invoke-static {v2, v3, v6, v7}, Lcom/android/server/power/EasyKnockPassword;->setSameClusterList(DI[I)I

    move-result v8

    .line 429
    .local v8, "sameClusterListCnt":I
    aget v9, p0, v10

    new-array v0, v9, [I

    .line 430
    .local v0, "address":[I
    invoke-static {p0, v6, v7, v8, v0}, Lcom/android/server/power/EasyKnockPassword;->setAddress([II[II[I)I

    move-result v1

    .line 432
    .local v1, "addressCnt":I
    mul-int v9, v1, v6

    add-int/lit8 v9, v9, 0x1

    new-array v5, v9, [I

    .line 433
    .local v5, "newResult":[I
    aput v1, v5, v10

    .line 434
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 435
    aget v9, v0, v4

    mul-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x1

    mul-int v10, v4, v6

    add-int/lit8 v10, v10, 0x1

    invoke-static {p0, v9, v5, v10, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    :cond_0
    return-object v5
.end method
