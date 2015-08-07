.class Lcom/android/server/display/CircleAnimation;
.super Lcom/android/server/display/ColorFadeEx;
.source "CircleAnimation.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCK_ANIMATION_RESOLUTION:I = 0x28

.field private static final TAG:Ljava/lang/String; = "CircleAnimation"


# instance fields
.field private mCircleTex:Ljava/nio/FloatBuffer;

.field private mCircleVertices:Ljava/nio/FloatBuffer;

.field private mCircleVerticesOrig:Ljava/nio/FloatBuffer;

.field private mHalfHeight:F

.field private mHalfWidth:F

.field private final mRatioS:F

.field private final mRatioT:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFadeEx;-><init>(I)V

    .line 21
    iput v0, p0, Lcom/android/server/display/CircleAnimation;->mRatioS:F

    iput v0, p0, Lcom/android/server/display/CircleAnimation;->mRatioT:F

    .line 30
    return-void
.end method

.method private calcCoords(F)V
    .locals 10
    .param p1, "normal"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x28

    if-gt v0, v7, :cond_0

    .line 249
    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v4, v7, 0x2

    .line 250
    .local v4, "xIdx":I
    add-int/lit8 v6, v4, 0x1

    .line 252
    .local v6, "yIdx":I
    iget-object v7, p0, Lcom/android/server/display/CircleAnimation;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    mul-float v3, v7, p1

    .line 253
    .local v3, "x":F
    iget-object v7, p0, Lcom/android/server/display/CircleAnimation;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    mul-float v5, v7, p1

    .line 254
    .local v5, "y":F
    iget v7, p0, Lcom/android/server/display/CircleAnimation;->mHalfWidth:F

    add-float/2addr v7, v3

    iget v8, p0, Lcom/android/server/display/CircleAnimation;->mDisplayWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v1, v7, v9

    .line 255
    .local v1, "s":F
    iget v7, p0, Lcom/android/server/display/CircleAnimation;->mHalfHeight:F

    add-float/2addr v7, v5

    iget v8, p0, Lcom/android/server/display/CircleAnimation;->mDisplayHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v2, v7, v9

    .line 257
    .local v2, "t":F
    iget-object v7, p0, Lcom/android/server/display/CircleAnimation;->mCircleVertices:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/android/server/display/CircleAnimation;->mHalfWidth:F

    add-float/2addr v8, v3

    invoke-virtual {v7, v4, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 258
    iget-object v7, p0, Lcom/android/server/display/CircleAnimation;->mCircleVertices:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/android/server/display/CircleAnimation;->mHalfHeight:F

    add-float/2addr v8, v5

    invoke-virtual {v7, v6, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 260
    iget-object v7, p0, Lcom/android/server/display/CircleAnimation;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v4, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 261
    iget-object v7, p0, Lcom/android/server/display/CircleAnimation;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "s":F
    .end local v2    # "t":F
    .end local v3    # "x":F
    .end local v4    # "xIdx":I
    .end local v5    # "y":F
    .end local v6    # "yIdx":I
    :cond_0
    return-void
.end method

.method private drawCircleLcdOffAnimation(F)V
    .locals 9
    .param p1, "stretch"    # F

    .prologue
    const/16 v8, 0x2601

    const/16 v7, 0x1406

    const/4 v6, 0x2

    const/4 v5, 0x0

    const v4, 0x8d65

    .line 208
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/server/display/CircleAnimation;->easeInEaseOut(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 213
    .local v0, "normal":F
    invoke-direct {p0, v0}, Lcom/android/server/display/CircleAnimation;->calcCoords(F)V

    .line 215
    iget-object v1, p0, Lcom/android/server/display/CircleAnimation;->mCircleVertices:Ljava/nio/FloatBuffer;

    invoke-static {v6, v7, v5, v1}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 216
    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 219
    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 220
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 222
    iget-object v1, p0, Lcom/android/server/display/CircleAnimation;->mTexNames:[I

    aget v1, v1, v5

    invoke-static {v4, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 223
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 224
    const/16 v1, 0x2800

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 225
    const/16 v1, 0x2801

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 226
    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 227
    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 228
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 230
    iget-object v1, p0, Lcom/android/server/display/CircleAnimation;->mCircleTex:Ljava/nio/FloatBuffer;

    invoke-static {v6, v7, v5, v1}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 231
    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 233
    const/4 v1, 0x6

    const/16 v2, 0x2a

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 235
    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 236
    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 237
    return-void
.end method

.method private easeInEaseOut(F)F
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 240
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected captureScreenshotTextureAndSetViewport()Z
    .locals 17

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/CircleAnimation;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 204
    :goto_0
    return v1

    .line 129
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/CircleAnimation;->mTexNamesGenerated:Z

    if-nez v1, :cond_2

    .line 130
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/CircleAnimation;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 131
    const-string v1, "glGenTextures"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/display/CircleAnimation;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x0

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/CircleAnimation;->mTexNamesGenerated:Z

    .line 137
    :cond_2
    new-instance v12, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mTexNames:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v12, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 138
    .local v12, "st":Landroid/graphics/SurfaceTexture;
    new-instance v11, Landroid/view/Surface;

    invoke-direct {v11, v12}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .local v11, "s":Landroid/view/Surface;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v11}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :try_start_3
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    .line 146
    invoke-virtual {v12}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mTexMatrix:[F

    invoke-virtual {v12, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 148
    invoke-virtual {v12}, Landroid/graphics/SurfaceTexture;->release()V

    .line 156
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/display/CircleAnimation;->mDisplayWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/display/CircleAnimation;->mHalfWidth:F

    .line 157
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/display/CircleAnimation;->mDisplayHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/display/CircleAnimation;->mHalfHeight:F

    .line 158
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/display/CircleAnimation;->mHalfWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/CircleAnimation;->mHalfWidth:F

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/CircleAnimation;->mHalfHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/CircleAnimation;->mHalfHeight:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v10

    .line 159
    .local v10, "maxRadius":F
    const v9, 0x3e20d97c

    .line 161
    .local v9, "mAngleUnit":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/CircleAnimation;->mHalfWidth:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/CircleAnimation;->mHalfHeight:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleTex:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleTex:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v1, 0x28

    if-gt v7, v1, :cond_4

    .line 176
    int-to-float v1, v7

    mul-float v8, v9, v1

    .line 177
    .local v8, "mAngle":F
    const/16 v1, 0x28

    if-ne v7, v1, :cond_3

    .line 178
    const/4 v8, 0x0

    .line 181
    :cond_3
    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float v13, v10, v1

    .line 182
    .local v13, "x":F
    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float v15, v10, v1

    .line 184
    .local v15, "y":F
    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v14, v1, 0x2

    .line 185
    .local v14, "xIdx":I
    add-int/lit8 v16, v14, 0x1

    .line 187
    .local v16, "yIdx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v14, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v15}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 143
    .end local v7    # "i":I
    .end local v8    # "mAngle":F
    .end local v9    # "mAngleUnit":F
    .end local v10    # "maxRadius":F
    .end local v13    # "x":F
    .end local v14    # "xIdx":I
    .end local v15    # "y":F
    .end local v16    # "yIdx":I
    :catchall_0
    move-exception v1

    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    .end local v11    # "s":Landroid/view/Surface;
    .end local v12    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    throw v1

    .line 192
    .restart local v7    # "i":I
    .restart local v9    # "mAngleUnit":F
    .restart local v10    # "maxRadius":F
    .restart local v11    # "s":Landroid/view/Surface;
    .restart local v12    # "st":Landroid/graphics/SurfaceTexture;
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/CircleAnimation;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/CircleAnimation;->mDisplayHeight:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 193
    const/16 v1, 0x1701

    invoke-static {v1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 194
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 195
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/CircleAnimation;->mDisplayWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/CircleAnimation;->mDisplayHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    .line 196
    const/16 v1, 0x1700

    invoke-static {v1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 197
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 198
    const/16 v1, 0x1702

    invoke-static {v1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 199
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/CircleAnimation;->mTexMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    .line 204
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected checkGlErrors(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "log"    # Z

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 332
    .local v1, "hadError":Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_1

    .line 333
    if-eqz p2, :cond_0

    .line 334
    const-string v2, "CircleAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 338
    :cond_1
    return v1
.end method

.method protected createEglContext()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_1

    .line 282
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 283
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 284
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/CircleAnimation;->logEglError(Ljava/lang/String;)V

    .line 325
    :goto_0
    return v2

    .line 288
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 289
    .local v9, "version":[I
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 291
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/display/CircleAnimation;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    .end local v9    # "version":[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    .line 297
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 304
    .local v1, "eglConfigAttribList":[I
    new-array v6, v10, [I

    .line 305
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 306
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/display/CircleAnimation;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 314
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 315
    new-array v8, v10, [I

    const/16 v0, 0x3038

    aput v0, v8, v2

    .line 318
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/CircleAnimation;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglContext:Landroid/opengl/EGLContext;

    .line 320
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 321
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/display/CircleAnimation;->logEglError(Ljava/lang/String;)V

    goto :goto_0

    .end local v8    # "eglContextAttribList":[I
    :cond_4
    move v2, v10

    .line 325
    goto :goto_0

    .line 297
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method protected destroyScreenshotTexture()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-boolean v0, p0, Lcom/android/server/display/CircleAnimation;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    .line 267
    iput-boolean v1, p0, Lcom/android/server/display/CircleAnimation;->mTexNamesGenerated:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->attachEglContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/CircleAnimation;->mTexNames:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    .line 271
    const-string v0, "glDeleteTextures"

    invoke-virtual {p0, v0}, Lcom/android/server/display/CircleAnimation;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    .line 277
    :cond_0
    return-void

    .line 273
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    throw v0
.end method

.method public draw(F)Z
    .locals 6
    .param p1, "level"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 93
    iget-boolean v1, p0, Lcom/android/server/display/CircleAnimation;->mPrepared:Z

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    iget v1, p0, Lcom/android/server/display/CircleAnimation;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 98
    sub-float v0, v5, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/CircleAnimation;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 107
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES10;->glClear(I)V

    .line 110
    sub-float v1, v5, p1

    invoke-direct {p0, v1}, Lcom/android/server/display/CircleAnimation;->drawCircleLcdOffAnimation(F)V

    .line 112
    const-string v1, "drawFrame"

    invoke-virtual {p0, v1}, Lcom/android/server/display/CircleAnimation;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    goto :goto_0

    .line 116
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/CircleAnimation;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/CircleAnimation;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    .line 120
    invoke-virtual {p0, v5}, Lcom/android/server/display/CircleAnimation;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->detachEglContext()V

    throw v0
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/16 v5, 0x54

    const/4 v2, 0x1

    .line 38
    iput p2, p0, Lcom/android/server/display/CircleAnimation;->mMode:I

    .line 42
    iget-object v3, p0, Lcom/android/server/display/CircleAnimation;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/display/CircleAnimation;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 43
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v3, p0, Lcom/android/server/display/CircleAnimation;->mDisplayLayerStack:I

    .line 44
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/CircleAnimation;->mDisplayWidth:I

    .line 45
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/CircleAnimation;->mDisplayHeight:I

    .line 47
    invoke-static {v5}, Lcom/android/server/display/CircleAnimation;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/CircleAnimation;->mCircleVertices:Ljava/nio/FloatBuffer;

    .line 48
    invoke-static {v5}, Lcom/android/server/display/CircleAnimation;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/CircleAnimation;->mCircleVerticesOrig:Ljava/nio/FloatBuffer;

    .line 49
    invoke-static {v5}, Lcom/android/server/display/CircleAnimation;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/CircleAnimation;->mCircleTex:Ljava/nio/FloatBuffer;

    .line 52
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->tryPrepare()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->dismiss()V

    .line 54
    const/4 v2, 0x0

    .line 72
    :cond_0
    return v2

    .line 58
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/display/CircleAnimation;->mPrepared:Z

    .line 67
    if-ne p2, v2, :cond_0

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 69
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/server/display/CircleAnimation;->draw(F)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected tryPrepare()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget v2, p0, Lcom/android/server/display/CircleAnimation;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/CircleAnimation;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 84
    goto :goto_0
.end method
