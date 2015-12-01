.class public Lcom/lge/camera/OrientationInfo;
.super Ljava/lang/Object;
.source "OrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

.field private mLastOrientation:I

.field private mLastOrientationBackup:I

.field private mOrientation:I

.field private mOrientationChangeEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOsManager:Lcom/lge/systemservice/core/OsManager;


# direct methods
.method public constructor <init>(Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    .line 33
    iput-object v1, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 34
    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 35
    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    .line 37
    iput-object v1, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    .line 38
    iput-object v1, p0, Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    .line 69
    iput-object p1, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/OrientationInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/OrientationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/OrientationInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/OrientationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/OrientationInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/OrientationInfo;)Lcom/lge/systemservice/core/OsManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/OrientationInfo;Lcom/lge/systemservice/core/OsManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;
    .param p1, "x1"    # Lcom/lge/systemservice/core/OsManager;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/OrientationInfo;->setSlimPortDegree(Lcom/lge/systemservice/core/OsManager;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/OrientationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/OrientationInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/OrientationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/OrientationInfo;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/camera/OrientationInfo;->setOrientationDefault()V

    return-void
.end method

.method private changeOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0, p1}, Lcom/lge/camera/OrientationInfo;->setOrientation(I)V

    .line 294
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0, v2, v2}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->updateAudiozoom(ZI)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->setOrientationListenerRotate(I)V

    .line 300
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->setEffectRecorderOrientationHint()V

    .line 301
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v0}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->setEffectCameraOrientationHint()V

    .line 303
    :cond_2
    return-void
.end method

.method private setOrientationDefault()V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 307
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 310
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    goto :goto_0

    .line 311
    :cond_2
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    if-nez v0, :cond_3

    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    goto :goto_0

    .line 313
    :cond_3
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    .line 314
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    goto :goto_0
.end method

.method private setSlimPortDegree(Lcom/lge/systemservice/core/OsManager;I)V
    .locals 5
    .param p1, "osManager"    # Lcom/lge/systemservice/core/OsManager;
    .param p2, "degree"    # I

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "strOrientation":Ljava/lang/String;
    :try_start_0
    const-string v2, "sys.camera_orientation"

    invoke-virtual {p1, v2, v1}, Lcom/lge/systemservice/core/OsManager;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSlimPortDegree = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "CameraApp"

    const-string v3, "setSlimPortDegree : SecurityException."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getDeviceDegree(I)I
    .locals 5
    .param p1, "cameraId"    # I

    .prologue
    .line 160
    iget v2, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 161
    .local v2, "orientation":I
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v1

    .line 163
    .local v1, "mDevicedegree":I
    iget-object v3, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v3}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->isConfigureLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v4}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    rsub-int v4, v4, 0x168

    add-int/2addr v3, v4

    rem-int/lit16 v1, v3, 0x168

    .line 170
    :cond_0
    iget v3, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 171
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 172
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 175
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 176
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 185
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v2

    .line 178
    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v1

    rem-int/lit16 v2, v3, 0x168

    goto :goto_0

    .line 183
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    return v0
.end method

.method public getOrientationDegree()I
    .locals 6

    .prologue
    const/16 v4, 0xb4

    const/16 v3, 0x5a

    const/16 v2, 0x10e

    const/4 v1, 0x0

    .line 124
    iget-object v5, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v5}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->isConfigureLandscape()Z

    move-result v0

    .line 125
    .local v0, "windowLand":Z
    iget v5, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 135
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_3

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 127
    :pswitch_0
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 129
    :pswitch_1
    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    .line 131
    :pswitch_2
    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    move v1, v3

    goto :goto_0

    .line 133
    :pswitch_3
    if-eqz v0, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 138
    :cond_3
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOrientationDegreeForLandDevice()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 145
    iget v1, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    :pswitch_0
    return v0

    .line 147
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 149
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 153
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getOrientationListener()Landroid/view/OrientationEventListener;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method public getOrientationListenerEnable()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method public initOsManager()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v1}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "tempLGContext":Lcom/lge/systemservice/core/LGContext;
    const-string v1, "osservice"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/OsManager;

    check-cast v1, Lcom/lge/systemservice/core/OsManager;

    iput-object v1, p0, Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;

    .line 92
    return-void
.end method

.method public initailizeOrientation()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/OrientationInfo;->setOrientation(I)V

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 97
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    iget v1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;

    iget v1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/OrientationInfo;->setSlimPortDegree(Lcom/lge/systemservice/core/OsManager;I)V

    .line 99
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    .line 101
    :cond_0
    return-void
.end method

.method public releaseOrientationListener()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 208
    return-void
.end method

.method public setLastOrientation(I)V
    .locals 0
    .param p1, "lastOrientation"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 117
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    .line 105
    return-void
.end method

.method public setOrientationForced(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientation:I

    if-ne v0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    .line 83
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    iget v1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;

    iget v1, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/OrientationInfo;->setSlimPortDegree(Lcom/lge/systemservice/core/OsManager;I)V

    .line 85
    iget v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientation:I

    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    goto :goto_0
.end method

.method public setOrientationListener()V
    .locals 3

    .prologue
    .line 228
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 234
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I

    .line 236
    new-instance v0, Lcom/lge/camera/OrientationInfo$1;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo;->mGet:Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;

    invoke-interface {v1}, Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/camera/OrientationInfo$1;-><init>(Lcom/lge/camera/OrientationInfo;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 288
    return-void
.end method

.method public setOrientationListener(Landroid/view/OrientationEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 109
    return-void
.end method

.method public setOrientationListenerEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z

    .line 196
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 202
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationListener enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " done!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public setSlimPortDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;

    invoke-direct {p0, v0, p1}, Lcom/lge/camera/OrientationInfo;->setSlimPortDegree(Lcom/lge/systemservice/core/OsManager;I)V

    .line 212
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/OrientationInfo;->mOsManager:Lcom/lge/systemservice/core/OsManager;

    .line 66
    return-void
.end method
