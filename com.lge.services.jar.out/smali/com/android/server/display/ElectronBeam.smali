.class Lcom/android/server/display/ElectronBeam;
.super Lcom/android/server/display/CircleAnimation;
.source "ElectronBeam.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final HSTRETCH_DURATION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static final VSTRETCH_DURATION:F = 0.5f

.field private static sOrientation:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/display/CircleAnimation;-><init>(I)V

    .line 29
    return-void
.end method

.method private drawHStretch(F)V
    .locals 8
    .param p1, "stretch"    # F

    .prologue
    const v7, 0x8074

    const/4 v6, 0x0

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 171
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 176
    .local v0, "ag":F
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 178
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v6, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 179
    invoke-static {v7}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 182
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/display/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 183
    mul-float v1, v0, v5

    sub-float v1, v4, v1

    mul-float v2, v0, v5

    sub-float v2, v4, v2

    mul-float v3, v0, v5

    sub-float v3, v4, v3

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 184
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v6, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 187
    invoke-static {v7}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 189
    :cond_0
    return-void
.end method

.method private drawVStretch(F)V
    .locals 11
    .param p1, "stretch"    # F

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const v8, 0x8d65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    const/high16 v3, 0x40f00000    # 7.5f

    invoke-static {p1, v3}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v2

    .line 96
    .local v2, "ar":F
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p1, v3}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v1

    .line 97
    .local v1, "ag":F
    const/high16 v3, 0x41080000    # 8.5f

    invoke-static {p1, v3}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 104
    .local v0, "ab":F
    invoke-static {v7, v7}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 105
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 108
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 109
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 112
    const/16 v3, 0xde1

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 113
    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 116
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    aget v3, v3, v6

    invoke-static {v8, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 117
    const/16 v4, 0x2300

    const/16 v5, 0x2200

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-nez v3, :cond_1

    const/16 v3, 0x2100

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 119
    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 121
    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 123
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 125
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 127
    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 128
    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 129
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 132
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 133
    invoke-static {v7, v6, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 134
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 137
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v1}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 138
    invoke-static {v6, v7, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 139
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 142
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 143
    invoke-static {v6, v6, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 144
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 147
    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 148
    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 149
    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 152
    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-ne v3, v7, :cond_0

    .line 153
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v3}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 154
    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 158
    :cond_0
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 159
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 160
    return-void

    .line 117
    :cond_1
    const/16 v3, 0x1e01

    goto/16 :goto_0
.end method

.method private static scurve(FF)F
    .locals 5
    .param p0, "value"    # F
    .param p1, "s"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 287
    sub-float v1, p0, v4

    .line 292
    .local v1, "x":F
    invoke-static {v1, p1}, Lcom/android/server/display/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v2, v3, v4

    .line 296
    .local v2, "y":F
    invoke-static {v4, p1}, Lcom/android/server/display/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v0, v3, v4

    .line 299
    .local v0, "v":F
    div-float v3, v2, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private static setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 9
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "dw"    # F
    .param p2, "dh"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 210
    sget v4, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 211
    mul-float v4, v8, p1

    sub-float v5, v6, p3

    mul-float v1, v4, v5

    .line 212
    .local v1, "w":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 213
    .local v0, "h":F
    sub-float v4, p1, v1

    mul-float v2, v4, v7

    .line 214
    .local v2, "x":F
    sub-float v4, p2, v6

    mul-float v3, v4, v7

    .line 215
    .local v3, "y":F
    invoke-static {p0, v2, v3, v1, v6}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 225
    .end local v0    # "h":F
    .end local v1    # "w":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :goto_0
    return-void

    .line 216
    :cond_0
    sget v4, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 217
    const/high16 v1, 0x3f800000    # 1.0f

    .line 218
    .restart local v1    # "w":F
    mul-float v4, v8, p1

    sub-float v5, v6, p3

    mul-float v0, v4, v5

    .line 219
    .restart local v0    # "h":F
    sub-float v4, p1, v6

    mul-float v2, v4, v7

    .line 220
    .restart local v2    # "x":F
    sub-float v4, p2, v0

    mul-float v3, v4, v7

    .line 221
    .restart local v3    # "y":F
    invoke-static {p0, v2, v3, v6, v0}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    goto :goto_0

    .line 223
    .end local v0    # "h":F
    .end local v1    # "w":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    const-string v4, "ElectronBeam"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHStretchQuad() orientation ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 7
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "dw"    # F
    .param p2, "dh"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 192
    sget v4, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 193
    mul-float v4, p1, p3

    add-float v1, p1, v4

    .line 194
    .local v1, "w":F
    mul-float v4, p2, p3

    sub-float v0, p2, v4

    .line 195
    .local v0, "h":F
    sub-float v4, p1, v1

    mul-float v2, v4, v6

    .line 196
    .local v2, "x":F
    sub-float v4, p2, v0

    mul-float v3, v4, v6

    .line 197
    .local v3, "y":F
    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 207
    .end local v0    # "h":F
    .end local v1    # "w":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :goto_0
    return-void

    .line 198
    :cond_0
    sget v4, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 199
    mul-float v4, p1, p3

    sub-float v1, p1, v4

    .line 200
    .restart local v1    # "w":F
    mul-float v4, p2, p3

    add-float v0, p2, v4

    .line 201
    .restart local v0    # "h":F
    sub-float v4, p1, v1

    mul-float v2, v4, v6

    .line 202
    .restart local v2    # "x":F
    sub-float v4, p2, v0

    mul-float v3, v4, v6

    .line 203
    .restart local v3    # "y":F
    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    goto :goto_0

    .line 205
    .end local v0    # "h":F
    .end local v1    # "w":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    const-string v4, "ElectronBeam"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVStretchQuad() orientation ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sigmoid(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "s"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 303
    neg-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->exp(F)F

    move-result v0

    add-float/2addr v0, v1

    div-float v0, v1, v0

    return v0
.end method


# virtual methods
.method protected captureScreenshotTextureAndSetViewport()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return v0

    .line 233
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    if-nez v1, :cond_2

    .line 234
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 235
    const-string v1, "glGenTextures"

    invoke-virtual {p0, v1}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    .line 241
    :cond_2
    new-instance v7, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v7, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 242
    .local v7, "st":Landroid/graphics/SurfaceTexture;
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v7}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    .local v6, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    .line 250
    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 251
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    invoke-virtual {v7, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 252
    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->release()V

    .line 257
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 258
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 259
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 260
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 263
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 264
    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 265
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 266
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    .line 267
    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 268
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 269
    const/16 v0, 0x1702

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 270
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 271
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    move v0, v8

    .line 275
    goto/16 :goto_0

    .line 247
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 273
    .end local v6    # "s":Landroid/view/Surface;
    .end local v7    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method public draw(F)Z
    .locals 7
    .param p1, "level"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 53
    iget-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 58
    sub-float v0, v5, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 67
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES10;->glClear(I)V

    .line 70
    cmpg-float v1, p1, v6

    if-gez v1, :cond_3

    .line 71
    div-float v1, p1, v6

    sub-float v1, v5, v1

    invoke-direct {p0, v1}, Lcom/android/server/display/ElectronBeam;->drawHStretch(F)V

    .line 75
    :goto_1
    const-string v1, "drawFrame"

    invoke-virtual {p0, v1}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    goto :goto_0

    .line 73
    :cond_3
    sub-float v1, p1, v6

    div-float/2addr v1, v6

    sub-float v1, v5, v1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/display/ElectronBeam;->drawVStretch(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw v0

    .line 79
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    .line 83
    invoke-virtual {p0, v5}, Lcom/android/server/display/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_0
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    sput v1, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    .line 34
    invoke-super {p0, p1, p2}, Lcom/android/server/display/CircleAnimation;->prepare(Landroid/content/Context;I)Z

    move-result v0

    .line 36
    .local v0, "returnValue":Z
    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    if-le v1, v2, :cond_0

    .line 37
    sget v1, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    if-ne v1, v3, :cond_1

    .line 38
    const/4 v1, 0x2

    sput v1, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    sput v3, Lcom/android/server/display/ElectronBeam;->sOrientation:I

    goto :goto_0
.end method
