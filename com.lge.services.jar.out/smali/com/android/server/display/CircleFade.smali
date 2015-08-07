.class Lcom/android/server/display/CircleFade;
.super Lcom/android/server/display/ColorFadeEx;
.source "CircleFade.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_PERF:Z = false

.field private static final INNER_CIRCLE_RATIO:F = 0.3f

.field private static final MAX_RADIUS_FACTOR:F = 3.0f

.field private static final OUTER_CIRCLE_RATIO:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "CircleFade"

.field private static sFrameCount:I

.field private static sStartTick:J

.field private static sTotalTime:J


# instance fields
.field private mCenterPos:[F

.field private mCenterPosHandle:I

.field private mCircleRadius:F

.field private mMaxRadius:F

.field private mPMatrixHandle:I

.field private mRadiusHandle:I

.field private mTMatrixHandle:I

.field private mTexCoordIndex:I

.field private mTextureHandle:I

.field private mVertexIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/CircleFade;->sFrameCount:I

    .line 32
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/display/CircleFade;->sStartTick:J

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/display/CircleFade;->sTotalTime:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFadeEx;-><init>(I)V

    .line 19
    iput v1, p0, Lcom/android/server/display/CircleFade;->mRadiusHandle:I

    .line 20
    iput v1, p0, Lcom/android/server/display/CircleFade;->mCenterPosHandle:I

    .line 21
    iput v1, p0, Lcom/android/server/display/CircleFade;->mVertexIndex:I

    .line 22
    iput v1, p0, Lcom/android/server/display/CircleFade;->mTexCoordIndex:I

    .line 23
    iput v1, p0, Lcom/android/server/display/CircleFade;->mPMatrixHandle:I

    .line 24
    iput v1, p0, Lcom/android/server/display/CircleFade;->mTMatrixHandle:I

    .line 25
    iput v1, p0, Lcom/android/server/display/CircleFade;->mTextureHandle:I

    .line 27
    iput v0, p0, Lcom/android/server/display/CircleFade;->mCircleRadius:F

    .line 28
    iput v0, p0, Lcom/android/server/display/CircleFade;->mMaxRadius:F

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/CircleFade;->mCenterPos:[F

    .line 37
    iput v1, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    .line 38
    return-void
.end method

.method private static checkFPS(F)V
    .locals 10
    .param p0, "value"    # F

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "fps":F
    const-wide/16 v0, 0x0

    .line 175
    .local v0, "currentTick":J
    sget-wide v4, Lcom/android/server/display/CircleFade;->sStartTick:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/display/CircleFade;->sStartTick:J

    .line 177
    sput v6, Lcom/android/server/display/CircleFade;->sFrameCount:I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget v3, Lcom/android/server/display/CircleFade;->sFrameCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/display/CircleFade;->sFrameCount:I

    .line 181
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_0

    .line 182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 183
    sget-wide v4, Lcom/android/server/display/CircleFade;->sStartTick:J

    sub-long v4, v0, v4

    sput-wide v4, Lcom/android/server/display/CircleFade;->sTotalTime:J

    .line 184
    sget v3, Lcom/android/server/display/CircleFade;->sFrameCount:I

    int-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v3, v4

    sget-wide v4, Lcom/android/server/display/CircleFade;->sTotalTime:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 186
    const-string v3, "CircleFade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkFPS() fps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frames "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/display/CircleFade;->sFrameCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sput v6, Lcom/android/server/display/CircleFade;->sFrameCount:I

    .line 189
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/server/display/CircleFade;->sStartTick:J

    .line 190
    sput-wide v8, Lcom/android/server/display/CircleFade;->sTotalTime:J

    goto :goto_0
.end method

.method private drawCircleFadeAnimation(F)V
    .locals 9
    .param p1, "value"    # F

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const v8, 0x8892

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 137
    iget v0, p0, Lcom/android/server/display/CircleFade;->mMaxRadius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/CircleFade;->mCircleRadius:F

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/CircleFade;->mMaxRadius:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/display/CircleFade;->mCircleRadius:F

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 144
    iget v0, p0, Lcom/android/server/display/CircleFade;->mPMatrixHandle:I

    iget-object v4, p0, Lcom/android/server/display/CircleFade;->mProjMatrix:[F

    invoke-static {v0, v7, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 145
    iget v0, p0, Lcom/android/server/display/CircleFade;->mTMatrixHandle:I

    iget-object v4, p0, Lcom/android/server/display/CircleFade;->mTexMatrix:[F

    invoke-static {v0, v7, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 147
    iget v0, p0, Lcom/android/server/display/CircleFade;->mRadiusHandle:I

    iget v4, p0, Lcom/android/server/display/CircleFade;->mCircleRadius:F

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3f333333    # 0.7f

    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 148
    iget v0, p0, Lcom/android/server/display/CircleFade;->mCenterPosHandle:I

    iget-object v4, p0, Lcom/android/server/display/CircleFade;->mCenterPos:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/server/display/CircleFade;->mCenterPos:[F

    aget v5, v5, v7

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 151
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 152
    const v0, 0x8d65

    iget-object v4, p0, Lcom/android/server/display/CircleFade;->mTexNames:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 155
    iget-object v0, p0, Lcom/android/server/display/CircleFade;->mGLBuffers:[I

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 156
    iget v0, p0, Lcom/android/server/display/CircleFade;->mVertexIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 157
    iget v0, p0, Lcom/android/server/display/CircleFade;->mVertexIndex:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 159
    iget-object v0, p0, Lcom/android/server/display/CircleFade;->mGLBuffers:[I

    aget v0, v0, v7

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 160
    iget v0, p0, Lcom/android/server/display/CircleFade;->mTexCoordIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 161
    iget v0, p0, Lcom/android/server/display/CircleFade;->mTexCoordIndex:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 163
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 166
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 167
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 168
    return-void
.end method


# virtual methods
.method public draw(F)Z
    .locals 6
    .param p1, "level"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 101
    iget-boolean v1, p0, Lcom/android/server/display/CircleFade;->mPrepared:Z

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget v1, p0, Lcom/android/server/display/CircleFade;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 106
    sub-float v0, v5, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/CircleFade;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/CircleFade;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 115
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 118
    sub-float v1, v5, p1

    invoke-direct {p0, v1}, Lcom/android/server/display/CircleFade;->drawCircleFadeAnimation(F)V

    .line 120
    const-string v1, "drawFrame"

    invoke-virtual {p0, v1}, Lcom/android/server/display/CircleFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/CircleFade;->detachEglContext()V

    goto :goto_0

    .line 124
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/CircleFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/CircleFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/CircleFade;->detachEglContext()V

    .line 128
    invoke-virtual {p0, v5}, Lcom/android/server/display/CircleFade;->showSurface(F)Z

    move-result v0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/CircleFade;->detachEglContext()V

    throw v0
.end method

.method protected initGLShaders(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .local v4, "prevTick":J
    const-wide/16 v0, 0x0

    .line 49
    .local v0, "currentTick":J
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    if-gez v8, :cond_2

    .line 50
    sget v8, Lcom/lge/internal/R$raw;->circle_fade_vs:I

    const v9, 0x8b31

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/display/CircleFade;->loadShader(Landroid/content/Context;II)I

    move-result v3

    .line 52
    .local v3, "vshader":I
    sget v8, Lcom/lge/internal/R$raw;->circle_fade_fs:I

    const v9, 0x8b30

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/display/CircleFade;->loadShader(Landroid/content/Context;II)I

    move-result v2

    .line 54
    .local v2, "fshader":I
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 92
    .end local v2    # "fshader":I
    .end local v3    # "vshader":I
    :cond_0
    :goto_0
    return v6

    .line 58
    .restart local v2    # "fshader":I
    .restart local v3    # "vshader":I
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    .line 60
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 61
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 63
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 65
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 67
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    const-string v9, "aPosition"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mVertexIndex:I

    .line 68
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    const-string v9, "aTexCoord"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mTexCoordIndex:I

    .line 70
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    const-string v9, "uPMatrix"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mPMatrixHandle:I

    .line 71
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    const-string v9, "uTMatrix"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mTMatrixHandle:I

    .line 72
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    const-string v9, "uRadius"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mRadiusHandle:I

    .line 73
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    const-string v9, "uCenterPos"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mCenterPosHandle:I

    .line 75
    iget v8, p0, Lcom/android/server/display/CircleFade;->mProgram:I

    const-string v9, "uTexture"

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/display/CircleFade;->mTextureHandle:I

    .line 77
    iget v8, p0, Lcom/android/server/display/CircleFade;->mTextureHandle:I

    invoke-static {v8, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 78
    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 81
    .end local v2    # "fshader":I
    .end local v3    # "vshader":I
    :cond_2
    iget-object v8, p0, Lcom/android/server/display/CircleFade;->mCenterPos:[F

    iget v9, p0, Lcom/android/server/display/CircleFade;->mDisplayWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    aput v9, v8, v6

    .line 82
    iget-object v6, p0, Lcom/android/server/display/CircleFade;->mCenterPos:[F

    iget v8, p0, Lcom/android/server/display/CircleFade;->mDisplayHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    aput v8, v6, v7

    .line 84
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/display/CircleFade;->mCircleRadius:F

    .line 85
    iget v6, p0, Lcom/android/server/display/CircleFade;->mDisplayWidth:I

    int-to-float v6, v6

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/android/server/display/CircleFade;->mMaxRadius:F

    move v6, v7

    .line 92
    goto/16 :goto_0
.end method
