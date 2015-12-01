.class public Lcom/lge/camera/module/FullFrameContinuousShot;
.super Lcom/lge/camera/module/Module;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# instance fields
.field private freeSpace:J

.field private isStorageFull:Z

.field private isViewInitialized:Z

.field private jpeg_maximum_size:J

.field private mBurstShotProgressView:Landroid/view/View;

.field private mCallbackCountFornVidia:I

.field private mContinuousShotCount:I

.field private mContinuousShotStopped:Z

.field private mIsFullFrameContinuousShotRunning:Z

.field private mTakePictureLock:Ljava/lang/Object;

.field private max_count:I

.field private safeDamper:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 6
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 45
    iput v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    .line 46
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mIsFullFrameContinuousShotRunning:Z

    .line 47
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    .line 48
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    .line 49
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    iput v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    .line 51
    const-wide/32 v0, 0x700000

    iput-wide v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->jpeg_maximum_size:J

    .line 52
    iput-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 53
    iput-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->safeDamper:J

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    .line 55
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    .line 56
    iput v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mCallbackCountFornVidia:I

    .line 473
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mTakePictureLock:Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->setBurstShotView()V

    .line 43
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/camera/module/FullFrameContinuousShot;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/FullFrameContinuousShot;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/module/FullFrameContinuousShot;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/FullFrameContinuousShot;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/module/FullFrameContinuousShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/FullFrameContinuousShot;

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/module/FullFrameContinuousShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/FullFrameContinuousShot;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    return p1
.end method

.method static synthetic access$202(Lcom/lge/camera/module/FullFrameContinuousShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/FullFrameContinuousShot;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/module/FullFrameContinuousShot;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/FullFrameContinuousShot;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mTakePictureLock:Ljava/lang/Object;

    return-object v0
.end method

.method private getAverageSpace(II)D
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 583
    mul-int v2, p1, p2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double v0, v2, v4

    .line 584
    .local v0, "averageSpace":D
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/lge/camera/util/Util;->getPictureSizeScale(ILjava/lang/String;ILjava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 592
    return-wide v0
.end method

.method private getMaxResolutionWidthHeight()[I
    .locals 4

    .prologue
    .line 596
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 597
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 598
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v2

    return-object v2
.end method

.method private processJpegCallbackAfter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 476
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContinuousShotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isBurstShotStop()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 478
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "Continous shot finish process!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-lt v2, v3, :cond_5

    .line 482
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-nez v2, :cond_4

    .line 483
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/module/FullFrameContinuousShot$6;

    invoke-direct {v3, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$6;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    :cond_1
    :goto_0
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-lt v2, v3, :cond_2

    .line 496
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showSavingProgressDialog()V

    .line 500
    invoke-virtual {p0, v6}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 501
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/module/FullFrameContinuousShot$7;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$7;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 516
    .local v0, "stopBurstShotThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 517
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/module/FullFrameContinuousShot$8;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$8;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 559
    .local v1, "waitQueueThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 561
    .end local v0    # "stopBurstShotThread":Ljava/lang/Thread;
    .end local v1    # "waitQueueThread":Ljava/lang/Thread;
    :cond_3
    return-void

    .line 489
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    goto :goto_0

    .line 492
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    goto :goto_0
.end method

.method private setLayoutParams(I)V
    .locals 11
    .param p1, "degree"    # I

    .prologue
    const/16 v10, 0x14

    const/16 v9, 0xf

    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x1

    .line 126
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09001a

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 132
    .local v3, "previewPanelWidth":I
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090250

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 134
    .local v0, "bottomMargin":I
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09001d

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 137
    .local v2, "previewPanelMarginBottom":I
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .local v1, "pp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 143
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 144
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 147
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 185
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v1, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 151
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 154
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x5a

    invoke-static {v4, p1, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    const/16 v4, 0x15

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    add-int v4, v3, v2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 160
    :cond_4
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    add-int v4, v3, v2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 164
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-static {v4, p1, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 166
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 167
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 170
    :cond_6
    invoke-virtual {v1, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 175
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 176
    const/16 v4, 0x15

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 177
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    add-int v4, v3, v2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 180
    :cond_8
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    add-int v4, v3, v2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleTakePictureError(I)V
    .locals 3
    .param p1, "resource"    # I

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 566
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    .line 567
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 568
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 569
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 570
    invoke-virtual {p0, v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 572
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 573
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V

    .line 575
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 577
    invoke-direct {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->processJpegCallbackAfter()V

    .line 578
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 579
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mIsFullFrameContinuousShotRunning:Z

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 308
    const-string v0, "CameraApp"

    const-string v1, "#### TIME_CHECK JpegPictureCallback-FullFrameContinuousShot()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mCallbackCountFornVidia:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mCallbackCountFornVidia:I

    .line 311
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    if-eqz v0, :cond_2

    .line 315
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "mContinoushShotStopped JpegCallBack return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 320
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 321
    const/4 v6, 0x0

    .line 322
    .local v6, "isSuccessSave":Z
    if-nez p1, :cond_3

    .line 323
    const-string v0, "CameraApp"

    const-string v1, "error!! FullFrameContinuousShot-onPictureTaken (jpegData == null)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v6, 0x0

    .line 326
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 331
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalJpegData size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    const-string v0, "CameraApp"

    const-string v1, "error!! FullFrameContinuousShot abnormal jpegData stream"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 338
    :cond_5
    array-length v0, p1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 339
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    .line 341
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0181

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 344
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playBurstShotShutterSound(Z)V

    .line 350
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->updateUIView()V

    .line 352
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isBurstShotStop()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 354
    :cond_7
    const-string v0, "CameraApp"

    const-string v1, "FullFrameContinuous add imagesaver make thumbnail"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 357
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    .line 363
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    .line 389
    :goto_3
    if-eqz v6, :cond_8

    .line 390
    iget-wide v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    array-length v2, p1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 391
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullFrameContinuous free space : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_8
    if-nez v6, :cond_13

    .line 411
    const-string v0, "CameraApp"

    const-string v1, "savePicture() fail!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcom/lge/camera/module/FullFrameContinuousShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playBurstShotShutterSound(Z)V

    goto :goto_1

    .line 360
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    goto :goto_2

    .line 365
    :cond_b
    iget-wide v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    array-length v2, p1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->jpeg_maximum_size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 367
    :cond_c
    const-string v0, "CameraApp"

    const-string v1, "FullFrameContinuous add imagesaver make thumbnail"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 370
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    goto :goto_3

    .line 374
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    goto/16 :goto_3

    .line 379
    :cond_e
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 380
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    goto/16 :goto_3

    .line 383
    :cond_f
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    goto/16 :goto_3

    .line 395
    :cond_10
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNVIDIAChipset()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mCallbackCountFornVidia:I

    iget v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-ge v0, v1, :cond_11

    .line 397
    const-string v0, "CameraApp"

    const-string v1, "waiting maxcountTH jpeg callback for nvidia"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :cond_11
    const-string v0, "CameraApp"

    const-string v1, "savePicture() not enough memory!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    .line 402
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v0

    if-nez v0, :cond_12

    const v7, 0x7f0a005a

    .line 405
    .local v7, "stringId":I
    :goto_4
    invoke-virtual {p0, v7}, Lcom/lge/camera/module/FullFrameContinuousShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 402
    .end local v7    # "stringId":I
    :cond_12
    const v7, 0x7f0a0058

    goto :goto_4

    .line 416
    :cond_13
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const-string v0, "0"

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_zoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 418
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$3;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 426
    :cond_14
    invoke-direct {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->processJpegCallbackAfter()V

    .line 427
    const-string v0, "CameraApp"

    const-string v1, "JpegPictureCallback()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public removewBurstShotView()V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$2;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setBurstShotView()V
    .locals 10

    .prologue
    const v6, 0x7f0d0036

    const/4 v9, 0x1

    .line 59
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f030005

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    .line 65
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 67
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    .local v1, "bpWidth":I
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    .local v0, "bpHeight":I
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/BurstShotProgressBar;

    iget v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    invoke-virtual {v4, v1, v0, v5}, Lcom/lge/camera/components/BurstShotProgressBar;->initBurstShotProgressBar(III)V

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%d"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "maxCount":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v5, 0x7f0d0037

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v5, 0x7f0d0038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iput-boolean v9, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    goto :goto_0
.end method

.method public setIsRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mIsFullFrameContinuousShotRunning:Z

    .line 232
    return-void
.end method

.method public startRotation(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 218
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/camera/module/FullFrameContinuousShot;->setLayoutParams(I)V

    .line 223
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method public stopByOnPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    const-string v0, "CameraApp"

    const-string v1, "stopFullFrameContinuousShotOnPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$5;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 459
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 460
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 461
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 462
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    .line 463
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 465
    const-string v0, "CameraApp"

    const-string v1, "BurstShot CancelPicture Start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera;->cancelPicture()V

    .line 467
    const-string v0, "CameraApp"

    const-string v1, "BurstShot CancelPicture End"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V

    .line 470
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 471
    return-void
.end method

.method public stopByUserAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    const-string v0, "CameraApp"

    const-string v1, "stopFullFrameContinuousShotUserAction"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$4;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 443
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 444
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 446
    invoke-virtual {p0, v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V

    .line 448
    return-void
.end method

.method public takePicture()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 247
    const-string v3, "CameraApp"

    const-string v4, "TIME_CHECK [Module]FullFrameContinuousShot::takePicture-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput v11, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    .line 249
    iput v11, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mCallbackCountFornVidia:I

    .line 250
    iput-boolean v11, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    .line 251
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 252
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 253
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 254
    iput-boolean v11, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    .line 255
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0181

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-nez v3, :cond_3

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v11}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->getMaxResolutionWidthHeight()[I

    move-result-object v1

    .line 262
    .local v1, "max_resolution":[I
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    if-nez v3, :cond_4

    const-wide/32 v4, 0x100000

    :goto_1
    iput-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->safeDamper:J

    .line 264
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->safeDamper:J

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v3

    int-to-long v6, v3

    aget v3, v1, v11

    aget v8, v1, v10

    invoke-direct {p0, v3, v8}, Lcom/lge/camera/module/FullFrameContinuousShot;->getAverageSpace(II)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 268
    iget-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    cmp-long v3, v4, v12

    if-gez v3, :cond_1

    .line 269
    iput-wide v12, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 271
    :cond_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FullFrameContinuous free space :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Storage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "CameraApp"

    const-string v4, "FullFrameContinuous #### Device().takePicture()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, "shutterCallBack":Lcom/lge/camera/listeners/ShutterCallback;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    .end local v2    # "shutterCallBack":Lcom/lge/camera/listeners/ShutterCallback;
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 281
    .restart local v2    # "shutterCallBack":Lcom/lge/camera/listeners/ShutterCallback;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mTakePictureLock:Ljava/lang/Object;

    monitor-enter v4

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct {v7, p0}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->updateUIView()V

    .line 295
    invoke-virtual {p0, v10}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 296
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v11}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 297
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v10}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 298
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v10}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 299
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v10}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 301
    const-string v3, "CameraApp"

    const-string v4, "[Module]FullFrameContinuousShot::takePicture-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_2
    return v10

    .line 259
    .end local v1    # "max_resolution":[I
    .end local v2    # "shutterCallBack":Lcom/lge/camera/listeners/ShutterCallback;
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v10}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    goto/16 :goto_0

    .line 262
    .restart local v1    # "max_resolution":[I
    :cond_4
    const-wide/32 v4, 0x1400000

    goto/16 :goto_1

    .line 286
    .restart local v2    # "shutterCallBack":Lcom/lge/camera/listeners/ShutterCallback;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FullFrameContinuousShot - takePicture  failed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const v3, 0x7f0a0323

    invoke-virtual {p0, v3}, Lcom/lge/camera/module/FullFrameContinuousShot;->handleTakePictureError(I)V

    .line 289
    monitor-exit v4

    goto :goto_2

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public updateUIView()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-boolean v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    if-nez v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->setBurstShotView()V

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    .local v0, "vgInit":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 99
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lge/camera/module/FullFrameContinuousShot;->setLayoutParams(I)V

    .line 101
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 107
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/FullFrameContinuousShot$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$1;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
