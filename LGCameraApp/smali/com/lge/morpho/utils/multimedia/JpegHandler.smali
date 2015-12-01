.class public Lcom/lge/morpho/utils/multimedia/JpegHandler;
.super Ljava/lang/Object;
.source "JpegHandler.java"


# static fields
.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "encodeQuality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v0, "byte_os":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 44
    .local v3, "jpegByteArray":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 47
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "fileOutput":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 50
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 55
    const/4 v2, 0x0

    .line 57
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "CameraApp"

    const-string v5, "compressBitmap error : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 55
    const/4 v2, 0x0

    .line 56
    goto :goto_0

    .line 54
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 55
    const/4 v2, 0x0

    throw v4
.end method

.method public static decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "max_memory"    # I

    .prologue
    .line 60
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v2, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 64
    .local v1, "dst_w":I
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 65
    .local v0, "dst_h":I
    if-lez p1, :cond_0

    .line 67
    :goto_0
    mul-int v6, v1, v0

    mul-int/lit8 v6, v6, 0x4

    if-le p1, v6, :cond_1

    .line 74
    :cond_0
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v5, v6, v1

    .line 75
    .local v5, "scaleW":I
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v4, v6, v0

    .line 76
    .local v4, "scaleH":I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 77
    .local v3, "sampleSize":I
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 78
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 70
    .end local v3    # "sampleSize":I
    .end local v4    # "scaleH":I
    .end local v5    # "scaleW":I
    :cond_1
    shr-int/lit8 v1, v1, 0x1

    .line 71
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getImageSize(Ljava/lang/String;[I[I)V
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "width"    # [I
    .param p2, "height"    # [I

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 92
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, p1, v2

    .line 94
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, p2, v2

    .line 95
    return-void
.end method

.method public static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 272
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-lez v1, :cond_0

    .line 273
    const-string v0, "N"

    .line 278
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 275
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "S"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static locationValueToString(D)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 234
    const-string v3, ""

    .line 241
    .local v3, "result":Ljava/lang/String;
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 242
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 243
    .local v1, "degrees":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    int-to-double v6, v1

    sub-double/2addr p0, v6

    .line 247
    mul-double/2addr p0, v8

    .line 250
    new-instance v0, Ljava/lang/Double;

    .end local v0    # "d":Ljava/lang/Double;
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 251
    .restart local v0    # "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 252
    .local v2, "minutes":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    int-to-double v6, v2

    sub-double/2addr p0, v6

    .line 256
    mul-double/2addr p0, v8

    .line 259
    new-instance v0, Ljava/lang/Double;

    .end local v0    # "d":Ljava/lang/Double;
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 260
    .restart local v0    # "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 261
    .local v4, "seconds":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    return-object v3
.end method

.method public static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 287
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-lez v1, :cond_0

    .line 288
    const-string v0, "E"

    .line 293
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 290
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "W"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static saveAsFile([BLjava/lang/String;)V
    .locals 4
    .param p0, "image"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "fileStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 113
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "saveAsFile error : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 113
    const/4 v1, 0x0

    .line 114
    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 113
    const/4 v1, 0x0

    throw v2
.end method

.method public static setExifData(Ljava/lang/String;Landroid/location/Location;I)V
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "orientation"    # I

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "exif":Landroid/media/ExifInterface;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    .local v0, "dateTaken":J
    const-string v10, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v10, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "nowTime":Ljava/lang/String;
    const-string v10, "DateTime"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v10, "DateTimeOriginal"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v10, "DateTimeDigitized"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v10, "Make"

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v10, "Model"

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v9, 0x1

    .line 143
    .local v9, "orientationRotate":I
    sparse-switch p2, :sswitch_data_0

    .line 154
    const/4 v9, 0x1

    .line 157
    :goto_1
    const-string v10, "Orientation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 162
    .local v4, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 164
    .local v6, "longitude":D
    const-string v10, "GPSLatitude"

    invoke-static {v4, v5}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v10, "GPSLatitudeRef"

    invoke-static {v4, v5}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v10, "GPSLongitude"

    invoke-static {v6, v7}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v10, "GPSLongitudeRef"

    invoke-static {v6, v7}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :cond_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 172
    .end local v0    # "dateTaken":J
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v8    # "nowTime":Ljava/lang/String;
    .end local v9    # "orientationRotate":I
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 145
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "dateTaken":J
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v8    # "nowTime":Ljava/lang/String;
    .restart local v9    # "orientationRotate":I
    :sswitch_0
    const/4 v9, 0x6

    .line 146
    goto :goto_1

    .line 148
    :sswitch_1
    const/4 v9, 0x3

    .line 149
    goto :goto_1

    .line 151
    :sswitch_2
    const/16 v9, 0x8

    .line 152
    goto :goto_1

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static setInExif(Ljava/lang/String;Landroid/location/Location;)V
    .locals 22
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 190
    .local v4, "dateTaken":J
    const-string v18, "yyyy:MM:dd kk:mm:ss"

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 193
    .local v13, "nowTime":Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 194
    .local v6, "exif":Landroid/media/ExifInterface;
    const-string v18, "DateTime"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v18, "DateTimeOriginal"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v18, "DateTimeDigitized"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v18, "Make"

    sget-object v19, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v18, "Model"

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_1

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 203
    .local v10, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 204
    .local v14, "longitude":D
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy:MM:dd"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "dateStamp":Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v18, "kk/1,mm/1,ss/1"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    .local v16, "timeStamp":Ljava/text/SimpleDateFormat;
    const-string v18, "UTC"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    .line 207
    .local v17, "tzUTC":Ljava/util/TimeZone;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 208
    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 210
    invoke-static {v10, v11}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "lat_str":Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "lat_str_ref":Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, "lon_str":Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "lon_str_ref":Ljava/lang/String;
    const-string v18, "GPSDateStamp"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v18, "GPSTimeStamp"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v18, "GPSLatitude"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v18, "GPSLatitudeRef"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v18, "GPSLongitude"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v18, "GPSLongitudeRef"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v2    # "dateStamp":Ljava/text/SimpleDateFormat;
    .end local v7    # "lat_str":Ljava/lang/String;
    .end local v8    # "lat_str_ref":Ljava/lang/String;
    .end local v9    # "lon_str":Ljava/lang/String;
    .end local v10    # "latitude":D
    .end local v12    # "lon_str_ref":Ljava/lang/String;
    .end local v14    # "longitude":D
    .end local v16    # "timeStamp":Ljava/text/SimpleDateFormat;
    .end local v17    # "tzUTC":Ljava/util/TimeZone;
    :cond_1
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 224
    .end local v6    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
