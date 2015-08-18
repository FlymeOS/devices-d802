.class public Lcom/lge/gles/GLESShader;
.super Ljava/lang/Object;
.source "GLESShader.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESShader"


# instance fields
.field private mColorIndex:I

.field private final mContext:Landroid/content/Context;

.field private mFragmentShaderID:I

.field private mFragmentShaderSource:Ljava/lang/String;

.field private mNormalIndex:I

.field private mProgram:I

.field private final mRes:Landroid/content/res/Resources;

.field private mTexCoordIndex:I

.field private mUseResourceID:Z

.field private mVertexIndex:I

.field private mVertexShaderID:I

.field private mVertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "q3d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    .line 26
    iput v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    .line 27
    iput v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    .line 28
    iput v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    .line 30
    iput-object v1, p0, Lcom/lge/gles/GLESShader;->mVertexShaderSource:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderSource:Ljava/lang/String;

    .line 33
    iput v0, p0, Lcom/lge/gles/GLESShader;->mVertexShaderID:I

    .line 34
    iput v0, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderID:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    .line 48
    iput-object p1, p0, Lcom/lge/gles/GLESShader;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/gles/GLESShader;->mRes:Landroid/content/res/Resources;

    .line 51
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    .line 52
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    if-nez v0, :cond_0

    .line 53
    const-string v0, "quilt GLESShader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateProgram() error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateProgram() error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method private compileAndLink()Z
    .locals 6

    .prologue
    const v5, 0x8b31

    const v4, 0x8b30

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "res":Z
    iget-boolean v3, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    if-ne v3, v2, :cond_3

    .line 160
    iget v3, p0, Lcom/lge/gles/GLESShader;->mVertexShaderID:I

    invoke-direct {p0, v5, v3}, Lcom/lge/gles/GLESShader;->setShaderFromResource(II)Z

    move-result v0

    .line 161
    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    iget v3, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderID:I

    invoke-direct {p0, v4, v3}, Lcom/lge/gles/GLESShader;->setShaderFromResource(II)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->linkProgram()Z

    move-result v0

    .line 182
    if-eqz v0, :cond_0

    move v1, v2

    .line 186
    goto :goto_0

    .line 170
    :cond_3
    iget-object v3, p0, Lcom/lge/gles/GLESShader;->mVertexShaderSource:Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lcom/lge/gles/GLESShader;->setShaderFromString(ILjava/lang/String;)Z

    move-result v0

    .line 171
    if-eqz v0, :cond_0

    .line 175
    iget-object v3, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/lge/gles/GLESShader;->setShaderFromString(ILjava/lang/String;)Z

    move-result v0

    .line 176
    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private getShaderCompileLog(II)Ljava/lang/String;
    .locals 4
    .param p1, "shader"    # I
    .param p2, "shaderType"    # I

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "log":Ljava/lang/String;
    const-string v1, "quilt GLESShader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0, p1}, Lcom/lge/gles/GLESShader;->nGetShaderCompileLog(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    return-object v0
.end method

.method private getShaderFromReosurce(I)Ljava/lang/String;
    .locals 12
    .param p1, "resourceID"    # I

    .prologue
    .line 462
    const/4 v5, 0x0

    .line 463
    .local v5, "shader":Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/gles/GLESShader;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 466
    .local v4, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    :try_start_0
    new-array v7, v9, [B

    .line 467
    .local v7, "str":[B
    const/4 v8, 0x0

    .line 469
    .local v8, "strLength":I
    :goto_0
    array-length v9, v7

    sub-int v1, v9, v8

    .line 470
    .local v1, "bytesLeft":I
    if-nez v1, :cond_0

    .line 471
    array-length v9, v7

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 472
    .local v0, "buf2":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 473
    move-object v7, v0

    .line 474
    array-length v9, v7

    sub-int v1, v9, v8

    .line 476
    .end local v0    # "buf2":[B
    :cond_0
    invoke-virtual {v4, v7, v8, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 477
    .local v2, "bytesRead":I
    if-gtz v2, :cond_1

    .line 483
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    :try_start_2
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v9, v8, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5    # "shader":Ljava/lang/String;
    .local v6, "shader":Ljava/lang/String;
    move-object v5, v6

    .line 495
    .end local v6    # "shader":Ljava/lang/String;
    .restart local v5    # "shader":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 480
    :cond_1
    add-int/2addr v8, v2

    .line 481
    goto :goto_0

    .line 483
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v7    # "str":[B
    .end local v8    # "strLength":I
    :catchall_0
    move-exception v9

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 485
    :catch_0
    move-exception v3

    .line 486
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9

    .line 491
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bytesLeft":I
    .restart local v2    # "bytesRead":I
    .restart local v7    # "str":[B
    .restart local v8    # "strLength":I
    :catch_1
    move-exception v3

    .line 492
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "Renderscript shader creation"

    const-string v10, "Could not decode shader string"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private linkProgram()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 402
    new-array v0, v4, [I

    .line 403
    .local v0, "linkStatus":[I
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 404
    aget v1, v0, v3

    if-eq v1, v4, :cond_0

    .line 405
    const-string v1, "quilt GLESShader"

    const-string v2, "Could not link program: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v1, "quilt GLESShader"

    iget v2, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 408
    iput v3, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    .line 410
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "glLinkProgram() Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_0
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 415
    return v4
.end method

.method private native nGetShaderCompileLog(I)Ljava/lang/String;
.end method

.method private native nLoadProgramBinary(IILjava/lang/String;)I
.end method

.method private native nRetrieveProgramBinary(ILjava/lang/String;)I
.end method

.method private setShaderFromResource(II)Z
    .locals 7
    .param p1, "shaderType"    # I
    .param p2, "resourceID"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 438
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 439
    .local v2, "shader":I
    if-eqz v2, :cond_0

    .line 440
    invoke-direct {p0, p2}, Lcom/lge/gles/GLESShader;->getShaderFromReosurce(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "source":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 442
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 443
    new-array v0, v6, [I

    .line 444
    .local v0, "compiled":[I
    const v4, 0x8b81

    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 445
    aget v4, v0, v5

    if-nez v4, :cond_0

    .line 446
    const-string v4, "quilt GLESShader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not compile shader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0, v2, p1}, Lcom/lge/gles/GLESShader;->getShaderCompileLog(II)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "log":Ljava/lang/String;
    const-string v4, "quilt GLESShader"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 451
    const/4 v2, 0x0

    .line 452
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "glShaderSource() Error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    .end local v0    # "compiled":[I
    .end local v1    # "log":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 456
    return v6
.end method

.method private setShaderFromString(ILjava/lang/String;)Z
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 420
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 421
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 422
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 423
    new-array v0, v4, [I

    .line 424
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 425
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 426
    const-string v2, "quilt GLESShader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v2, "quilt GLESShader"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 429
    const/4 v1, 0x0

    .line 430
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "glCompileShader() Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    .end local v0    # "compiled":[I
    :cond_0
    iget v2, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 434
    return v4
.end method


# virtual methods
.method public getAttribLocation(Ljava/lang/String;)I
    .locals 2
    .param p1, "attribName"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v0, -0x1

    .line 364
    .local v0, "index":I
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 370
    return v0
.end method

.method public getColorAttribIndex()I
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 332
    const-string v0, "quilt GLESShader"

    const-string v1, "getColorAttribIndex() mColorIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    return v0
.end method

.method public getNormalAttribIndex()I
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 301
    const-string v0, "quilt GLESShader"

    const-string v1, "getNormalAttribIndex() mNormalIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    return v0
.end method

.method public getProgram()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    return v0
.end method

.method public getTexCoordAttribIndex()I
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 270
    const-string v0, "quilt GLESShader"

    const-string v1, "getTexCoordAttribIndex() mTexCoordIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    return v0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 2
    .param p1, "uniforomName"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, -0x1

    .line 346
    .local v0, "index":I
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 352
    return v0
.end method

.method public getVertexAttribIndex()I
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 238
    const-string v0, "quilt GLESShader"

    const-string v1, "getVertexAttribIndex() mVertexIndex is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    return v0
.end method

.method public load()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->compileAndLink()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "res":Z
    const/4 v1, 0x1

    .line 124
    .local v1, "needToCompile":Z
    sget-boolean v3, Lcom/lge/gles/GLESConfig;->sUseBinary:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->compileAndLink()Z

    move-result v3

    .line 153
    :goto_0
    return v3

    .line 128
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/lge/gles/GLESUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 129
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/lge/gles/GLESShader;->loadProgramBinary(Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "errorNumber":I
    if-nez v0, :cond_4

    .line 132
    const-string v3, "quilt GLESShader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Link Error file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Compile again"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "errorNumber":I
    :cond_2
    :goto_1
    if-ne v1, v6, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/lge/gles/GLESShader;->compileAndLink()Z

    move-result v2

    .line 149
    invoke-static {p1}, Lcom/lge/gles/GLESUtils;->deleteFile(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/lge/gles/GLESShader;->retrieveProgramBinary(Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 153
    goto :goto_0

    .line 134
    .restart local v0    # "errorNumber":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public loadProgramBinary(Ljava/lang/String;I)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "binaryFormat"    # I

    .prologue
    .line 397
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-direct {p0, v0, p2, p1}, Lcom/lge/gles/GLESShader;->nLoadProgramBinary(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public retrieveProgramBinary(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 380
    iget v1, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-direct {p0, v1, p1}, Lcom/lge/gles/GLESShader;->nRetrieveProgramBinary(ILjava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "binaryFormat":I
    return-void
.end method

.method public setColorAttribIndex(Ljava/lang/String;)V
    .locals 1
    .param p1, "colorAttribName"    # Ljava/lang/String;

    .prologue
    .line 318
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mColorIndex:I

    .line 319
    return-void
.end method

.method public setNormalAttribIndex(Ljava/lang/String;)V
    .locals 1
    .param p1, "normalAttribName"    # Ljava/lang/String;

    .prologue
    .line 287
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mNormalIndex:I

    .line 288
    return-void
.end method

.method public setShadersFromResource(II)Z
    .locals 1
    .param p1, "vertexShaderID"    # I
    .param p2, "fragmentShaderID"    # I

    .prologue
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    .line 98
    iput p1, p0, Lcom/lge/gles/GLESShader;->mVertexShaderID:I

    .line 99
    iput p2, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderID:I

    .line 101
    return v0
.end method

.method public setShadersFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gles/GLESShader;->mUseResourceID:Z

    .line 77
    iput-object p1, p0, Lcom/lge/gles/GLESShader;->mVertexShaderSource:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/lge/gles/GLESShader;->mFragmentShaderSource:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public setTexCoordAttribIndex(Ljava/lang/String;)V
    .locals 1
    .param p1, "texCoordAttribName"    # Ljava/lang/String;

    .prologue
    .line 256
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mTexCoordIndex:I

    .line 257
    return-void
.end method

.method public setVertexAttribIndex(Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexAttribName"    # Ljava/lang/String;

    .prologue
    .line 224
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/gles/GLESShader;->mVertexIndex:I

    .line 225
    return-void
.end method

.method public useProgram()V
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/lge/gles/GLESShader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 211
    return-void
.end method
