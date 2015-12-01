.class public Lcom/lge/camera/postview/PostViewParameters;
.super Ljava/lang/Object;
.source "PostViewParameters.java"


# instance fields
.field private bChangeFileName:Z

.field private bConnectedDevice:Z

.field private bFromCreateProcess:Z

.field private mApplicationMode:I

.field private mAutoReview:Ljava/lang/String;

.field private mCameraDimension:I

.field private mCameraId:I

.field private mCurrentLang:Ljava/lang/String;

.field private mCurrentStorage:I

.field private mCurrentStorageDirectory:Ljava/lang/String;

.field private mCurrentZoom:[Ljava/lang/String;

.field private mDisplayOrientationSetting:I

.field private mFlip:Ljava/lang/String;

.field private mIsAttachIntent:Z

.field private mIsAttachMode:Z

.field private mIsMmsVideo:Z

.field private mLocationLatitude:D

.field private mLocationLongitude:D

.field private mPreviewOrientation:I

.field private mSaveFileName:Ljava/lang/String;

.field private mSavedUri:Landroid/net/Uri;

.field private mSecureCamera:Z

.field private mShotMode:Ljava/lang/String;

.field private mShotModeIndex:I

.field private mTimeMachineDeleteDone:Z

.field private mTimeMachineStorageDirectory:Ljava/lang/String;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSecureLockImage:Z

.field private mVideoEffectSizeOnScreen:Ljava/lang/String;

.field private mVideoEffectsActive:Z

.field private mVideoExtension:Ljava/lang/String;

.field private mVolumeKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mApplicationMode:I

    .line 28
    iput v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraDimension:I

    .line 29
    iput v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraId:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    .line 32
    iput-object v4, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorage:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mTimeMachineStorageDirectory:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsAttachMode:Z

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsAttachIntent:Z

    .line 38
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsMmsVideo:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotMode:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotModeIndex:I

    .line 41
    const-string v0, "on"

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mAutoReview:Ljava/lang/String;

    .line 42
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoExtension:Ljava/lang/String;

    .line 44
    const-string v0, "en"

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentLang:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mPreviewOrientation:I

    .line 46
    iput v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mDisplayOrientationSetting:I

    .line 47
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->bChangeFileName:Z

    .line 48
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->bFromCreateProcess:Z

    .line 49
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->bConnectedDevice:Z

    .line 50
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mTimeMachineDeleteDone:Z

    .line 51
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoEffectsActive:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoEffectSizeOnScreen:Ljava/lang/String;

    .line 53
    iput-object v4, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentZoom:[Ljava/lang/String;

    .line 54
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mFlip:Ljava/lang/String;

    .line 55
    iput-wide v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mLocationLatitude:D

    .line 56
    iput-wide v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mLocationLongitude:D

    .line 57
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mSecureCamera:Z

    .line 58
    iput-boolean v1, p0, Lcom/lge/camera/postview/PostViewParameters;->mUseSecureLockImage:Z

    .line 59
    const-string v0, "shutter"

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mVolumeKey:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    return-void
.end method

.method private setupShotModeCaptureParam(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 294
    iget v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mApplicationMode:I

    if-nez v2, :cond_6

    .line 295
    iget v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraId:I

    if-nez v2, :cond_5

    .line 296
    const-string v2, "shotMode"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotMode:Ljava/lang/String;

    .line 297
    const-string v2, "shotModeIndex"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotModeIndex:I

    .line 300
    const-string v2, "shotmode_refocus"

    iget-object v3, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    const-string v2, "allinfocusUri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "oneShotUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 303
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    .line 305
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSavedUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v0    # "oneShotUri":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 309
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    :cond_3
    const-string v2, "timeMachineMode"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 312
    .local v1, "timeMachineModeOn":Z
    if-eqz v1, :cond_4

    .line 313
    const-string v2, "shotmode_timemachine"

    iput-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotMode:Ljava/lang/String;

    .line 314
    const/4 v2, 0x3

    iput v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotModeIndex:I

    .line 315
    const-string v2, "timeMachineOneShotUri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .restart local v0    # "oneShotUri":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 317
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    goto :goto_0

    .line 320
    .end local v0    # "oneShotUri":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    goto :goto_0

    .line 324
    .end local v1    # "timeMachineModeOn":Z
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    goto :goto_0

    .line 327
    :cond_6
    const-string v2, "Flip"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/postview/PostViewParameters;->mFlip:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clearParameters()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    .line 336
    :cond_0
    return-void
.end method

.method public getApplicationMode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mApplicationMode:I

    return v0
.end method

.method public getAutoReview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mAutoReview:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraDimension()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraDimension:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraId:I

    return v0
.end method

.method public getCurrentLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentLang:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStorage()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorage:I

    return v0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorageDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentZoom()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentZoom:[Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrientationSetting()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mDisplayOrientationSetting:I

    return v0
.end method

.method public getFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mFlip:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationLatitude()D
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mLocationLatitude:D

    return-wide v0
.end method

.method public getLocationLongitude()D
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mLocationLongitude:D

    return-wide v0
.end method

.method public getPreviewOrientation()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mPreviewOrientation:I

    return v0
.end method

.method public getSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getShotMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotMode:Ljava/lang/String;

    return-object v0
.end method

.method public getShotModeIndex()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mShotModeIndex:I

    return v0
.end method

.method public getTimeMachineStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mTimeMachineStorageDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoEffectSizeOnScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoEffectSizeOnScreen:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mVolumeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isChangeFileName()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->bChangeFileName:Z

    return v0
.end method

.method public isConnectedDevice()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->bConnectedDevice:Z

    return v0
.end method

.method public isFromCreateProcess()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->bFromCreateProcess:Z

    return v0
.end method

.method public isIsAttachIntent()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsAttachIntent:Z

    return v0
.end method

.method public isIsAttachMode()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsAttachMode:Z

    return v0
.end method

.method public isIsMmsVideo()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsMmsVideo:Z

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mSecureCamera:Z

    return v0
.end method

.method public isTimeMachineDeleteDone()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mTimeMachineDeleteDone:Z

    return v0
.end method

.method public isVideoEffectsActive()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoEffectsActive:Z

    return v0
.end method

.method public setCameraId(I)V
    .locals 0
    .param p1, "mCameraId"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraId:I

    .line 89
    return-void
.end method

.method public setCurrentStorageDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCurrentStorageDirectory"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPostViewParameters(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 216
    const-string v7, "CameraApp"

    const-string v10, "setupCaptureParams"

    invoke-static {v7, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_0
    const-string v7, "capturedUriList"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    .local v0, "capturedUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 223
    .local v5, "uriListSize":I
    if-nez v5, :cond_0

    .line 224
    const-string v7, "CameraApp"

    const-string v9, "Image List size is 0 !! return to preview."

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 290
    .end local v0    # "capturedUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "uriListSize":I
    :goto_0
    return v7

    .line 227
    .restart local v0    # "capturedUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "uriListSize":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 228
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 229
    .local v6, "uriString":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 230
    iget-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    .end local v3    # "i":I
    .end local v5    # "uriListSize":I
    .end local v6    # "uriString":Ljava/lang/String;
    :cond_2
    const-string v7, "app_mode"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mApplicationMode:I

    .line 238
    const-string v7, "camera_dimension"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraDimension:I

    .line 239
    const-string v7, "cameraId"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraId:I

    .line 240
    iget-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    .line 241
    const-string v7, "saveFileName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    .line 242
    invoke-direct {p0, p2}, Lcom/lge/camera/postview/PostViewParameters;->setupShotModeCaptureParam(Landroid/content/Intent;)V

    .line 244
    iget-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    if-eqz v7, :cond_3

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    invoke-static {v7, v10}, Lcom/lge/camera/util/Common;->getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "mRealSavedName":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 248
    iput-object v4, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    .line 251
    .end local v4    # "mRealSavedName":Ljava/lang/String;
    :cond_3
    const-string v7, "currentStorage"

    const/4 v10, 0x1

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorage:I

    .line 252
    const-string v7, "currentStorageDir"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 253
    const-string v7, "timeMachineStorageDir"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mTimeMachineStorageDirectory:Ljava/lang/String;

    .line 254
    const-string v7, "isAttachMode"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsAttachMode:Z

    .line 255
    const-string v7, "isAttachIntent"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsAttachIntent:Z

    .line 256
    const-string v7, "isMmsVideo"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mIsMmsVideo:Z

    .line 257
    const-string v7, "autoReview"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mAutoReview:Ljava/lang/String;

    .line 258
    const-string v7, "videoExtension"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoExtension:Ljava/lang/String;

    .line 260
    const-string v7, "currentOrientation"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mPreviewOrientation:I

    .line 261
    const-string v7, "effectsActive"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoEffectsActive:Z

    .line 262
    const-string v7, "effectsSizeOnScreen"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoEffectSizeOnScreen:Ljava/lang/String;

    .line 263
    const-string v7, "locationLatitude"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v7, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mLocationLatitude:D

    .line 264
    const-string v7, "locationLongitude"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v7, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mLocationLongitude:D

    .line 265
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mTimeMachineDeleteDone:Z

    .line 268
    const-string v7, "secureCamera"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mSecureCamera:Z

    .line 269
    const-string v7, "useSecureLockImage"

    const/4 v10, 0x0

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mUseSecureLockImage:Z

    .line 271
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mCameraId:I

    if-nez v7, :cond_4

    .line 272
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentZoom:[Ljava/lang/String;

    .line 273
    const-string v7, "currentZoom"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentZoom:[Ljava/lang/String;

    .line 277
    :cond_4
    iget v7, p0, Lcom/lge/camera/postview/PostViewParameters;->mApplicationMode:I

    if-nez v7, :cond_5

    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ".jpg"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "fullfilename":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v8

    .line 284
    goto/16 :goto_0

    .line 280
    .end local v2    # "fullfilename":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/lge/camera/postview/PostViewParameters;->mVideoExtension:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "fullfilename":Ljava/lang/String;
    goto :goto_2

    .line 286
    .end local v0    # "capturedUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "fullfilename":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CameraApp"

    const-string v9, "Exception!"

    invoke-static {v7, v9, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v8

    .line 288
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "capturedUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "fullfilename":Ljava/lang/String;
    :cond_6
    move v7, v9

    .line 290
    goto/16 :goto_0
.end method

.method public setPreviewOrientation(I)V
    .locals 0
    .param p1, "mPreviewOrientation"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/lge/camera/postview/PostViewParameters;->mPreviewOrientation:I

    .line 157
    return-void
.end method

.method public setSaveFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSaveFileName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewParameters;->mSaveFileName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSavedUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "mSavedUri"    # Landroid/net/Uri;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewParameters;->mSavedUri:Landroid/net/Uri;

    .line 105
    return-void
.end method

.method public setUriList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "mUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/lge/camera/postview/PostViewParameters;->mUriList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method public useSecureLockImage()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostViewParameters;->mUseSecureLockImage:Z

    return v0
.end method
