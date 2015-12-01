.class public Lcom/lge/camera/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field public static final DEFAULT_IMAGE_EXIF_WIDTH:I = 0x320

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static mLength:I

.field private static mOffSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 436
    sput v0, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 437
    sput v0, Lcom/lge/camera/util/ExifUtil;->mLength:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static checkJpegSpec([B)Z
    .locals 7
    .param p0, "jpeg"    # [B

    .prologue
    const/16 v6, 0xff

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 492
    :cond_0
    :goto_0
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x3

    array-length v4, p0

    if-ge v3, v4, :cond_1

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_1

    .line 493
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    aget-byte v3, p0, v3

    and-int/lit16 v0, v3, 0xff

    .line 496
    .local v0, "marker":I
    if-eq v0, v6, :cond_0

    .line 499
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 502
    const/16 v3, 0xd8

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 506
    const/16 v3, 0xd9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xda

    if-ne v0, v3, :cond_2

    .end local v0    # "marker":I
    :cond_1
    :goto_1
    move v1, v2

    .line 530
    :goto_2
    return v1

    .line 511
    .restart local v0    # "marker":I
    :cond_2
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    invoke-static {p0, v3, v5, v1}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    sput v3, Lcom/lge/camera/util/ExifUtil;->mLength:I

    .line 512
    sget v3, Lcom/lge/camera/util/ExifUtil;->mLength:I

    if-lt v3, v5, :cond_3

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    sget v4, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/2addr v3, v4

    array-length v4, p0

    if-le v3, v4, :cond_4

    .line 513
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "Invalid length"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 518
    :cond_4
    const/16 v3, 0xe1

    if-ne v0, v3, :cond_5

    sget v3, Lcom/lge/camera/util/ExifUtil;->mLength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_5

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x4

    invoke-static {p0, v3, v4, v1}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    const v4, 0x45786966

    if-ne v3, v4, :cond_5

    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v3, v3, 0x6

    invoke-static {p0, v3, v5, v1}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    if-nez v3, :cond_5

    .line 520
    sget v1, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v1, v1, 0x8

    sput v1, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 521
    sget v1, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Lcom/lge/camera/util/ExifUtil;->mLength:I

    goto :goto_1

    .line 526
    :cond_5
    sget v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    sget v4, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/2addr v3, v4

    sput v3, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 527
    sput v1, Lcom/lge/camera/util/ExifUtil;->mLength:I

    goto/16 :goto_0
.end method

.method public static convertDegreeToExifOrientation(I)I
    .locals 1
    .param p0, "degree"    # I

    .prologue
    const/4 v0, 0x1

    .line 348
    sparse-switch p0, :sswitch_data_0

    .line 358
    :goto_0
    :sswitch_0
    return v0

    .line 352
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 354
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 356
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertExifOrientationToDegree(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 333
    packed-switch p0, :pswitch_data_0

    .line 343
    :goto_0
    :pswitch_0
    return v0

    .line 337
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 339
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 341
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static convertFlashModeToExifValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "result":I
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    const/16 v0, 0x18

    .line 306
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 295
    :cond_1
    const-string v1, "off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    const/16 v0, 0x10

    goto :goto_0

    .line 297
    :cond_2
    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    const/16 v0, 0x9

    goto :goto_0

    .line 299
    :cond_3
    const-string v1, "red-eye"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const-string v1, "torch"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 304
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertLocation(DI)Ljava/lang/String;
    .locals 10
    .param p0, "coordinate"    # D
    .param p2, "type"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p0, p1, p2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "strCoordinate":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "arrCoordinate":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v2, "sb":Ljava/lang/StringBuilder;
    packed-switch p2, :pswitch_data_0

    .line 227
    :goto_0
    const/16 v4, 0x2d

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 228
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "result":Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "END result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v1

    .line 204
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_0
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v4, "/1,0/1,0/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    :pswitch_1
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v4, "/1,0/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :pswitch_2
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v4, "/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertWbModeToExifValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "whiteBalace"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "result":I
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 329
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 327
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyExif(Landroid/media/ExifInterface;Landroid/media/ExifInterface;[Ljava/lang/String;)V
    .locals 10
    .param p0, "src"    # Landroid/media/ExifInterface;
    .param p1, "dest"    # Landroid/media/ExifInterface;
    .param p2, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 591
    const/4 v5, 0x0

    .line 592
    .local v5, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 593
    .local v7, "value":Ljava/lang/String;
    const-class v8, Landroid/media/ExifInterface;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v3, v1, v4

    .line 594
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TAG_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 593
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 597
    :cond_1
    const/4 v5, 0x0

    .line 599
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    if-eqz v5, :cond_0

    .line 606
    if-eqz p2, :cond_2

    invoke-static {v5, p2}, Lcom/lge/camera/util/ExifUtil;->isExcpetionTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 609
    :cond_2
    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 610
    if-eqz v7, :cond_0

    .line 613
    invoke-virtual {p1, v5, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 600
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 615
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_3
    return-void
.end method

.method public static getExifHeight(Ljava/lang/String;)I
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x320

    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "exif":Landroid/media/ExifInterface;
    if-nez p0, :cond_0

    .line 418
    const-string v5, "CameraApp"

    const-string v6, "filepath is null, return degree 0"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 433
    :goto_0
    return v3

    .line 423
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 428
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_1
    const/16 v3, 0x320

    .line 429
    .local v3, "height":I
    if-eqz v1, :cond_1

    .line 430
    const-string v5, "ImageLength"

    invoke-virtual {v1, v5, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 432
    :cond_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Exif height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    .end local v3    # "height":I
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "CameraApp"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getExifOrientationDegree(Ljava/lang/String;)I
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "degree":I
    const/4 v3, 0x0

    .line 366
    .local v3, "exif":Landroid/media/ExifInterface;
    if-nez p0, :cond_0

    .line 367
    const-string v6, "CameraApp"

    const-string v7, "filepath is null, return degree 0"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 387
    .end local v0    # "degree":I
    .local v1, "degree":I
    :goto_0
    return v1

    .line 372
    .end local v1    # "degree":I
    .restart local v0    # "degree":I
    :cond_0
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "exif":Landroid/media/ExifInterface;
    .local v4, "exif":Landroid/media/ExifInterface;
    move-object v3, v4

    .line 377
    .end local v4    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    :goto_1
    if-eqz v3, :cond_1

    .line 378
    const-string v6, "Orientation"

    invoke-virtual {v3, v6, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 379
    .local v5, "orientation":I
    if-eq v5, v8, :cond_2

    .line 381
    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->convertExifOrientationToDegree(I)I

    move-result v0

    .line 386
    .end local v5    # "orientation":I
    :cond_1
    :goto_2
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Degree = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 387
    .end local v0    # "degree":I
    .restart local v1    # "degree":I
    goto :goto_0

    .line 373
    .end local v1    # "degree":I
    .restart local v0    # "degree":I
    :catch_0
    move-exception v2

    .line 374
    .local v2, "ex":Ljava/io/IOException;
    const-string v6, "CameraApp"

    const-string v7, "cannot read exif"

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 383
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "orientation":I
    :cond_2
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExifOrientation : getAttributeInt return = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getExifWidth(Ljava/lang/String;)I
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x320

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "exif":Landroid/media/ExifInterface;
    if-nez p0, :cond_0

    .line 396
    const-string v5, "CameraApp"

    const-string v6, "filepath is null, return degree 0"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 411
    :goto_0
    return v3

    .line 401
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 406
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_1
    const/16 v3, 0x320

    .line 407
    .local v3, "width":I
    if-eqz v1, :cond_1

    .line 408
    const-string v5, "ImageWidth"

    invoke-virtual {v1, v5, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 410
    :cond_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Exif width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v3    # "width":I
    :catch_0
    move-exception v0

    .line 403
    .local v0, "ex":Ljava/io/IOException;
    const-string v5, "CameraApp"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getOrientation([B)I
    .locals 11
    .param p0, "jpeg"    # [B

    .prologue
    const v10, 0x49492a00    # 823968.0f

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 440
    if-nez p0, :cond_0

    .line 488
    :goto_0
    return v5

    .line 444
    :cond_0
    sput v5, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 445
    sput v5, Lcom/lge/camera/util/ExifUtil;->mLength:I

    .line 448
    invoke-static {p0}, Lcom/lge/camera/util/ExifUtil;->checkJpegSpec([B)Z

    move-result v6

    if-nez v6, :cond_1

    .line 449
    const-string v6, "CameraApp"

    const-string v7, "Invalid jpeg spec, orientation is 0"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    const/16 v7, 0x8

    if-le v6, v7, :cond_7

    .line 456
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    invoke-static {p0, v6, v9, v5}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v4

    .line 457
    .local v4, "tag":I
    if-eq v4, v10, :cond_2

    const v6, 0x4d4d002a    # 2.14958752E8f

    if-eq v4, v6, :cond_2

    .line 458
    const-string v6, "CameraApp"

    const-string v7, "Invalid byte order"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_2
    if-ne v4, v10, :cond_4

    const/4 v2, 0x1

    .line 464
    .local v2, "littleEndian":Z
    :goto_1
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v6, v6, 0x4

    invoke-static {p0, v6, v9, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v6

    add-int/lit8 v0, v6, 0x2

    .line 465
    .local v0, "count":I
    const/16 v6, 0xa

    if-lt v0, v6, :cond_3

    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    if-le v0, v6, :cond_5

    .line 466
    :cond_3
    const-string v6, "CameraApp"

    const-string v7, "Invalid offset"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "count":I
    .end local v2    # "littleEndian":Z
    :cond_4
    move v2, v5

    .line 461
    goto :goto_1

    .line 469
    .restart local v0    # "count":I
    .restart local v2    # "littleEndian":Z
    :cond_5
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/2addr v6, v0

    sput v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 470
    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    sub-int/2addr v6, v0

    sput v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    .line 473
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v6, v6, -0x2

    invoke-static {p0, v6, v8, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 474
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lez v1, :cond_7

    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_7

    .line 476
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    invoke-static {p0, v6, v8, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v4

    .line 477
    const/16 v6, 0x112

    if-ne v4, v6, :cond_6

    .line 479
    sget v5, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v5, v5, 0x8

    invoke-static {p0, v5, v8, v2}, Lcom/lge/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v3

    .local v3, "orientation":I
    move v5, v3

    .line 480
    goto :goto_0

    .line 482
    .end local v3    # "orientation":I
    :cond_6
    sget v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    add-int/lit8 v6, v6, 0xc

    sput v6, Lcom/lge/camera/util/ExifUtil;->mOffSet:I

    .line 483
    sget v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    add-int/lit8 v6, v6, -0xc

    sput v6, Lcom/lge/camera/util/ExifUtil;->mLength:I

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 487
    .end local v1    # "count":I
    .end local v2    # "littleEndian":Z
    .end local v4    # "tag":I
    :cond_7
    const-string v6, "CameraApp"

    const-string v7, "Orientation not found"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static isExcpetionTag(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 618
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 619
    .local v1, "exceptionTag":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    const/4 v4, 0x1

    .line 623
    .end local v1    # "exceptionTag":Ljava/lang/String;
    :goto_1
    return v4

    .line 618
    .restart local v1    # "exceptionTag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v1    # "exceptionTag":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 242
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-lez v1, :cond_0

    .line 243
    const-string v0, "N"

    .line 247
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 245
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "S"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static latlocConvert(D)Ljava/lang/String;
    .locals 8
    .param p0, "coordinate"    # D

    .prologue
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    .line 134
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p0, v4

    if-ltz v3, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v3, p0, v4

    if-gtz v3, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coordinate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v3, p0, v4

    if-gez v3, :cond_2

    .line 142
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    neg-double p0, p0

    .line 146
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 147
    .local v0, "degrees":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v3, "/1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 150
    mul-double/2addr p0, v6

    .line 151
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 152
    .local v1, "minutes":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v3, "/1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    int-to-double v4, v1

    sub-double/2addr p0, v4

    .line 155
    mul-double/2addr p0, v6

    .line 156
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 157
    const-string v3, "/1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static locationConvert(D)[D
    .locals 10
    .param p0, "coordinate"    # D

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 162
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v4

    if-gtz v4, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_1
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_2

    .line 168
    neg-double p0, p0

    .line 171
    :cond_2
    const/4 v4, 0x3

    new-array v3, v4, [D

    .line 173
    .local v3, "result":[D
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 175
    .local v1, "degrees":I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationConvert : degrees["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v4, 0x0

    int-to-double v6, v1

    aput-wide v6, v3, v4

    .line 178
    int-to-double v4, v1

    sub-double/2addr p0, v4

    .line 179
    mul-double/2addr p0, v8

    .line 180
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 182
    .local v2, "minutes":I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationConvert : minutes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v4, 0x1

    int-to-double v6, v2

    aput-wide v6, v3, v4

    .line 185
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 186
    mul-double/2addr p0, v8

    .line 188
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 189
    .local v0, "coordi":I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationConvert : coordi["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v4, 0x2

    int-to-double v6, v0

    aput-wide v6, v3, v4

    .line 193
    return-object v3
.end method

.method private static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 252
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-lez v1, :cond_0

    .line 253
    const-string v0, "E"

    .line 257
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 255
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "W"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private static pack([BIIZ)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "littleEndian"    # Z

    .prologue
    .line 534
    const/4 v1, 0x1

    .line 535
    .local v1, "step":I
    if-eqz p3, :cond_0

    .line 536
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 537
    const/4 v1, -0x1

    .line 540
    :cond_0
    const/4 v2, 0x0

    .local v2, "value":I
    move v0, p2

    .line 541
    .end local p2    # "length":I
    .local v0, "length":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "length":I
    .restart local p2    # "length":I
    if-lez v0, :cond_1

    .line 542
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 543
    add-int/2addr p1, v1

    move v0, p2

    .end local p2    # "length":I
    .restart local v0    # "length":I
    goto :goto_0

    .line 545
    .end local v0    # "length":I
    .restart local p2    # "length":I
    :cond_1
    return v2
.end method

.method public static setExif(Ljava/lang/String;Ljava/lang/String;FLandroid/location/Location;IILjava/lang/String;ILjava/lang/String;)V
    .locals 28
    .param p0, "targetFilePath"    # Ljava/lang/String;
    .param p1, "flashMode"    # Ljava/lang/String;
    .param p2, "focalLength"    # F
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "imageWidth"    # I
    .param p5, "imageLength"    # I
    .param p6, "iso"    # Ljava/lang/String;
    .param p7, "degree"    # I
    .param p8, "whiteBalace"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 45
    .local v6, "dateTaken":J
    const-string v24, "yyyy:MM:dd kk:mm:ss"

    move-object/from16 v0, v24

    invoke-static {v0, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 48
    .local v20, "nowTime":Ljava/lang/String;
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 50
    .local v8, "exif":Landroid/media/ExifInterface;
    const-string v24, "DateTime"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-string v24, "Flash"

    invoke-static/range {p1 .. p1}, Lcom/lge/camera/util/ExifUtil;->convertFlashModeToExifValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    const/high16 v24, -0x40800000    # -1.0f

    cmpl-float v24, p2, v24

    if-lez v24, :cond_1

    .line 57
    const-string v24, "FocalLength"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v26, 0x42c80000    # 100.0f

    mul-float v26, v26, p2

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/100"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    if-eqz p3, :cond_2

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 64
    .local v14, "latitude":D
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    .line 65
    .local v18, "longitude":D
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyy:MM:dd"

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "dateStamp":Ljava/text/SimpleDateFormat;
    const-string v24, "UTC"

    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    .line 67
    .local v23, "tzUTC":Ljava/util/TimeZone;
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 69
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Lat:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " LON:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-static {v14, v15, v0}, Lcom/lge/camera/util/ExifUtil;->convertLocation(DI)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "lat_str":Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/lge/camera/util/ExifUtil;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "lat_str_ref":Ljava/lang/String;
    const/16 v24, 0x2

    move-wide/from16 v0, v18

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/ExifUtil;->convertLocation(DI)Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, "lon_str":Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/ExifUtil;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v16

    .line 79
    .local v16, "lon_str_ref":Ljava/lang/String;
    const-string v24, "GPSDateStamp"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getTime()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v24, "UTC"

    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 81
    .local v9, "gpsTimeStampCalendar":Ljava/util/Calendar;
    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 82
    const/16 v24, 0xb

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 83
    .local v10, "hour":I
    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 84
    .local v17, "min":I
    const/16 v24, 0xd

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 85
    .local v21, "sec":I
    const-string v24, "%d/1,%d/1,%d/1"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 86
    .local v22, "timeStamp":Ljava/lang/String;
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GPS_TIMESTAMP="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v24, "GPSTimeStamp"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v24, "GPSLatitude"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v24, "GPSLatitudeRef"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v24, "GPSLongitude"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v24, "GPSLongitudeRef"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v4    # "dateStamp":Ljava/text/SimpleDateFormat;
    .end local v9    # "gpsTimeStampCalendar":Ljava/util/Calendar;
    .end local v10    # "hour":I
    .end local v11    # "lat_str":Ljava/lang/String;
    .end local v12    # "lat_str_ref":Ljava/lang/String;
    .end local v13    # "lon_str":Ljava/lang/String;
    .end local v14    # "latitude":D
    .end local v16    # "lon_str_ref":Ljava/lang/String;
    .end local v17    # "min":I
    .end local v18    # "longitude":D
    .end local v21    # "sec":I
    .end local v22    # "timeStamp":Ljava/lang/String;
    .end local v23    # "tzUTC":Ljava/util/TimeZone;
    :cond_2
    const-string v24, "DateTimeOriginal"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v24, "DateTimeDigitized"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v24, "ImageWidth"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v24, "ImageLength"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p6, :cond_3

    .line 100
    const-string v24, "ISOSpeedRatings"

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    const-string v24, "Make"

    const-string v25, "LG Electronics"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v24, "Model"

    sget-object v25, Lcom/lge/camera/properties/CameraConstants;->EXIF_STR_MODEL:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v24, "Orientation"

    invoke-static/range {p7 .. p7}, Lcom/lge/camera/util/ExifUtil;->convertDegreeToExifOrientation(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz p8, :cond_4

    .line 107
    const-string v24, "WhiteBalance"

    invoke-static/range {p8 .. p8}, Lcom/lge/camera/util/ExifUtil;->convertWbModeToExifValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_4
    invoke-virtual {v8}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v8    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v5

    .line 112
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setExifMakeModel(Ljava/lang/String;)V
    .locals 4
    .param p0, "targetFilePath"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v2, "Make"

    const-string v3, "LG Electronics"

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "Model"

    sget-object v3, Lcom/lge/camera/properties/CameraConstants;->EXIF_STR_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setNewExifInformation([BIIIIILandroid/location/Location;F)[B
    .locals 8
    .param p0, "originalByteArray"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "minSideLength"    # I
    .param p5, "maxNumOfPixels"    # I
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "focalLength"    # F

    .prologue
    .line 555
    const/4 v7, 0x0

    .line 557
    .local v7, "generatedExifJpg":[B
    :try_start_0
    invoke-static {p0, p4, p5}, Lcom/lge/camera/util/Util;->makeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 558
    .local v1, "thumbBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 559
    const-string v0, "CameraApp"

    const-string v2, "originalBitmap is null"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x0

    .line 587
    .end local v1    # "thumbBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 563
    .restart local v1    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p7}, Lcom/lge/olaworks/library/Exif;->setFocalLength(F)V

    .line 565
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 567
    :cond_1
    invoke-static {p0, v1, p6, p3}, Lcom/lge/olaworks/library/Exif;->processNewExif([BLandroid/graphics/Bitmap;Landroid/location/Location;I)[B

    move-result-object v7

    .line 575
    :goto_1
    if-nez v7, :cond_2

    .line 576
    const-string v0, "CameraApp"

    const-string v2, "processNewExif() is failed"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v7

    .line 587
    goto :goto_0

    :cond_3
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p6

    move v5, p3

    .line 571
    invoke-static/range {v0 .. v5}, Lcom/lge/olaworks/library/Exif;->processNewExif([BLandroid/graphics/Bitmap;IILandroid/location/Location;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 581
    .end local v1    # "thumbBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 582
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "CameraApp"

    const-string v2, "EXIF data insert fail."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNewExifInformation([BILandroid/location/Location;F)[B
    .locals 8
    .param p0, "originalByteArray"    # [B
    .param p1, "orientation"    # I
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "focalLength"    # F

    .prologue
    const/4 v1, 0x0

    .line 550
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/lge/camera/util/ExifUtil;->setNewExifInformation([BIIIIILandroid/location/Location;F)[B

    move-result-object v0

    return-object v0
.end method
