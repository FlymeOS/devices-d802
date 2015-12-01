.class public Lcom/lge/camera/util/ImageRotationOn;
.super Lcom/lge/camera/util/ImageHandler;
.source "ImageRotationOn.java"


# static fields
.field private static final ROTATE_CCR_90:I = 0x10e

.field private static final ROTATE_CR_180:I = 0xb4

.field private static final ROTATE_CR_90:I = 0x5a

.field private static final ROTATE_ZERO:I


# instance fields
.field private mLastRotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/camera/util/ImageHandler;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    return-void
.end method

.method public static rotateYUV420([BIII)[B
    .locals 10
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 106
    mul-int v5, p1, p2

    .line 107
    .local v5, "size":I
    div-int/lit8 v2, p1, 0x2

    .line 108
    .local v2, "halfWidth":I
    div-int/lit8 v1, p2, 0x2

    .line 110
    .local v1, "halfHeight":I
    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 112
    .local v0, "dest":[B
    sparse-switch p3, :sswitch_data_0

    .line 189
    :cond_0
    return-object v0

    .line 114
    :sswitch_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 115
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 121
    mul-int v6, p2, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v3, 0x1

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 122
    add-int/lit8 v6, v3, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x2

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 124
    add-int v6, p2, v3

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 126
    add-int v6, p2, v3

    add-int/lit8 v6, v6, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x2

    sub-int v7, p2, v7

    mul-int/2addr v7, p1

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 129
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    mul-int/2addr v7, p1

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 132
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v1, -0x1

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    mul-int/2addr v7, p1

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 115
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 138
    .end local v3    # "i":I
    .end local v4    # "j":I
    :sswitch_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, p2, :cond_0

    .line 139
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, p1, :cond_2

    .line 145
    mul-int v6, p1, v3

    add-int/2addr v6, v4

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x1

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 147
    add-int/lit8 v6, v4, 0x1

    mul-int v7, p1, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x1

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 149
    add-int v6, p1, v4

    mul-int v7, p1, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x2

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 151
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    mul-int v7, p1, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/lit8 v8, v3, 0x2

    sub-int v8, p2, v8

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 154
    add-int v6, v5, v4

    mul-int v7, v2, v3

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    add-int/lit8 v8, v1, -0x1

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 157
    add-int v6, v5, v4

    mul-int v7, v2, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    add-int/lit8 v8, v1, -0x1

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    mul-int/2addr v8, p1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 139
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_2

    .line 164
    .end local v3    # "i":I
    .end local v4    # "j":I
    :sswitch_2
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, p1, :cond_0

    .line 165
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, p2, :cond_3

    .line 171
    mul-int v6, p2, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 172
    add-int/lit8 v6, v3, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 174
    add-int v6, p2, v3

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 176
    add-int v6, p2, v3

    add-int/lit8 v6, v6, 0x1

    mul-int v7, p2, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    mul-int v8, p1, v3

    add-int/2addr v7, v8

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 179
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int v8, v2, v3

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 182
    add-int v6, v5, v3

    mul-int v7, v1, v4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, p1, -0x2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int v8, v2, v3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    .line 165
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 164
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "directory"    # Ljava/lang/String;
    .param p7, "filename"    # Ljava/lang/String;
    .param p8, "degree"    # I
    .param p9, "isBurst"    # Z

    .prologue
    .line 71
    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BIZ)Landroid/net/Uri;
    .locals 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "directory"    # Ljava/lang/String;
    .param p7, "filename"    # Ljava/lang/String;
    .param p8, "source"    # Landroid/graphics/Bitmap;
    .param p9, "jpegData"    # [B
    .param p10, "degree"    # I
    .param p11, "isBurst"    # Z

    .prologue
    .line 78
    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v10, p11

    invoke-static/range {v0 .. v10}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BIZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "jpegData"    # [B
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "directory"    # Ljava/lang/String;
    .param p8, "filename"    # Ljava/lang/String;
    .param p9, "degree"    # I
    .param p10, "isBurst"    # Z

    .prologue
    .line 100
    invoke-static/range {p1 .. p10}, Lcom/lge/camera/util/ImageManager;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public convertYuvToJpeg([BIIII)[B
    .locals 16
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "quality"    # I

    .prologue
    .line 194
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolution ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] data size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotation = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, p2, p3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_1

    .line 199
    const/4 v12, 0x0

    .line 248
    :cond_0
    :goto_0
    return-object v12

    .line 202
    :cond_1
    if-eqz p4, :cond_3

    .line 203
    invoke-static/range {p1 .. p4}, Lcom/lge/camera/util/ImageRotationOn;->rotateYUV420([BIII)[B

    move-result-object v14

    .line 204
    .local v14, "rotateData":[B
    if-eqz v14, :cond_5

    .line 205
    move-object/from16 p1, v14

    .line 206
    const/16 v3, 0x10e

    move/from16 v0, p4

    if-eq v0, v3, :cond_2

    const/16 v3, 0x5a

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 207
    :cond_2
    move/from16 v15, p2

    .line 208
    .local v15, "tmp":I
    move/from16 p2, p3

    .line 209
    move/from16 p3, v15

    .line 215
    .end local v14    # "rotateData":[B
    .end local v15    # "tmp":I
    :cond_3
    :goto_1
    new-instance v2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 216
    .local v2, "yuv":Landroid/graphics/YuvImage;
    const/4 v12, 0x0

    .line 217
    .local v12, "result":[B
    if-eqz v2, :cond_0

    .line 218
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 221
    .local v13, "ret":Z
    :try_start_0
    new-instance v11, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v11, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    .local v11, "rectangle":Landroid/graphics/Rect;
    if-eqz v11, :cond_4

    invoke-virtual {v2}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v3

    if-eqz v3, :cond_4

    .line 223
    move/from16 v0, p5

    invoke-virtual {v2, v11, v0, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v13

    .line 225
    :cond_4
    if-eqz v13, :cond_6

    .line 226
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 237
    :goto_2
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    const/4 v8, 0x0

    .line 244
    .end local v11    # "rectangle":Landroid/graphics/Rect;
    :goto_3
    const/4 v2, 0x0

    .line 245
    const/16 p1, 0x0

    goto :goto_0

    .line 212
    .end local v2    # "yuv":Landroid/graphics/YuvImage;
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "result":[B
    .end local v13    # "ret":Z
    .restart local v14    # "rotateData":[B
    :cond_5
    const-string v3, "CameraApp"

    const-string v4, "Rotated data is null!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    .end local v14    # "rotateData":[B
    .restart local v2    # "yuv":Landroid/graphics/YuvImage;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "rectangle":Landroid/graphics/Rect;
    .restart local v12    # "result":[B
    .restart local v13    # "ret":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 239
    :catch_0
    move-exception v10

    .line 240
    .local v10, "ex":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception in finally block"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 230
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v11    # "rectangle":Landroid/graphics/Rect;
    :catch_1
    move-exception v9

    .line 231
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CameraApp"

    const-string v4, "Exception while YuvImage.compressToJpeg()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    const/4 v12, 0x0

    .line 237
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 238
    const/4 v8, 0x0

    goto :goto_3

    .line 239
    :catch_2
    move-exception v10

    .line 240
    .restart local v10    # "ex":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception in finally block"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 236
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 237
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 238
    const/4 v8, 0x0

    .line 242
    :goto_4
    throw v3

    .line 239
    :catch_3
    move-exception v10

    .line 240
    .restart local v10    # "ex":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "Exception in finally block"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "degree"    # I
    .param p3, "mirror"    # Z

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/util/ImageRotationOn;->getRotated(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public resetRotation()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    .line 43
    return-void
.end method

.method public saveContiShotImage([BLjava/lang/String;III)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 90
    const/4 v0, -0x1

    return v0
.end method

.method public saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "ext"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1, p2, p3, p4}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRotation(Landroid/hardware/Camera$Parameters;I)Z
    .locals 4
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 47
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotation ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 50
    iput p2, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    .line 62
    :goto_0
    return v0

    .line 53
    :cond_0
    iget v1, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    if-eq v1, p2, :cond_1

    .line 54
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 55
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotation ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput p2, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startOlaPanorama(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "rotation"    # I

    .prologue
    .line 66
    return-void
.end method
