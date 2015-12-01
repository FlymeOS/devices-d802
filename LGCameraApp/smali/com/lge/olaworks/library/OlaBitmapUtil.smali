.class public Lcom/lge/olaworks/library/OlaBitmapUtil;
.super Ljava/lang/Object;
.source "OlaBitmapUtil.java"


# static fields
.field public static final IMAGE_TYPE_JPEG:I = 0x0

.field public static final IMAGE_TYPE_JPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "cvBitmap"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "left"    # Landroid/graphics/Bitmap;
    .param p1, "right"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 182
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 184
    .local v1, "height":I
    mul-int/lit8 v4, v3, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    .local v2, "retBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v4, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 188
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    mul-int/lit8 v6, v3, 0x2

    invoke-direct {v5, v3, v7, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v4, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    return-object v2
.end method

.method public static SplitBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 164
    const/4 v4, 0x2

    new-array v2, v4, [Landroid/graphics/Bitmap;

    .line 165
    .local v2, "retBitmap":[Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 166
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 168
    .local v1, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v6

    .line 169
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v7

    .line 171
    new-instance v0, Landroid/graphics/Canvas;

    aget-object v4, v2, v6

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v4, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 173
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    aget-object v4, v2, v7

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    mul-int/lit8 v5, v3, 0x2

    invoke-direct {v4, v3, v6, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v4, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 176
    return-object v2
.end method

.method public static convert(Landroid/graphics/Bitmap;Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    .locals 4
    .param p0, "dst"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    .line 305
    :try_start_0
    invoke-static {p0, p1}, Lcom/lge/olaworks/jni/OlaAndroidBitmapJNI;->convert(Landroid/graphics/Bitmap;Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 311
    .local v1, "ret":I
    :goto_0
    return v1

    .line 306
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cvBitmap"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v1, -0x1

    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public static convert(Lcom/lge/olaworks/datastruct/JOlaBitmap;Landroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "dst"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 318
    .local v1, "ret":I
    :try_start_0
    invoke-static {p0, p1}, Lcom/lge/olaworks/jni/OlaAndroidBitmapJNI;->convert(Lcom/lge/olaworks/datastruct/JOlaBitmap;Landroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cvBitmap"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static drawFixedRatio(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 16
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 86
    .local v3, "bound_width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 88
    .local v2, "bound_height":I
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    .local v10, "src_rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 91
    .local v5, "dst_rect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-double v12, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-double v14, v11

    div-double v8, v12, v14

    .line 92
    .local v8, "src_ratio":D
    int-to-double v12, v3

    int-to-double v14, v2

    div-double v6, v12, v14

    .line 94
    .local v6, "dst_ratio":D
    cmpg-double v11, v8, v6

    if-gez v11, :cond_1

    .line 95
    int-to-double v12, v2

    mul-double/2addr v12, v8

    double-to-int v11, v12

    sub-int v4, v3, v11

    .line 96
    .local v4, "diff":I
    iget v11, v5, Landroid/graphics/Rect;->left:I

    div-int/lit8 v12, v4, 0x2

    add-int/2addr v11, v12

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 97
    iget v11, v5, Landroid/graphics/Rect;->right:I

    div-int/lit8 v12, v4, 0x2

    sub-int/2addr v11, v12

    iput v11, v5, Landroid/graphics/Rect;->right:I

    .line 104
    .end local v4    # "diff":I
    :cond_0
    :goto_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 105
    return-void

    .line 98
    :cond_1
    cmpl-double v11, v8, v6

    if-lez v11, :cond_0

    .line 99
    int-to-double v12, v3

    mul-double/2addr v12, v8

    double-to-int v11, v12

    sub-int v4, v2, v11

    .line 100
    .restart local v4    # "diff":I
    iget v11, v5, Landroid/graphics/Rect;->top:I

    div-int/lit8 v12, v4, 0x2

    add-int/2addr v11, v12

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 101
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v12, v4, 0x2

    sub-int/2addr v11, v12

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public static getBitmapOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 292
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 293
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 295
    return-object v0
.end method

.method public static hflip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    move-object v7, p0

    .line 45
    .local v7, "result":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 46
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .local v5, "mat":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 49
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 54
    .end local v5    # "mat":Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    return-object v7

    .line 50
    .restart local v5    # "mat":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static loadBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    :goto_0
    if-nez v2, :cond_0

    .line 148
    const-string v4, "cvBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mInputStream == null, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 158
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "image":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 259
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static loadBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 252
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static loadBitmap([B)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "jpegData"    # [B

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/olaworks/library/OlaBitmapUtil;->loadBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "sampleSize"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 219
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 220
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 221
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 223
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 245
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 228
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 229
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 235
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 236
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 237
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 243
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "cvBitmap"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static loadBitmap(Landroid/content/Context;Landroid/net/Uri;I)[Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "image_type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, "retBitmaps":[Landroid/graphics/Bitmap;
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v2, v1

    .line 137
    :goto_1
    return-object v2

    .line 113
    :pswitch_0
    new-array v1, v5, [Landroid/graphics/Bitmap;

    .line 114
    invoke-static {p0, p1}, Lcom/lge/olaworks/library/OlaBitmapUtil;->loadBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v7

    .line 115
    aget-object v3, v1, v7

    if-nez v3, :cond_0

    .line 116
    const-string v3, "cvBitmap"

    const-string v4, "uri(%s) is empty"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    :pswitch_1
    invoke-static {p0, p1}, Lcom/lge/olaworks/library/OlaBitmapUtil;->loadBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "org_source":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 126
    const-string v3, "cvBitmap"

    const-string v4, "uri(%s) is empty"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {v0}, Lcom/lge/olaworks/library/OlaBitmapUtil;->SplitBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static mirror(Landroid/graphics/Bitmap;ZZ)I
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "x_axes"    # Z
    .param p2, "y_axes"    # Z

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 344
    .local v1, "ret":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/lge/olaworks/define/Ola_ReturnType;->success(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/lge/olaworks/jni/OlaAndroidBitmapJNI;->mirrorXBitmap(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 345
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v1}, Lcom/lge/olaworks/define/Ola_ReturnType;->success(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/lge/olaworks/jni/OlaAndroidBitmapJNI;->mirrorYBitmap(Landroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 351
    :cond_1
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cvBitmap"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static resizeFixedRatio(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixel_size"    # I

    .prologue
    const/4 v10, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, "retBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 66
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 68
    .local v1, "height":I
    mul-int v6, v5, v1

    if-ge p1, v6, :cond_0

    .line 69
    int-to-double v6, p1

    mul-int v8, v5, v1

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 71
    .local v2, "ratio":D
    int-to-double v6, v5

    mul-double/2addr v6, v2

    double-to-int v5, v6

    .line 72
    int-to-double v6, v1

    mul-double/2addr v6, v2

    double-to-int v1, v6

    .line 73
    and-int/lit8 v5, v5, -0x2

    .line 74
    and-int/lit8 v1, v1, -0x2

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 77
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    invoke-virtual {v0, p0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "ratio":D
    :cond_0
    return-object v4
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 28
    move-object v7, p0

    .line 30
    .local v7, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 31
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    .local v5, "mat":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 39
    .end local v5    # "mat":Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    return-object v7

    .line 35
    .restart local v5    # "mat":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static rotateYuv(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    .locals 1
    .param p0, "olaBitmap"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    .line 355
    const/4 v0, -0x2

    return v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v4, 0x0

    .line 267
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 269
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    const/4 v6, 0x0

    move-object v4, v5

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    return v6

    .line 273
    :catch_0
    move-exception v2

    .line 274
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v6, "cvBitmap"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    const/16 v6, -0x65

    goto :goto_0

    .line 276
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 277
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const-string v6, "cvBitmap"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    const/16 v6, -0x64

    goto :goto_0

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    throw v6

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 276
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 273
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static zoomIn(Lcom/lge/olaworks/datastruct/JOlaBitmap;Lcom/lge/olaworks/datastruct/JOlaBitmap;F)I
    .locals 4
    .param p0, "dst"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;
    .param p1, "src"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;
    .param p2, "zoomRatio"    # F

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 331
    .local v1, "ret":I
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/lge/olaworks/jni/OlaAndroidBitmapJNI;->zoomInJOlaBitmap(Lcom/lge/olaworks/datastruct/JOlaBitmap;Lcom/lge/olaworks/datastruct/JOlaBitmap;F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 337
    :goto_0
    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cvBitmap"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, -0x1

    goto :goto_0
.end method
