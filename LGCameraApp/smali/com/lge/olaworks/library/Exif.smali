.class public Lcom/lge/olaworks/library/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static mFocalLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/lge/olaworks/library/Exif;->mFocalLength:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([B)I
    .locals 15
    .param p0, "jpeg"    # [B

    .prologue
    const/16 v14, 0x8

    const/4 v3, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 145
    if-nez p0, :cond_0

    .line 227
    :goto_0
    return v9

    .line 149
    :cond_0
    const/4 v5, 0x0

    .line 150
    .local v5, "offset":I
    const/4 v2, 0x0

    .line 153
    .local v2, "length":I
    :cond_1
    :goto_1
    add-int/lit8 v10, v5, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_3

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-ne v10, v11, :cond_e

    .line 154
    aget-byte v10, p0, v6

    and-int/lit16 v4, v10, 0xff

    .line 157
    .local v4, "marker":I
    const/16 v10, 0xff

    if-ne v4, v10, :cond_2

    move v5, v6

    .line 158
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_1

    .line 160
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 163
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    const/16 v10, 0xd8

    if-eq v4, v10, :cond_1

    if-eq v4, v3, :cond_1

    .line 167
    const/16 v10, 0xd9

    if-eq v4, v10, :cond_3

    const/16 v10, 0xda

    if-ne v4, v10, :cond_4

    .line 193
    .end local v4    # "marker":I
    :cond_3
    :goto_2
    if-le v2, v14, :cond_d

    .line 195
    invoke-static {p0, v5, v13, v9}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v8

    .line 196
    .local v8, "tag":I
    const v10, 0x49492a00    # 823968.0f

    if-eq v8, v10, :cond_8

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq v8, v10, :cond_8

    .line 197
    const-string v10, "CameraApp"

    const-string v11, "Invalid byte order"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v8    # "tag":I
    .restart local v4    # "marker":I
    :cond_4
    invoke-static {p0, v5, v12, v9}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v2

    .line 173
    if-lt v2, v12, :cond_5

    add-int v10, v5, v2

    array-length v11, p0

    if-le v10, v11, :cond_6

    .line 174
    :cond_5
    const-string v10, "CameraApp"

    const-string v11, "Invalid length"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_6
    const/16 v10, 0xe1

    if-ne v4, v10, :cond_7

    if-lt v2, v14, :cond_7

    add-int/lit8 v10, v5, 0x2

    invoke-static {p0, v10, v13, v9}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v5, 0x6

    invoke-static {p0, v10, v12, v9}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_7

    .line 182
    add-int/lit8 v5, v5, 0x8

    .line 183
    add-int/lit8 v2, v2, -0x8

    .line 184
    goto :goto_2

    .line 188
    :cond_7
    add-int/2addr v5, v2

    .line 189
    const/4 v2, 0x0

    .line 190
    goto :goto_1

    .line 200
    .end local v4    # "marker":I
    .restart local v8    # "tag":I
    :cond_8
    const v10, 0x49492a00    # 823968.0f

    if-ne v8, v10, :cond_a

    .line 203
    .local v3, "littleEndian":Z
    :goto_3
    add-int/lit8 v10, v5, 0x4

    invoke-static {p0, v10, v13, v3}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    .line 204
    .local v0, "count":I
    const/16 v10, 0xa

    if-lt v0, v10, :cond_9

    if-le v0, v2, :cond_b

    .line 205
    :cond_9
    const-string v10, "CameraApp"

    const-string v11, "Invalid offset"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "count":I
    .end local v3    # "littleEndian":Z
    :cond_a
    move v3, v9

    .line 200
    goto :goto_3

    .line 208
    .restart local v0    # "count":I
    .restart local v3    # "littleEndian":Z
    :cond_b
    add-int/2addr v5, v0

    .line 209
    sub-int/2addr v2, v0

    .line 212
    add-int/lit8 v10, v5, -0x2

    invoke-static {p0, v10, v12, v3}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 213
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_4
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lez v1, :cond_d

    const/16 v10, 0xc

    if-lt v2, v10, :cond_d

    .line 215
    invoke-static {p0, v5, v12, v3}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v8

    .line 216
    const/16 v10, 0x112

    if-ne v8, v10, :cond_c

    .line 218
    add-int/lit8 v9, v5, 0x8

    invoke-static {p0, v9, v12, v3}, Lcom/lge/olaworks/library/Exif;->pack([BIIZ)I

    move-result v7

    .local v7, "orientation":I
    move v9, v7

    .line 219
    goto/16 :goto_0

    .line 221
    .end local v7    # "orientation":I
    :cond_c
    add-int/lit8 v5, v5, 0xc

    .line 222
    add-int/lit8 v2, v2, -0xc

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 226
    .end local v1    # "count":I
    .end local v3    # "littleEndian":Z
    .end local v8    # "tag":I
    :cond_d
    const-string v10, "CameraApp"

    const-string v11, "Orientation not found"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method private static makeExifThumbnail(Landroid/graphics/Bitmap;)[B
    .locals 20
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    const/16 v11, 0x140

    .local v11, "tw":I
    const/16 v6, 0xf0

    .line 42
    .local v6, "th":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 43
    .local v4, "srcRatio":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v12, v14, v16

    .line 48
    .local v12, "thumbRatio":D
    cmpl-double v14, v4, v12

    if-lez v14, :cond_1

    .line 49
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v6, v14

    .line 53
    :cond_0
    :goto_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 54
    .local v9, "thumbNailBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .local v10, "thumbNailCanvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v14, v15, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v3, "ostream":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 63
    .local v7, "thumbJpg":[B
    if-eqz v3, :cond_2

    .line 64
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x4b

    invoke-virtual {v9, v14, v15, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 67
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    const/4 v9, 0x0

    .line 71
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    const/4 v3, 0x0

    .line 85
    invoke-static {v7}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->stripJpegHeader([B)[B

    move-result-object v8

    .line 86
    .local v8, "thumbJpg2":[B
    const/4 v7, 0x0

    .line 88
    return-object v8

    .line 50
    .end local v3    # "ostream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "thumbJpg":[B
    .end local v8    # "thumbJpg2":[B
    .end local v9    # "thumbNailBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "thumbNailCanvas":Landroid/graphics/Canvas;
    :cond_1
    cmpg-double v14, v4, v12

    if-gez v14, :cond_0

    .line 51
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v6

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v11, v14

    goto :goto_0

    .line 72
    .restart local v3    # "ostream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "thumbJpg":[B
    .restart local v9    # "thumbNailBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "thumbNailCanvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const-string v14, "CameraApp"

    const-string v15, " error! ostream can\'t create. ostream is null"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    const/4 v9, 0x0

    .line 80
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private static pack([BIIZ)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "littleEndian"    # Z

    .prologue
    .line 232
    const/4 v1, 0x1

    .line 233
    .local v1, "step":I
    if-eqz p3, :cond_0

    .line 234
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 235
    const/4 v1, -0x1

    .line 238
    :cond_0
    const/4 v2, 0x0

    .local v2, "value":I
    move v0, p2

    .line 239
    .end local p2    # "length":I
    .local v0, "length":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "length":I
    .restart local p2    # "length":I
    if-lez v0, :cond_1

    .line 240
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 241
    add-int/2addr p1, v1

    move v0, p2

    .end local p2    # "length":I
    .restart local v0    # "length":I
    goto :goto_0

    .line 243
    .end local v0    # "length":I
    .restart local p2    # "length":I
    :cond_1
    return v2
.end method

.method public static processLoadExif([B[BLandroid/graphics/Bitmap;)[B
    .locals 6
    .param p0, "before"    # [B
    .param p1, "after"    # [B
    .param p2, "beforeBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 102
    new-instance v1, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;

    array-length v4, p0

    invoke-direct {v1, p0, v4}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;-><init>([BI)V

    .line 104
    .local v1, "original":Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->create()I

    move-result v2

    .line 105
    .local v2, "res":I
    if-gez v2, :cond_0

    .line 106
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.create() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-static {v1}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->load(Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;)I

    move-result v2

    .line 110
    if-gez v2, :cond_1

    .line 111
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.load() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setPrimaryImg([B)I

    move-result v2

    .line 117
    if-gez v2, :cond_2

    .line 118
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.setPrimaryImg() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {p2}, Lcom/lge/olaworks/library/Exif;->makeExifThumbnail(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 124
    .local v3, "thumbJpg":[B
    if-nez v3, :cond_3

    .line 125
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.stripJpegHeader() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 130
    :cond_3
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setThumbNail(I[B)I

    move-result v2

    .line 131
    if-gez v2, :cond_4

    .line 132
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.setThumbNail() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->generate()[B

    move-result-object v0

    .line 139
    .local v0, "generatedJpg":[B
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0
.end method

.method public static processNewExif([BLandroid/graphics/Bitmap;IILandroid/location/Location;I)[B
    .locals 6
    .param p0, "orgJpg"    # [B
    .param p1, "thumbBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "loc"    # Landroid/location/Location;
    .param p5, "orientation"    # I

    .prologue
    .line 270
    invoke-static {p1}, Lcom/lge/olaworks/library/Exif;->makeExifThumbnail(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .local v1, "thumbJpg":[B
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 271
    invoke-static/range {v0 .. v5}, Lcom/lge/olaworks/library/Exif;->processNewExif([B[BIILandroid/location/Location;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static processNewExif([BLandroid/graphics/Bitmap;Landroid/location/Location;I)[B
    .locals 6
    .param p0, "orgJpg"    # [B
    .param p1, "orgBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "orientation"    # I

    .prologue
    .line 255
    invoke-static {p1}, Lcom/lge/olaworks/library/Exif;->makeExifThumbnail(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 256
    .local v1, "thumbJpg":[B
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/lge/olaworks/library/Exif;->processNewExif([B[BIILandroid/location/Location;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static processNewExif([B[BIILandroid/location/Location;I)[B
    .locals 34
    .param p0, "orgJpg"    # [B
    .param p1, "thumbJpg"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "loc"    # Landroid/location/Location;
    .param p5, "orientation"    # I

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 289
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.stripJpegHeader() is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 291
    const/16 v24, 0x0

    .line 519
    :goto_0
    return-object v24

    .line 294
    :cond_0
    new-instance v2, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    array-length v6, v0

    const/16 v7, 0x48

    const/4 v8, 0x1

    const/16 v9, 0x48

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;-><init>(II[BIIIIII)V

    .line 295
    .local v2, "primeImg":Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;
    new-instance v3, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, p1

    array-length v7, v0

    const/16 v8, 0x48

    const/4 v9, 0x1

    const/16 v10, 0x48

    const/4 v11, 0x1

    const/4 v12, 0x2

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v12}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;-><init>(II[BIIIIII)V

    .line 296
    .local v3, "thumbImg":Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;
    new-instance v4, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;

    const v5, 0x30323230

    const v6, 0x1020300

    const v7, 0x30313030

    const/4 v8, 0x1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;-><init>(IIIIII)V

    .line 298
    .local v4, "exifPriv":Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->create()I

    move-result v29

    .line 299
    .local v29, "res":I
    if-gez v29, :cond_1

    .line 301
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.create() is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/16 v24, 0x0

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {v2, v3, v4}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->initialize(Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;)I

    move-result v29

    .line 306
    if-gez v29, :cond_2

    .line 308
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.initialize() is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 310
    const/16 v24, 0x0

    goto :goto_0

    .line 320
    :cond_2
    const/16 v27, 0x1

    .line 321
    .local v27, "mOrient":I
    if-nez p5, :cond_4

    .line 322
    const/16 v27, 0x1

    .line 330
    :cond_3
    :goto_1
    const/4 v7, 0x0

    const/16 v9, 0x112

    const/4 v14, 0x3

    const/4 v15, 0x1

    move/from16 v0, v27

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setInt(IIIII)I

    move-result v29

    .line 331
    if-gez v29, :cond_7

    .line 333
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(PRIME, ORIENTATION) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 335
    const/16 v24, 0x0

    goto :goto_0

    .line 323
    :cond_4
    const/16 v7, 0x5a

    move/from16 v0, p5

    if-ne v0, v7, :cond_5

    .line 324
    const/16 v27, 0x6

    goto :goto_1

    .line 325
    :cond_5
    const/16 v7, 0xb4

    move/from16 v0, p5

    if-ne v0, v7, :cond_6

    .line 326
    const/16 v27, 0x3

    goto :goto_1

    .line 327
    :cond_6
    const/16 v7, 0x10e

    move/from16 v0, p5

    if-ne v0, v7, :cond_3

    .line 328
    const/16 v27, 0x8

    goto :goto_1

    .line 340
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 342
    .local v22, "cal":Ljava/util/Calendar;
    const-string v7, "%04d:%02d:%02d %02d:%02d:%02d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x2

    const/4 v15, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x3

    const/16 v15, 0xb

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x4

    const/16 v15, 0xc

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x5

    const/16 v15, 0xd

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 344
    .local v23, "calStr":Ljava/lang/String;
    const/4 v7, 0x1

    const v9, 0x9003

    const/4 v14, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v29

    .line 345
    if-gez v29, :cond_8

    .line 347
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(PRIVATE, DATETIME_ORIGINAL) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 349
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 351
    :cond_8
    const/4 v7, 0x1

    const v9, 0x9004

    const/4 v14, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v29

    .line 352
    if-gez v29, :cond_9

    .line 354
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(PRIVATE, DATETIME_DIGITIZED) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 356
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 360
    :cond_9
    new-instance v28, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct/range {v28 .. v28}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>()V

    .line 363
    .local v28, "rationalData":Lcom/lge/olaworks/datastruct/Ola_ExifUrational;
    sget v7, Lcom/lge/olaworks/library/Exif;->mFocalLength:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    move-object/from16 v0, v28

    iput v7, v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->numerator:I

    .line 364
    const/16 v7, 0x64

    move-object/from16 v0, v28

    iput v7, v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->denominator:I

    .line 366
    const/4 v7, 0x1

    const v9, 0x920a

    const/4 v14, 0x5

    const/4 v15, 0x1

    move-object/from16 v0, v28

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifUrational;)I

    move-result v29

    .line 367
    if-gez v29, :cond_a

    .line 369
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setUrational(PRIVATE, FOCALLENGTH) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 371
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 377
    :cond_a
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v14, 0x2

    const-string v15, "R98"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, "R98"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v29

    .line 378
    if-gez v29, :cond_b

    .line 380
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(INTEROP, INTEROP_INDEX) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 382
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 384
    :cond_b
    const/4 v7, 0x2

    const/4 v9, 0x2

    const/4 v14, 0x7

    const/4 v15, 0x4

    const v16, 0x30313030

    move/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setInt(IIIII)I

    move-result v29

    .line 385
    if-gez v29, :cond_c

    .line 387
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setInt(INTEROP, INTEROP_VERSION) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 389
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 395
    :cond_c
    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/high16 v16, 0x20200000

    move/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setInt(IIIII)I

    move-result v29

    .line 396
    if-gez v29, :cond_d

    .line 398
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setInt(GPS, GPS_VERSION) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 400
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 403
    :cond_d
    if-eqz p4, :cond_17

    .line 404
    const-wide/16 v32, 0x0

    .line 405
    .local v32, "value":D
    const/4 v6, 0x0

    .line 406
    .local v6, "degree":I
    const/4 v8, 0x0

    .line 407
    .local v8, "min":I
    const/4 v10, 0x0

    .line 409
    .local v10, "sec":I
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v32

    .line 410
    const-wide/16 v14, 0x0

    cmpl-double v7, v32, v14

    if-lez v7, :cond_e

    const-string v25, "N"

    .line 411
    .local v25, "latRef":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v29

    .line 412
    if-gez v29, :cond_f

    .line 414
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_LAT_REF) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 416
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 410
    .end local v25    # "latRef":Ljava/lang/String;
    :cond_e
    const-string v25, "S"

    goto :goto_2

    .line 419
    .restart local v25    # "latRef":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x2

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v30

    .line 420
    .local v30, "strCoord":Ljava/lang/String;
    const-string v7, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Latitude strCoordinate="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v7, ":"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 423
    .local v21, "arrCoordinate":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 424
    const/4 v7, 0x1

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 425
    const/4 v7, 0x2

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v10

    .line 426
    const-string v7, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Latitude d,m,s="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v5, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 428
    .local v5, "lat":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v5}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v29

    .line 429
    if-gez v29, :cond_10

    .line 431
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_LAT) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 433
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 436
    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v32

    .line 437
    const-wide/16 v14, 0x0

    cmpl-double v7, v32, v14

    if-lez v7, :cond_11

    const-string v26, "E"

    .line 438
    .local v26, "longRef":Ljava/lang/String;
    :goto_3
    const/4 v7, 0x3

    const/4 v9, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v29

    .line 439
    if-gez v29, :cond_12

    .line 441
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_LONG_REF) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 443
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 437
    .end local v26    # "longRef":Ljava/lang/String;
    :cond_11
    const-string v26, "W"

    goto :goto_3

    .line 446
    .restart local v26    # "longRef":Ljava/lang/String;
    :cond_12
    const/4 v7, 0x2

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v30

    .line 447
    const-string v7, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Longitude strCoordinate="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v7, ":"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 450
    const/4 v7, 0x0

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 451
    const/4 v7, 0x1

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 452
    const/4 v7, 0x2

    aget-object v7, v21, v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v10

    .line 453
    const-string v7, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Longitude d,m,s="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v11, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/4 v13, 0x1

    const/4 v15, 0x1

    const/16 v17, 0x1

    move v12, v6

    move v14, v8

    move/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 455
    .local v11, "longi":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v11}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v29

    .line 456
    if-gez v29, :cond_13

    .line 458
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_LONG) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 460
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 463
    :cond_13
    const/16 v20, 0x0

    .line 464
    .local v20, "altRef":I
    const/4 v7, 0x3

    const/4 v9, 0x5

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v0, v20

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setInt(IIIII)I

    move-result v29

    .line 465
    if-gez v29, :cond_14

    .line 467
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_ALT_REF) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 469
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 472
    :cond_14
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v32

    .line 473
    move-wide/from16 v0, v32

    double-to-int v6, v0

    .line 474
    int-to-double v14, v6

    sub-double v14, v32, v14

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    double-to-int v8, v14

    .line 475
    int-to-double v14, v6

    sub-double v14, v32, v14

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    int-to-double v0, v8

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    double-to-int v10, v14

    .line 476
    new-instance v12, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/4 v14, 0x1

    const/16 v16, 0x1

    const/16 v18, 0x1

    move v13, v6

    move v15, v8

    move/from16 v17, v10

    invoke-direct/range {v12 .. v18}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 477
    .local v12, "alt":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v12}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v29

    .line 478
    if-gez v29, :cond_15

    .line 480
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_ALT) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 482
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 485
    :cond_15
    new-instance v7, Ljava/sql/Date;

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    invoke-direct {v7, v14, v15}, Ljava/sql/Date;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 486
    new-instance v13, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/16 v7, 0xb

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v7, 0xc

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0x1

    const/16 v7, 0xd

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    invoke-direct/range {v13 .. v19}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 487
    .local v13, "timeStmp":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v13}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v29

    .line 488
    if-gez v29, :cond_16

    .line 490
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_TIMESTAMP) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 492
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 495
    :cond_16
    const/4 v7, 0x3

    const/16 v9, 0x12

    const/4 v14, 0x2

    const/4 v15, 0x6

    const-string v16, "WGS-84"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v29

    .line 496
    if-gez v29, :cond_18

    .line 498
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_MAP_DATUM) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 500
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 505
    .end local v5    # "lat":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v6    # "degree":I
    .end local v8    # "min":I
    .end local v10    # "sec":I
    .end local v11    # "longi":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v12    # "alt":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v13    # "timeStmp":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v20    # "altRef":I
    .end local v21    # "arrCoordinate":[Ljava/lang/String;
    .end local v25    # "latRef":Ljava/lang/String;
    .end local v26    # "longRef":Ljava/lang/String;
    .end local v30    # "strCoord":Ljava/lang/String;
    .end local v32    # "value":D
    :cond_17
    new-instance v7, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v7, v14, v15}, Ljava/sql/Date;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 506
    new-instance v13, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/16 v7, 0xb

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v7, 0xc

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0x1

    const/16 v7, 0xd

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    invoke-direct/range {v13 .. v19}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 507
    .restart local v13    # "timeStmp":Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v13}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v29

    .line 508
    if-gez v29, :cond_18

    .line 510
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_TIMESTAMP) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 512
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 515
    :cond_18
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->generate()[B

    move-result-object v24

    .line 517
    .local v24, "generatedJpg":[B
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto/16 :goto_0
.end method

.method public static setFocalLength(F)V
    .locals 0
    .param p0, "length"    # F

    .prologue
    .line 29
    sput p0, Lcom/lge/olaworks/library/Exif;->mFocalLength:F

    .line 30
    return-void
.end method
