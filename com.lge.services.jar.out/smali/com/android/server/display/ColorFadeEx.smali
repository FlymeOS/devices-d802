.class Lcom/android/server/display/ColorFadeEx;
.super Lcom/android/server/display/ColorFade;
.source "ColorFadeEx.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorFadeEx"


# instance fields
.field protected mAnimationMode:I

.field protected mIsQuickWindowCovered:Z

.field protected mQuickWindowHeight:I

.field protected mQuickWindowS:F

.field protected mQuickWindowSize:Landroid/graphics/Rect;

.field protected mQuickWindowT:F

.field protected mQuickWindowTexHeight:F

.field protected mQuickWindowTexWidth:F

.field protected mQuickWindowWidth:I

.field protected mQuickWindowX:I

.field protected mQuickWindowY:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;-><init>(I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    .line 21
    iput v1, p0, Lcom/android/server/display/ColorFadeEx;->mAnimationMode:I

    .line 23
    iput v1, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowX:I

    .line 24
    iput v1, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowY:I

    .line 25
    iput v1, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowWidth:I

    .line 26
    iput v1, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowHeight:I

    .line 28
    iput v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowS:F

    .line 29
    iput v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowT:F

    .line 30
    iput v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexWidth:F

    .line 31
    iput v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexHeight:F

    .line 33
    iput-boolean v1, p0, Lcom/android/server/display/ColorFadeEx;->mIsQuickWindowCovered:Z

    .line 37
    iput v3, p0, Lcom/android/server/display/ColorFadeEx;->mProgram:I

    .line 38
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mGLBuffers:[I

    aput v3, v0, v1

    .line 39
    return-void
.end method


# virtual methods
.method protected captureScreenshotTextureAndSetViewport()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :goto_0
    return v0

    .line 126
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/ColorFadeEx;->mTexNamesGenerated:Z

    if-nez v1, :cond_2

    .line 127
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ColorFadeEx;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 128
    const-string v1, "glGenTextures"

    invoke-virtual {p0, v1}, Lcom/android/server/display/ColorFadeEx;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexNamesGenerated:Z

    .line 134
    :cond_2
    new-instance v8, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v8, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 135
    .local v8, "st":Landroid/graphics/SurfaceTexture;
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .local v7, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :try_start_3
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 143
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 144
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexMatrix:[F

    invoke-virtual {v8, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 145
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    .line 150
    iget-boolean v0, p0, Lcom/android/server/display/ColorFadeEx;->mIsQuickWindowCovered:Z

    if-ne v0, v9, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowS:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 152
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowT:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 154
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowS:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 155
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowT:F

    iget v3, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowS:F

    iget v3, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowT:F

    iget v3, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 160
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowS:F

    iget v3, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 161
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowT:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 163
    iget v0, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowX:I

    iget v1, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowY:I

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowWidth:I

    iget v3, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 178
    :goto_1
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    int-to-float v4, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/ColorFadeEx;->ortho(FFFFFF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    move v0, v9

    .line 182
    goto/16 :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    .end local v7    # "s":Landroid/view/Surface;
    .end local v8    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    throw v0

    .line 166
    .restart local v7    # "s":Landroid/view/Surface;
    .restart local v8    # "st":Landroid/graphics/SurfaceTexture;
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 167
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 168
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 171
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 172
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public draw(F)Z
    .locals 6
    .param p1, "level"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 78
    iget-boolean v1, p0, Lcom/android/server/display/ColorFadeEx;->mPrepared:Z

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget v1, p0, Lcom/android/server/display/ColorFadeEx;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 83
    sub-float v0, v5, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorFadeEx;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 92
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorFadeEx;->drawScreenOffAnimation(F)V

    .line 97
    const-string v1, "drawFrame"

    invoke-virtual {p0, v1}, Lcom/android/server/display/ColorFadeEx;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    goto :goto_0

    .line 101
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/ColorFadeEx;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    .line 105
    invoke-virtual {p0, v5}, Lcom/android/server/display/ColorFadeEx;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    throw v0
.end method

.method protected drawScreenOffAnimation(F)V
    .locals 13
    .param p1, "level"    # F

    .prologue
    const v12, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f000000    # 0.5f

    const v10, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 110
    sub-float v2, v7, p1

    .line 111
    .local v2, "one_minus_level":F
    const v8, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v8, v2

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 112
    .local v0, "cos":F
    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gez v8, :cond_0

    const/high16 v6, -0x40800000    # -1.0f

    .line 113
    .local v6, "sign":F
    :goto_0
    invoke-static {v2, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v8

    neg-float v8, v8

    add-float v3, v8, v7

    .line 114
    .local v3, "opacity":F
    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {p1, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v4

    .line 115
    .local v4, "saturation":F
    invoke-static {v2, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v8

    neg-float v8, v8

    add-float/2addr v8, v7

    mul-float/2addr v8, v10

    add-float v5, v8, v12

    .line 116
    .local v5, "scale":F
    mul-float v8, v11, v6

    invoke-static {v0, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v8, v11

    mul-float/2addr v8, v12

    add-float v1, v8, v10

    .line 117
    .local v1, "gamma":F
    div-float/2addr v7, v1

    invoke-virtual {p0, v3, v7, v4, v5}, Lcom/android/server/display/ColorFadeEx;->drawFaded(FFFF)V

    .line 118
    return-void

    .end local v1    # "gamma":F
    .end local v3    # "opacity":F
    .end local v4    # "saturation":F
    .end local v5    # "scale":F
    .end local v6    # "sign":F
    :cond_0
    move v6, v7

    .line 112
    goto :goto_0
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v2

    .line 47
    .local v2, "result":Z
    iget-boolean v5, p0, Lcom/android/server/display/ColorFadeEx;->mIsQuickWindowCovered:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 48
    iget-object v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    .line 49
    iget-object v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 51
    .local v4, "yOffset":I
    iget-object v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowWidth:I

    .line 53
    iget-object v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v6

    .line 54
    .local v3, "tempHeight":I
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 55
    .local v1, "ratio":F
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowHeight:I

    .line 57
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowHeight:I

    sub-int v0, v5, v3

    .line 59
    .local v0, "gap":I
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowX:I

    .line 60
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    iget v6, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowHeight:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowY:I

    .line 62
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowS:F

    .line 63
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowT:F

    .line 64
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexWidth:F

    .line 65
    iget v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowTexHeight:F

    .line 69
    .end local v0    # "gap":I
    .end local v1    # "ratio":F
    .end local v3    # "tempHeight":I
    .end local v4    # "yOffset":I
    :cond_0
    return v2
.end method

.method public setQuickWindowCovered(Z)V
    .locals 0
    .param p1, "isQuickWindowCovered"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/server/display/ColorFadeEx;->mIsQuickWindowCovered:Z

    .line 187
    return-void
.end method

.method public setQuickWindowSize(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "size"    # Landroid/graphics/Rect;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/display/ColorFadeEx;->mQuickWindowSize:Landroid/graphics/Rect;

    .line 194
    return-void
.end method
