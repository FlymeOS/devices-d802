.class Lcom/android/server/display/MaskFade;
.super Lcom/android/server/display/ColorFadeEx;
.source "MaskFade.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DZNY_MIN_SCALE:F = 0.15f

.field private static final DZNY_MIN_SCALE_COVER:F = 0.88f

.field private static final DZNY_PIVOT_CENTER:F = 0.5f

.field private static final DZNY_PIVOT_HEAD:F = 0.5917969f

.field private static final SCALE_DOWN_LIMIT:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "MaskFade"


# instance fields
.field private mMaskBuffer:[I

.field private mMaskHandle:I

.field private mMaskScaleHandle:I

.field private final mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mMaskTexCoordIndex:I

.field private mMaskTexture:[I

.field private mMinScale:F

.field private mOpacityHandle:I

.field private mPMatrixHandle:I

.field private mScalePivotHandle:I

.field private mScalePivotX:F

.field private mScalePivotY:F

.field private mTMatrixHandle:I

.field private mTexCoordIndex:I

.field private mTextureHandle:I

.field private mVertexIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFadeEx;-><init>(I)V

    .line 28
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/android/server/display/MaskFade;->mMinScale:F

    .line 30
    iput v2, p0, Lcom/android/server/display/MaskFade;->mVertexIndex:I

    .line 31
    iput v2, p0, Lcom/android/server/display/MaskFade;->mTexCoordIndex:I

    .line 32
    iput v2, p0, Lcom/android/server/display/MaskFade;->mPMatrixHandle:I

    .line 33
    iput v2, p0, Lcom/android/server/display/MaskFade;->mTMatrixHandle:I

    .line 34
    iput v2, p0, Lcom/android/server/display/MaskFade;->mTextureHandle:I

    .line 35
    iput v2, p0, Lcom/android/server/display/MaskFade;->mOpacityHandle:I

    .line 37
    iput v2, p0, Lcom/android/server/display/MaskFade;->mMaskHandle:I

    .line 38
    iput v2, p0, Lcom/android/server/display/MaskFade;->mMaskScaleHandle:I

    .line 39
    iput v2, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordIndex:I

    .line 40
    iput v2, p0, Lcom/android/server/display/MaskFade;->mScalePivotHandle:I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskBuffer:[I

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    .line 48
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/display/MaskFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 52
    iput v2, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    .line 53
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 54
    return-void
.end method

.method private destroyMaskTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 178
    const-string v0, "glDeleteTextures"

    invoke-virtual {p0, v0}, Lcom/android/server/display/MaskFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 181
    return-void
.end method

.method private initMaskTexture(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x46180400    # 9729.0f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    aget v2, v2, v1

    if-gez v2, :cond_1

    .line 136
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 137
    .local v6, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v2, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 139
    const/4 v3, 0x0

    .line 141
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/lge/internal/R$drawable;->mask_fade_mask:I

    invoke-static {v2, v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_0

    .line 145
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 147
    iget-object v2, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 148
    const/16 v2, 0x1906

    const/16 v4, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 150
    const/16 v2, 0x2802

    const v4, 0x812f

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 152
    const/16 v2, 0x2803

    const v4, 0x812f

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 154
    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 156
    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 159
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 161
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/server/display/MaskFade;->mDisplayHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/display/MaskFade;->mDisplayWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v0, v8

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, v0, v2

    .line 164
    .local v7, "ratio":F
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 165
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    add-float v2, v8, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 166
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 167
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    neg-float v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 168
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    neg-float v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 171
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    add-float v2, v8, v7

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 173
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "ratio":F
    :cond_1
    return-void
.end method


# virtual methods
.method protected destroyGLBuffers()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/server/display/ColorFadeEx;->destroyGLBuffers()V

    .line 114
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/display/MaskFade;->mMaskBuffer:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 115
    return-void
.end method

.method protected destroyScreenshotTexture()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/display/MaskFade;->destroyMaskTexture()V

    .line 108
    invoke-super {p0}, Lcom/android/server/display/ColorFadeEx;->destroyScreenshotTexture()V

    .line 109
    return-void
.end method

.method protected drawScreenOffAnimation(F)V
    .locals 11
    .param p1, "value"    # F

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v10, 0x1

    const v9, 0x8892

    const/4 v3, 0x0

    .line 185
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 187
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/util/FloatMath;->pow(FF)F

    move-result v0

    neg-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v6, v0, v4

    .line 189
    .local v6, "opacity":F
    iget v0, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 192
    iget v0, p0, Lcom/android/server/display/MaskFade;->mPMatrixHandle:I

    iget-object v4, p0, Lcom/android/server/display/MaskFade;->mProjMatrix:[F

    invoke-static {v0, v10, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 193
    iget v0, p0, Lcom/android/server/display/MaskFade;->mTMatrixHandle:I

    iget-object v4, p0, Lcom/android/server/display/MaskFade;->mTexMatrix:[F

    invoke-static {v0, v10, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 195
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, p1

    iget v4, p0, Lcom/android/server/display/MaskFade;->mMinScale:F

    add-float v7, v0, v4

    .line 196
    .local v7, "scale":F
    iget v0, p0, Lcom/android/server/display/MaskFade;->mMaskScaleHandle:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 197
    iget v0, p0, Lcom/android/server/display/MaskFade;->mOpacityHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 198
    iget v0, p0, Lcom/android/server/display/MaskFade;->mScalePivotHandle:I

    iget v4, p0, Lcom/android/server/display/MaskFade;->mScalePivotX:F

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MaskFade;->mScalePivotY:F

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 201
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 202
    const v0, 0x8d65

    iget-object v4, p0, Lcom/android/server/display/MaskFade;->mTexNames:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 204
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 205
    const/16 v0, 0xde1

    iget-object v4, p0, Lcom/android/server/display/MaskFade;->mMaskTexture:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 208
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mGLBuffers:[I

    aget v0, v0, v3

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 209
    iget v0, p0, Lcom/android/server/display/MaskFade;->mVertexIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 210
    iget v0, p0, Lcom/android/server/display/MaskFade;->mVertexIndex:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 212
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mGLBuffers:[I

    aget v0, v0, v10

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 213
    iget v0, p0, Lcom/android/server/display/MaskFade;->mTexCoordIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 214
    iget v0, p0, Lcom/android/server/display/MaskFade;->mTexCoordIndex:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 216
    iget-object v0, p0, Lcom/android/server/display/MaskFade;->mMaskBuffer:[I

    aget v0, v0, v3

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 217
    iget v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 218
    iget v0, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordIndex:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 220
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 222
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 223
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 224
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 226
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 227
    return-void
.end method

.method protected initGLBuffers()Z
    .locals 6

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/server/display/ColorFadeEx;->initGLBuffers()Z

    move-result v0

    .line 122
    .local v0, "ret":Z
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/MaskFade;->mMaskBuffer:[I

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 125
    iget-object v1, p0, Lcom/android/server/display/MaskFade;->mMaskBuffer:[I

    aget v1, v1, v4

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 126
    iget-object v1, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    const v3, 0x88e4

    invoke-static {v5, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 129
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 131
    return v0
.end method

.method protected initGLShaders(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 59
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 60
    sget v5, Lcom/lge/internal/R$raw;->mask_fade_vs:I

    const v6, 0x8b31

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/display/MaskFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 61
    .local v1, "vshader":I
    sget v5, Lcom/lge/internal/R$raw;->mask_fade_fs:I

    const v6, 0x8b30

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/display/MaskFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 62
    .local v0, "fshader":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 102
    .end local v0    # "fshader":I
    .end local v1    # "vshader":I
    :cond_0
    :goto_0
    return v2

    .line 66
    .restart local v0    # "fshader":I
    .restart local v1    # "vshader":I
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    .line 68
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 69
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 70
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 71
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 72
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 74
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 76
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "aPosition"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mVertexIndex:I

    .line 77
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "aTexCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mTexCoordIndex:I

    .line 78
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "aMaskTexCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mMaskTexCoordIndex:I

    .line 80
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "uPMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mPMatrixHandle:I

    .line 81
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "uTMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mTMatrixHandle:I

    .line 83
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "uTexture"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mTextureHandle:I

    .line 84
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "uMask"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mMaskHandle:I

    .line 86
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "uMaskScale"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mMaskScaleHandle:I

    .line 87
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "uOpacity"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mOpacityHandle:I

    .line 88
    iget v5, p0, Lcom/android/server/display/MaskFade;->mProgram:I

    const-string v6, "uScalePivot"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/MaskFade;->mScalePivotHandle:I

    .line 90
    iget v5, p0, Lcom/android/server/display/MaskFade;->mTextureHandle:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 91
    iget v5, p0, Lcom/android/server/display/MaskFade;->mMaskHandle:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 93
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 96
    .end local v0    # "fshader":I
    .end local v1    # "vshader":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/display/MaskFade;->initMaskTexture(Landroid/content/Context;)V

    .line 98
    iget-boolean v2, p0, Lcom/android/server/display/MaskFade;->mIsQuickWindowCovered:Z

    if-eqz v2, :cond_3

    const v2, 0x3f6147ae    # 0.88f

    :goto_1
    iput v2, p0, Lcom/android/server/display/MaskFade;->mMinScale:F

    .line 99
    iput v3, p0, Lcom/android/server/display/MaskFade;->mScalePivotX:F

    .line 100
    iget-boolean v2, p0, Lcom/android/server/display/MaskFade;->mIsQuickWindowCovered:Z

    if-eqz v2, :cond_4

    const v2, 0x3f178000

    :goto_2
    iput v2, p0, Lcom/android/server/display/MaskFade;->mScalePivotY:F

    move v2, v4

    .line 102
    goto/16 :goto_0

    .line 98
    :cond_3
    const v2, 0x3e19999a    # 0.15f

    goto :goto_1

    :cond_4
    move v2, v3

    .line 100
    goto :goto_2
.end method
