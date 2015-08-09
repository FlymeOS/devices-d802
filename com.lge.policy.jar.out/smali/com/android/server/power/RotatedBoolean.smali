.class public Lcom/android/server/power/RotatedBoolean;
.super Ljava/lang/Object;
.source "RotatedBoolean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/RotatedBoolean$ThreePointRelation;
    }
.end annotation


# static fields
.field private static final CCW:I = 0x0

.field private static final CLOCKWISE:I = 0x1

.field private static final DIAGONAL:I = 0x2

.field private static final ROTATE:[[I

.field private static final ccw_left:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ccw_right:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final clockwise_left:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final clockwise_right:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final diagonal_left:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final diagonal_right:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 14
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->ROTATE:[[I

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    return-void

    .line 14
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x1
        0x4
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method private static addNextSequence(Ljava/util/List;Ljava/util/List;[II)V
    .locals 5
    .param p2, "directionType"    # [I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<[I>;[II)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 333
    aget v4, p2, v0

    if-ne v4, p3, :cond_1

    .line 334
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 335
    .local v2, "sequence":[I
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 337
    .local v3, "toAdd":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 338
    aget v4, v2, v1

    aput v4, v3, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_0
    add-int/lit8 v4, v1, -0x2

    aget v4, v2, v4

    aput v4, v3, v1

    .line 341
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v1    # "j":I
    .end local v2    # "sequence":[I
    .end local v3    # "toAdd":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_2
    return-void
.end method

.method private static addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V
    .locals 5
    .param p2, "p1p2"    # [I
    .param p3, "directionType"    # [I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/util/List",
            "<[I>;[I[II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p1, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p5, "toAddValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 348
    aget v4, p3, v0

    if-ne v4, p4, :cond_2

    .line 349
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 350
    .local v2, "sequence":[I
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 352
    .local v3, "toAdd":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 353
    aget v4, v2, v1

    aput v4, v3, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    :cond_0
    aget v4, p2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    aget v4, p2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 358
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v1    # "j":I
    .end local v2    # "sequence":[I
    .end local v3    # "toAdd":[I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_3
    return-void
.end method

.method public static addRotations([II)V
    .locals 10
    .param p0, "currentSequence"    # [I
    .param p1, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 461
    aget v5, p0, v9

    .line 462
    .local v5, "numSeq":I
    mul-int/lit8 v6, v5, 0x4

    aput v6, p0, v9

    .line 463
    mul-int v2, v5, p1

    .line 464
    .local v2, "fullLength":I
    add-int/lit8 v0, v2, 0x1

    .line 465
    .local v0, "curBaseIndex":I
    const-string v6, "KnockTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[addRotations] numSeq : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentSequence[0] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fullLength : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", curBaseIndex : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x3

    if-gt v3, v6, :cond_1

    .line 469
    sget-object v6, Lcom/android/server/power/RotatedBoolean;->ROTATE:[[I

    aget-object v1, v6, v3

    .line 470
    .local v1, "curRotation":[I
    const-string v6, "KnockTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[addRotations] for fist i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v2, :cond_0

    .line 472
    const-string v6, "KnockTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[addRotations] for second j = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", curBaseIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :try_start_0
    aget v6, p0, v4

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    aput v6, p0, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 479
    const-string v6, "KnockTest"

    const-string v7, "[addRotations] for fist ok"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 481
    :cond_0
    const-string v6, "KnockTest"

    const-string v7, "[addRotations] for second ok"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "curRotation":[I
    .end local v4    # "j":I
    :cond_1
    return-void

    .line 475
    .restart local v1    # "curRotation":[I
    .restart local v4    # "j":I
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static createDirectionToAdd(Lcom/android/server/power/RotatedBoolean$ThreePointRelation;)[Z
    .locals 6
    .param p0, "threePointRelation"    # Lcom/android/server/power/RotatedBoolean$ThreePointRelation;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 364
    const/16 v1, 0x9

    new-array v0, v1, [Z

    .line 366
    .local v0, "directionsToAdd":[Z
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    aput-boolean v2, v0, v3

    .line 377
    aput-boolean v2, v0, v4

    .line 378
    aput-boolean v2, v0, v5

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 419
    :cond_3
    :goto_0
    return-object v0

    .line 397
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 402
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 404
    aput-boolean v2, v0, v3

    .line 405
    aput-boolean v2, v0, v4

    .line 406
    aput-boolean v2, v0, v5

    .line 410
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 411
    aput-boolean v2, v0, v2

    .line 415
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private static createDirectionType(Ljava/util/List;[I)[I
    .locals 7
    .param p1, "p1p2"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;[I)[I"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 424
    .local v0, "directionType":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 425
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 426
    .local v4, "sequence":[I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget v2, v4, v5

    .line 427
    .local v2, "p1":I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    .line 428
    .local v3, "p2":I
    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v3

    aput v5, p1, v1

    .line 429
    add-int v5, v2, v3

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 430
    const/4 v5, 0x2

    aput v5, v0, v1

    .line 424
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    aget v5, p1, v1

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    aget v5, p1, v1

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    aget v5, p1, v1

    const/16 v6, 0x13

    if-eq v5, v6, :cond_2

    aget v5, p1, v1

    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 434
    :cond_2
    const/4 v5, 0x1

    aput v5, v0, v1

    goto :goto_1

    .line 439
    .end local v2    # "p1":I
    .end local v3    # "p2":I
    .end local v4    # "sequence":[I
    :cond_3
    return-object v0
.end method

.method private static createP1P2(Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 444
    .local v2, "p1p2":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 445
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 446
    .local v4, "sequence":[I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget v1, v4, v5

    .line 447
    .local v1, "p1":I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    .line 448
    .local v3, "p2":I
    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    aput v5, v2, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "p1":I
    .end local v3    # "p2":I
    .end local v4    # "sequence":[I
    :cond_0
    return-object v2
.end method

.method public static getFirstSequence(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)Ljava/util/List;
    .locals 4
    .param p0, "a0"    # Lcom/android/server/power/EasyKnockPoint;
    .param p1, "a1"    # Lcom/android/server/power/EasyKnockPoint;
    .param p2, "a2"    # Lcom/android/server/power/EasyKnockPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/EasyKnockPoint;",
            "Lcom/android/server/power/EasyKnockPoint;",
            "Lcom/android/server/power/EasyKnockPoint;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v1, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;-><init>(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)V

    .line 217
    .local v1, "threePointRelation":Lcom/android/server/power/RotatedBoolean$ThreePointRelation;
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_3
    :goto_0
    return-object v0

    .line 248
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideSide()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    new-array v2, v3, [I

    fill-array-data v2, :array_6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isCentDiagDiag()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 255
    new-array v2, v3, [I

    fill-array-data v2, :array_7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-array v2, v3, [I

    fill-array-data v2, :array_8

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-array v2, v3, [I

    fill-array-data v2, :array_9

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isSideDiag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 262
    new-array v2, v3, [I

    fill-array-data v2, :array_a

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isDiagSide()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    new-array v2, v3, [I

    fill-array-data v2, :array_b

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data

    .line 227
    :array_1
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 228
    :array_2
    .array-data 4
        0x1
        0x3
        0x1
    .end array-data

    .line 229
    :array_3
    .array-data 4
        0x1
        0x4
        0x1
    .end array-data

    .line 234
    :array_4
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data

    .line 239
    :array_5
    .array-data 4
        0x1
        0x4
        0x2
    .end array-data

    .line 249
    :array_6
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 255
    :array_7
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 256
    :array_8
    .array-data 4
        0x1
        0x3
        0x1
    .end array-data

    .line 257
    :array_9
    .array-data 4
        0x1
        0x4
        0x1
    .end array-data

    .line 262
    :array_a
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 267
    :array_b
    .array-data 4
        0x1
        0x4
        0x3
    .end array-data
.end method

.method public static getNextSequence(Ljava/util/List;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)Ljava/util/List;
    .locals 10
    .param p1, "a0"    # Lcom/android/server/power/EasyKnockPoint;
    .param p2, "a1"    # Lcom/android/server/power/EasyKnockPoint;
    .param p3, "a2"    # Lcom/android/server/power/EasyKnockPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Lcom/android/server/power/EasyKnockPoint;",
            "Lcom/android/server/power/EasyKnockPoint;",
            "Lcom/android/server/power/EasyKnockPoint;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .local p0, "currentSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 285
    invoke-static {}, Lcom/android/server/power/RotatedBoolean;->initializeToAdd()V

    .line 286
    new-instance v7, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;

    invoke-direct {v7, p1, p2, p3}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;-><init>(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)V

    .line 287
    .local v7, "threePointRelation":Lcom/android/server/power/RotatedBoolean$ThreePointRelation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-static {p0}, Lcom/android/server/power/RotatedBoolean;->createP1P2(Ljava/util/List;)[I

    move-result-object v2

    .line 290
    .local v2, "p1p2":[I
    invoke-static {p0, v2}, Lcom/android/server/power/RotatedBoolean;->createDirectionType(Ljava/util/List;[I)[I

    move-result-object v3

    .line 291
    .local v3, "directionType":[I
    invoke-static {v7}, Lcom/android/server/power/RotatedBoolean;->createDirectionToAdd(Lcom/android/server/power/RotatedBoolean$ThreePointRelation;)[Z

    move-result-object v6

    .line 293
    .local v6, "directionsToAdd":[Z
    aget-boolean v0, v6, v8

    if-eqz v0, :cond_0

    .line 294
    invoke-static {p0, v1, v3, v4}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[II)V

    .line 297
    :cond_0
    aget-boolean v0, v6, v4

    if-eqz v0, :cond_1

    .line 298
    sget-object v5, Lcom/android/server/power/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 301
    :cond_1
    aget-boolean v0, v6, v9

    if-eqz v0, :cond_2

    .line 302
    sget-object v5, Lcom/android/server/power/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 305
    :cond_2
    const/4 v0, 0x3

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_3

    .line 306
    invoke-static {p0, v1, v3, v8}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[II)V

    .line 309
    :cond_3
    const/4 v0, 0x4

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_4

    .line 310
    sget-object v5, Lcom/android/server/power/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 313
    :cond_4
    const/4 v0, 0x5

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_5

    .line 314
    sget-object v5, Lcom/android/server/power/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 317
    :cond_5
    const/4 v0, 0x6

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_6

    .line 318
    sget-object v5, Lcom/android/server/power/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 321
    :cond_6
    const/4 v0, 0x7

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_7

    .line 322
    invoke-static {p0, v1, v3, v9}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[II)V

    .line 325
    :cond_7
    const/16 v0, 0x8

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_8

    .line 326
    sget-object v5, Lcom/android/server/power/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    move-object v0, p0

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/RotatedBoolean;->addNextSequence(Ljava/util/List;Ljava/util/List;[I[IILjava/util/HashMap;)V

    .line 328
    :cond_8
    return-object v1
.end method

.method public static getStrictSequence(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)Ljava/util/List;
    .locals 9
    .param p0, "a0"    # Lcom/android/server/power/EasyKnockPoint;
    .param p1, "a1"    # Lcom/android/server/power/EasyKnockPoint;
    .param p2, "a2"    # Lcom/android/server/power/EasyKnockPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/EasyKnockPoint;",
            "Lcom/android/server/power/EasyKnockPoint;",
            "Lcom/android/server/power/EasyKnockPoint;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v1, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;-><init>(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)V

    .line 172
    .local v1, "threePointRelation":Lcom/android/server/power/RotatedBoolean$ThreePointRelation;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Angle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->cosAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isStric()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->is124or134()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v0    # "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    :goto_0
    return-object v0

    .line 178
    .restart local v0    # "nextSequence":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_0
    new-array v2, v8, [I

    fill-array-data v2, :array_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->is123or132()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_2
    new-array v2, v8, [I

    fill-array-data v2, :array_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->is142or143()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 189
    invoke-virtual {v1}, Lcom/android/server/power/RotatedBoolean$ThreePointRelation;->isLeftTurn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    new-array v2, v8, [I

    fill-array-data v2, :array_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_4
    new-array v2, v8, [I

    fill-array-data v2, :array_5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/server/power/RotatedBoolean;->getFirstSequence(Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;Lcom/android/server/power/EasyKnockPoint;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 176
    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
    .end array-data

    .line 178
    :array_1
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 183
    :array_2
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data

    .line 185
    :array_3
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 190
    :array_4
    .array-data 4
        0x1
        0x4
        0x2
    .end array-data

    .line 192
    :array_5
    .array-data 4
        0x1
        0x4
        0x3
    .end array-data
.end method

.method private static initializeToAdd()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 124
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_right:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->clockwise_left:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_right:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->ccw_left:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_right:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/server/power/RotatedBoolean;->diagonal_left:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method
