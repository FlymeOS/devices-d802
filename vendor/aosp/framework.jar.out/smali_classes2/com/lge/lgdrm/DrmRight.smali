.class public final Lcom/lge/lgdrm/DrmRight;
.super Ljava/lang/Object;
.source "DrmRight.java"


# instance fields
.field private constraintsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private filename:Ljava/lang/String;

.field private index:I

.field private metering:Z

.field private mid:Ljava/lang/String;

.field private permission:I

.field private previewContent:I

.field private unlimited:Z

.field private useLeft:Ljava/lang/String;

.field private validFor:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    .line 186
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .locals 1
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    .line 197
    iget-object v0, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    .line 198
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    .line 199
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    .line 200
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    .line 201
    iput-object p2, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    .line 202
    return-void
.end method

.method public static getKeyByCID(Ljava/lang/String;[B[B)I
    .locals 2
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "encKey"    # [B
    .param p2, "authSeed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 225
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, -0x1

    .line 246
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    if-nez p0, :cond_2

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 237
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "one of the key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_4
    array-length v0, p1

    if-ge v0, v1, :cond_5

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encKey length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_5
    array-length v0, p2

    if-ge v0, v1, :cond_6

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authSeed length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmRight;->nativeGetKeyByCID(Ljava/lang/String;[B[B)I

    move-result v0

    goto :goto_0
.end method

.method public static getRegistrationCode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 278
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    .line 282
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeGetRegistrationCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static native nativeAuthCaller()Z
.end method

.method private native nativeCheckMetering(Ljava/lang/String;)Z
.end method

.method private static native nativeGetKeyByCID(Ljava/lang/String;[B[B)I
.end method

.method private static native nativeGetRegistrationCode()Ljava/lang/String;
.end method

.method private native nativeGetRightInfo(Ljava/lang/String;III)I
.end method

.method private native nativeManageMetering(Ljava/lang/String;Z)I
.end method

.method private static native nativeSetRandomSample()V
.end method

.method public static setRandomSample()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 257
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeSetRandomSample()V

    goto :goto_0
.end method

.method private setRightInfo(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "unlimited"    # Z
    .param p2, "metering"    # Z
    .param p3, "useLeft"    # Ljava/lang/String;
    .param p4, "validFor"    # Ljava/lang/String;
    .param p5, "count"    # Ljava/lang/String;
    .param p6, "dateTime"    # Ljava/lang/String;
    .param p7, "interval"    # Ljava/lang/String;
    .param p8, "timedCount"    # Ljava/lang/String;
    .param p9, "accumulated"    # Ljava/lang/String;
    .param p10, "individual"    # Ljava/lang/String;
    .param p11, "system"    # Ljava/lang/String;
    .param p12, "mid"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-boolean p1, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 554
    invoke-direct {p0, p3}, Lcom/lge/lgdrm/DrmRight;->translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    .line 555
    invoke-direct {p0, p4}, Lcom/lge/lgdrm/DrmRight;->translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iput-boolean p2, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 564
    iput-object p12, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 565
    return-void
.end method

.method private translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 505
    if-nez p1, :cond_1

    .line 506
    const/4 p1, 0x0

    .line 544
    .end local p1    # "original":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 509
    .restart local p1    # "original":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 516
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, " )"

    const/4 v5, 0x1

    invoke-direct {v2, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 518
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 519
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "w":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 521
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 523
    :cond_2
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_3

    const-string v4, "day"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 524
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->day:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    or-int/lit8 v0, v0, 0x1

    .line 526
    goto :goto_1

    .line 527
    :cond_3
    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_4

    const-string v4, "hour"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 528
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->hour:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    or-int/lit8 v0, v0, 0x2

    .line 530
    goto :goto_1

    .line 531
    :cond_4
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_5

    const-string v4, "min"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 532
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->minute:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    or-int/lit8 v0, v0, 0x4

    .line 534
    goto :goto_1

    .line 535
    :cond_5
    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_6

    const-string v4, "sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 536
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->second:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    or-int/lit8 v0, v0, 0x8

    .line 538
    goto :goto_1

    .line 541
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 544
    .end local v3    # "w":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method public disableMetering()I
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public enableMetering()I
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getConstraint(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    .line 431
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    .line 432
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getConstraintList()[I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 376
    const/4 v1, 0x0

    .line 380
    .local v1, "indx":I
    iget-boolean v6, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v6, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v3

    .line 384
    :cond_1
    const/16 v6, 0x8

    new-array v5, v6, [I

    .line 385
    .local v5, "tmp":[I
    iget-object v6, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 386
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 387
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 389
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    if-eqz v1, :cond_0

    .line 398
    new-array v3, v1, [I

    .line 400
    .local v3, "list":[I
    invoke-static {v5, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public getPermission()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    return v0
.end method

.method public getSummaryInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 355
    :goto_0
    return-object v0

    .line 354
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    goto :goto_0

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isMatched(Lcom/lge/lgdrm/DrmContent;)Z
    .locals 3
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    const/4 v0, 0x0

    .line 488
    iget-object v1, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    iget v1, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v2, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    if-ne v1, v2, :cond_0

    .line 494
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMeteringEnabled()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmRight;->nativeCheckMetering(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeteringRight()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    return v0
.end method

.method public isUnlimited()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    return v0
.end method

.method public isValidRight()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v2, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v4, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    iget v5, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmRight;->nativeGetRightInfo(Ljava/lang/String;III)I

    move-result v0

    .line 298
    .local v0, "retVal":I
    if-eqz v0, :cond_0

    .line 300
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 301
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 302
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/lge/lgdrm/DrmRight;->constraintsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 307
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
