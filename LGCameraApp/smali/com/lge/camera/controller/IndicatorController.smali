.class public abstract Lcom/lge/camera/controller/IndicatorController;
.super Lcom/lge/camera/controller/Controller;
.source "IndicatorController.java"


# static fields
.field protected static final MAX_LEVEL:I = 0x64

.field private static mBatteryIconResources:[I


# instance fields
.field protected mBattLevel:I

.field protected mLeftMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    return-void

    :array_0
    .array-data 4
        0x7f02008c
        0x7f02008d
        0x7f02008e
        0x7f02008f
        0x7f020090
        0x7f020091
        0x7f020092
        0x7f020093
        0x7f020094
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
        0x7f02009d
        0x7f02009e
        0x7f02009f
        0x7f0200a0
        0x7f0200a1
        0x7f0200a2
        0x7f0200a3
        0x7f0200a4
        0x7f0200a5
        0x7f0200a6
        0x7f0200a7
        0x7f0200a8
        0x7f0200a9
        0x7f0200aa
        0x7f0200ab
        0x7f0200ac
        0x7f0200ad
        0x7f0200ae
        0x7f0200af
        0x7f0200b0
        0x7f0200b1
        0x7f0200b2
        0x7f0200b3
        0x7f0200b4
        0x7f0200b5
        0x7f0200b6
        0x7f0200b7
        0x7f0200b8
        0x7f0200b9
        0x7f0200ba
        0x7f0200bb
        0x7f0200bc
        0x7f0200bd
        0x7f0200be
        0x7f0200bf
        0x7f0200c0
        0x7f0200c1
        0x7f0200c2
        0x7f0200c3
        0x7f0200c4
        0x7f0200c5
        0x7f0200c6
        0x7f0200c7
        0x7f0200c8
        0x7f0200c9
        0x7f0200ca
    .end array-data
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 203
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    .line 552
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/IndicatorController;->mLeftMargin:I

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract getLayout()Landroid/view/View;
.end method

.method protected getNewVoiceMailIcon()I
    .locals 11

    .prologue
    const/4 v4, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 230
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    if-eq v3, v4, :cond_0

    move v3, v9

    .line 280
    :goto_0
    return v3

    .line 233
    :cond_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v3, :cond_1

    move v3, v9

    .line 234
    goto :goto_0

    .line 236
    :cond_1
    const/4 v8, 0x0

    .line 238
    .local v8, "vvmCount":I
    const/4 v6, 0x0

    .line 241
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "content://com.lge.provider.vvm/vvmInfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, "VvmInfoURI":Landroid/net/Uri;
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "urgency"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "private"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "from_addrs"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "heard_status"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "mark_as_read"

    aput-object v4, v2, v3

    .line 248
    .local v2, "projection":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 250
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 252
    if-nez v0, :cond_3

    .line 269
    if-eqz v6, :cond_2

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    const/4 v6, 0x0

    :cond_2
    move v3, v9

    goto :goto_0

    .line 257
    :cond_3
    :try_start_1
    const-string v3, "DataBaseApp"

    const-string v4, "Accessing data from VvmInfo Table"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v3, "heard_status=\'N\' AND mark_as_read=\'n\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    const/4 v0, 0x0

    .line 262
    if-eqz v6, :cond_4

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 264
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unread vvm message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_4
    if-eqz v6, :cond_5

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    const/4 v6, 0x0

    .line 275
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "VvmInfoURI":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v8, :cond_7

    .line 276
    const-string v3, "CameraApp"

    const-string v4, "getNewVoiceMailIcon() return = 1"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 277
    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v7

    .line 267
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    if-eqz v6, :cond_5

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    const/4 v6, 0x0

    goto :goto_1

    .line 269
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_6

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    const/4 v6, 0x0

    :cond_6
    throw v3

    .line 279
    :cond_7
    const-string v3, "CameraApp"

    const-string v4, "getNewVoiceMailIcon() return = 0"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v9

    .line 280
    goto/16 :goto_0
.end method

.method public getPicturesRemaining()J
    .locals 2

    .prologue
    .line 463
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract hideIndicator()V
.end method

.method public initController()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getRecentMessageType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(IZ)V

    .line 49
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getNewVoiceMailIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 51
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setBatteryVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->showIndicator()V

    .line 55
    return-void
.end method

.method protected invalidateParentLayout()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected isSmartModeOn()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 450
    iget-boolean v1, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "indiLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 453
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .end local v0    # "indiLayout":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-boolean v1, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "indiLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRecentMessageType()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(IZ)V

    .line 442
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getNewVoiceMailIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 443
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getBatteryLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 445
    .end local v0    # "indiLayout":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 446
    return-void
.end method

.method protected rotateModeMenuIndicator(I)V
    .locals 13
    .param p1, "degree"    # I

    .prologue
    .line 471
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v11, 0x7f0d0047

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateLayout;

    .line 473
    .local v5, "modeMenuLayoutRotate":Lcom/lge/camera/components/RotateLayout;
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v11, 0x7f0d0046

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 474
    .local v4, "modeMenuLayout":Landroid/view/View;
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v11, 0x7f0d0048

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 476
    .local v6, "modeMenuText":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v10

    if-nez v10, :cond_0

    .line 484
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/lge/camera/components/RotateLayout;->setLayoutDirection(I)V

    .line 485
    invoke-virtual {v5, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 487
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0900a4

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 490
    .local v2, "marginLeft":I
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f090197

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 492
    .local v3, "marginTop":I
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v10, v11}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 493
    .local v7, "paddingHorizon":I
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 494
    .local v8, "paddingVertical":I
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "indiLayout":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 498
    .local v1, "indiLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 499
    iget v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-lez v10, :cond_2

    const/4 v2, 0x0

    .line 505
    .end local v1    # "indiLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 507
    .local v9, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 508
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/16 v12, 0xb4

    invoke-static {v10, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 510
    :cond_3
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 511
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 512
    const/16 v10, 0x14

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 513
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 514
    iput v3, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 515
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 516
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v10, v7, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 525
    :goto_2
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/16 v12, 0xb4

    invoke-static {v10, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 526
    const v10, 0x800005

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 548
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setLayoutDirection(I)V

    .line 549
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 501
    .end local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "indiLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-lez v10, :cond_5

    const/4 v2, 0x0

    :cond_5
    goto :goto_1

    .line 518
    .end local v1    # "indiLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 519
    const/16 v10, 0x15

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 520
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 521
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 522
    iput v3, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 523
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v7, v11, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 528
    :cond_7
    const v10, 0x800003

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 531
    :cond_8
    iget-object v10, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 532
    const/16 v10, 0xf

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 533
    const/16 v10, 0x14

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 534
    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 535
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 536
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 537
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v8, v11, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 546
    :goto_4
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 539
    :cond_9
    const/16 v10, 0xe

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 540
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 541
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 542
    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 543
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 544
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v10, v8, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_4
.end method

.method public rotateRemainTextIndicator(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 615
    return-void
.end method

.method public setBatteryIndicator(I)V
    .locals 6
    .param p1, "batteryLevel"    # I

    .prologue
    .line 184
    iget-boolean v2, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0044

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 189
    .local v1, "icon":Lcom/lge/camera/components/RotateImageView;
    sget-object v2, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 190
    sget-object v2, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v2, v2

    add-int/lit8 p1, v2, -0x1

    .line 192
    :cond_1
    sget-object v2, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 194
    iget v2, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a03a2

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActualBatteryLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBatteryVisibility(I)V
    .locals 6
    .param p1, "batteryLevel"    # I

    .prologue
    const/4 v5, 0x0

    .line 206
    iget-boolean v2, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v2, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 210
    sget-object v2, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v2, v2

    add-int/lit8 p1, v2, -0x1

    .line 212
    :cond_1
    if-gez p1, :cond_2

    .line 213
    const/4 p1, 0x0

    .line 215
    :cond_2
    iput p1, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    .line 216
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0044

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 218
    .local v1, "icon":Lcom/lge/camera/components/RotateImageView;
    const/16 v2, 0x1e

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 220
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a03a2

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActualBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setContentDescription(Landroid/view/View;)V
    .locals 1
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    .line 586
    if-eqz p1, :cond_0

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 589
    :cond_0
    return-void
.end method

.method public setContentDescription(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;)V
    .locals 2
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "pref"    # Lcom/lge/camera/setting/ListPreference;

    .prologue
    .line 592
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v0

    const v1, 0x7f02005d

    if-ne v0, v1, :cond_3

    .line 597
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 599
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 604
    if-nez p1, :cond_0

    .line 612
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIndicatorLayout(I)V
    .locals 6
    .param p1, "leftMargin"    # I

    .prologue
    const/4 v5, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, "indiLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 559
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v2, :cond_1

    .line 560
    iget-object v3, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09001a

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 562
    .local v1, "panelWidth":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09001d

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v1, v3

    .line 566
    :cond_0
    iput p1, p0, Lcom/lge/camera/controller/IndicatorController;->mLeftMargin:I

    .line 567
    iget-object v3, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 568
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 569
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 570
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 571
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 578
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    .end local v1    # "panelWidth":I
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 582
    iget-object v3, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/IndicatorController;->rotateRemainTextIndicator(I)V

    .line 583
    return-void

    .line 573
    .restart local v1    # "panelWidth":I
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 574
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 575
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 576
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setMessageIndicatorReceived(IZ)V
    .locals 4
    .param p1, "msgReceived"    # I
    .param p2, "isReadAllMsg"    # Z

    .prologue
    const v3, 0x7f02005d

    .line 61
    iget-boolean v1, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->displayMessageIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/properties/ModelProperties;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 72
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz p2, :cond_3

    .line 73
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;)V

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->invalidateParentLayout()V

    goto :goto_0

    .line 76
    :cond_3
    if-nez p1, :cond_4

    .line 77
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;)V

    goto :goto_1

    .line 79
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 80
    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 81
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a039c

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 84
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 85
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a039d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setModeMenuVisibility(I)V
    .locals 3
    .param p1, "visible"    # I

    .prologue
    .line 314
    iget-boolean v1, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0046

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "modeMenuLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPicturesRemaining(J)V
    .locals 0
    .param p1, "remain"    # J

    .prologue
    .line 620
    return-void
.end method

.method protected setVisibleIndicatorView(IZZ)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "show"    # Z
    .param p3, "animation"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->checkMediator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 399
    if-nez p3, :cond_4

    .line 400
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->isSmartModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 401
    .local v1, "visible":I
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    const/4 v1, 0x4

    .line 406
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "visible":I
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "view":Landroid/view/View;
    :cond_3
    move v1, v2

    .line 400
    goto :goto_0

    .line 409
    :cond_4
    if-eqz p2, :cond_5

    .line 410
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    new-instance v2, Lcom/lge/camera/controller/IndicatorController$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/controller/IndicatorController$1;-><init>(Lcom/lge/camera/controller/IndicatorController;Landroid/view/View;)V

    invoke-static {v0, v1, v4, v5, v2}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 426
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v5, v2}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setVoiceMailIndicator(I)V
    .locals 3
    .param p1, "msgReceived"    # I

    .prologue
    .line 93
    iget-boolean v1, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->displayVisualVoiceMailIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 101
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 102
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 103
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a039e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->invalidateParentLayout()V

    goto :goto_0

    .line 105
    :cond_3
    if-nez p1, :cond_2

    .line 106
    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;)V

    goto :goto_1
.end method

.method public abstract showIndicator()V
.end method

.method public slideIndicatorIn(Z)V
    .locals 0
    .param p1, "useAnimation"    # Z

    .prologue
    .line 644
    return-void
.end method

.method public slideIndicatorOut(Z)V
    .locals 0
    .param p1, "useAnimation"    # Z

    .prologue
    .line 647
    return-void
.end method

.method public startRotation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 468
    return-void
.end method

.method public updateAudioIndicator()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public abstract updateFlashIndicator(ZLjava/lang/String;)V
.end method

.method public updateFocusIndicator()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public updateGpsIndicator()V
    .locals 6

    .prologue
    .line 362
    iget-boolean v4, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v4, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d003e

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 366
    .local v1, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v1, :cond_0

    .line 369
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_tag_location"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 370
    .local v3, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_0

    .line 371
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 373
    .local v2, "loc":Landroid/location/Location;
    if-nez v2, :cond_3

    .line 374
    const-string v4, "CameraApp"

    const-string v5, "Location info not available"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 377
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v4

    const v5, 0x7f02005d

    if-ne v4, v5, :cond_2

    .line 378
    const/4 v0, 0x0

    .line 389
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a039f

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDescription":Ljava/lang/CharSequence;
    goto :goto_1

    .line 385
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_3
    const v4, 0x7f020087

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 386
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a03a0

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDescription":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public updateModeMenuIndicator()V
    .locals 4

    .prologue
    .line 340
    iget-boolean v2, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 348
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/IndicatorController;->setModeMenuVisibility(I)V

    .line 350
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v1, ""

    .line 355
    .local v1, "title":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0048

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 356
    .local v0, "curModeView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    .end local v0    # "curModeView":Landroid/widget/TextView;
    .end local v1    # "title":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentSelectedTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public updateModeMenuIndicator(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-boolean v1, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 331
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->setModeMenuVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0048

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 334
    .local v0, "curModeView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRemainIndicator()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method public updateSceneIndicator(ZLjava/lang/String;)V
    .locals 0
    .param p1, "useLocalSetting"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 629
    return-void
.end method

.method public abstract updateSizeIndicator()V
.end method

.method public updateStabilizationIndicator()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public updateStorageIndicator()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 285
    iget-boolean v4, p0, Lcom/lge/camera/controller/IndicatorController;->mInit:Z

    if-nez v4, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d0043

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 290
    .local v1, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v1, :cond_0

    .line 294
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_storage"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 295
    .local v3, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_0

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "iconIndex":I
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 298
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 302
    :goto_1
    const/4 v0, 0x0

    .line 303
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v4

    const v5, 0x7f02005d

    if-eq v4, v5, :cond_2

    .line 304
    iget-object v4, p0, Lcom/lge/camera/controller/IndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a03a3

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_2
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResources()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 309
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/IndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_3
    const-string v4, "external memory"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public updateTimerIndicator()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public updateVoiceIndicator(Z)V
    .locals 0
    .param p1, "recog"    # Z

    .prologue
    .line 626
    return-void
.end method
