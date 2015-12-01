.class public Lcom/lge/camera/components/ZoomBar;
.super Lcom/lge/camera/components/BarView;
.source "ZoomBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private checkMaxAndMin(I)I
    .locals 1
    .param p1, "inputValue"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result p1

    .line 176
    :cond_0
    if-gez p1, :cond_1

    .line 177
    const/4 p1, 0x0

    .line 179
    :cond_1
    return p1
.end method

.method private updateZoom(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v1, Lcom/lge/camera/components/ZoomBar$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/components/ZoomBar$1;-><init>(Lcom/lge/camera/components/ZoomBar;I)V

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public checkUpdateZoom(I)Z
    .locals 2
    .param p1, "step"    # I

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-boolean v1, p0, Lcom/lge/camera/components/ZoomBar;->mInitial:Z

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getBarLayout()Lcom/lge/camera/components/RotateLayout;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0d024d

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method protected getBarParentLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0d024c

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarSettingValue()V
    .locals 5

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v0

    .line 50
    .local v0, "lValue":I
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->getCameraId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 68
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->barSettingKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "not found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const/4 v0, 0x0

    .line 66
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ZoomBar;->setCursorValue(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->barSettingKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->getZoomCursorMaxStep()I

    move-result v2

    .line 59
    .local v2, "zoomCursorMaxStep":I
    const/4 v1, 0x0

    .line 60
    .local v1, "max":I
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->getMaxZoom()I

    move-result v1

    .line 62
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    goto :goto_1
.end method

.method public releaseBar()V
    .locals 5

    .prologue
    .line 244
    iget-boolean v2, p0, Lcom/lge/camera/components/ZoomBar;->mInitial:Z

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getZoomMaxValue()F

    move-result v2

    float-to-int v0, v2

    .line 249
    .local v0, "zoomMaxValue":I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v1

    .line 250
    .local v1, "zoomValue":I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 251
    mul-int v2, v1, v0

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 253
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoombar : mValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->barSettingKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    goto :goto_0
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fa

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->MIN_CURSOR_POS:I

    .line 74
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fb

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->MAX_CURSOR_POS:I

    .line 75
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fc

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->MAX_CURSOR_POS_PORT:I

    .line 77
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->CURSOR_HEIGHT:F

    .line 78
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fe

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->CURSOR_HEIGHT_PORT:F

    .line 79
    iget v0, p0, Lcom/lge/camera/components/ZoomBar;->MAX_CURSOR_POS:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/ZoomBar;->CURSOR_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/ZoomBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->CURSOR_POS_HEIGHT:I

    .line 80
    iget v0, p0, Lcom/lge/camera/components/ZoomBar;->MAX_CURSOR_POS_PORT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/ZoomBar;->CURSOR_HEIGHT_PORT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/ZoomBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->CURSOR_POS_HEIGHT_PORT:I

    .line 82
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900cc

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_LEFT:I

    .line 83
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900ce

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_TOP:I

    .line 84
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900cd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_RIGHT:I

    .line 85
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900cf

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_BOTTOM:I

    .line 87
    return-void
.end method

.method public updateBar(IZZZ)V
    .locals 10
    .param p1, "step"    # I
    .param p2, "gesture"    # Z
    .param p3, "isLongTouch"    # Z
    .param p4, "actionEnd"    # Z

    .prologue
    const/16 v9, 0x5a

    .line 91
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v2

    .line 92
    .local v2, "lValue":I
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/ZoomBar;->checkUpdateZoom(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 142
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v6}, Lcom/lge/camera/components/BarAction;->getZoomMaxValue()F

    move-result v6

    float-to-int v4, v6

    .line 96
    .local v4, "zoomMaxValue":I
    if-eqz p4, :cond_2

    .line 97
    move v5, v2

    .line 98
    .local v5, "zoomValue":I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 99
    mul-int v6, v5, v4

    div-int/lit8 v5, v6, 0x5a

    .line 101
    :cond_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zoombar : mValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v6, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v7, p0, Lcom/lge/camera/components/ZoomBar;->barSettingKey:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 105
    .end local v5    # "zoomValue":I
    :cond_2
    if-eqz p2, :cond_6

    .line 106
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 107
    mul-int v6, v2, v4

    div-int/lit8 v2, v6, 0x5a

    .line 109
    :cond_3
    invoke-virtual {p0, v4}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 121
    :goto_1
    add-int v3, v2, p1

    .line 123
    .local v3, "updatedValue":I
    invoke-direct {p0, v3}, Lcom/lge/camera/components/ZoomBar;->checkMaxAndMin(I)I

    move-result v3

    .line 125
    if-eq v3, v2, :cond_5

    .line 127
    move v2, v3

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "mValue"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    if-nez v2, :cond_4

    .line 133
    iget-object v6, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v7, p0, Lcom/lge/camera/components/ZoomBar;->barSettingKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v7, p0, Lcom/lge/camera/components/ZoomBar;->barSettingCommand:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    .line 137
    iget-object v6, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v2}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    .line 139
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    invoke-direct {p0, v2}, Lcom/lge/camera/components/ZoomBar;->updateZoom(I)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setCursorValue(I)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    goto/16 :goto_0

    .line 111
    .end local v3    # "updatedValue":I
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    if-eq v6, v9, :cond_7

    .line 113
    mul-int/lit8 v6, v2, 0x5a

    :try_start_0
    div-int v2, v6, v4
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_7
    :goto_2
    invoke-virtual {p0, v9}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/ArithmeticException;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ArithmeticException zoomMaxValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateBarWithValue(IZ)V
    .locals 7
    .param p1, "value"    # I
    .param p2, "actionEnd"    # Z

    .prologue
    const/16 v6, 0x5a

    const/high16 v5, 0x42b40000    # 90.0f

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorValue()I

    move-result v1

    .line 198
    .local v1, "lValue":I
    iget-boolean v4, p0, Lcom/lge/camera/components/ZoomBar;->mInitial:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v4}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v4}, Lcom/lge/camera/components/BarAction;->getZoomMaxValue()F

    move-result v4

    float-to-int v2, v4

    .line 203
    .local v2, "zoomMaxValue":I
    if-eqz p2, :cond_3

    .line 204
    move v3, v1

    .line 205
    .local v3, "zoomValue":I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 206
    mul-int v4, v3, v2

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 208
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v5, p0, Lcom/lge/camera/components/ZoomBar;->barSettingKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 212
    .end local v3    # "zoomValue":I
    :cond_3
    if-eq v1, p1, :cond_0

    .line 216
    move v1, p1

    .line 218
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 219
    mul-int v4, v1, v2

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 221
    :cond_4
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 223
    invoke-direct {p0, v1}, Lcom/lge/camera/components/ZoomBar;->checkMaxAndMin(I)I

    move-result v1

    .line 225
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "mValue"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    if-nez v1, :cond_5

    .line 231
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v5, p0, Lcom/lge/camera/components/ZoomBar;->barSettingKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v5, p0, Lcom/lge/camera/components/ZoomBar;->barSettingCommand:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    .line 236
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v1}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    .line 238
    invoke-direct {p0, v1}, Lcom/lge/camera/components/ZoomBar;->updateZoom(I)V

    .line 239
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursorValue(I)V

    goto :goto_0
.end method

.method public updateZoomText()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 163
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v3, 0x7f0d0251

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .local v1, "zoomText":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 165
    const-string v2, "x %.1f"

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v5}, Lcom/lge/camera/components/BarAction;->getZoomRatio()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "LGLock3-Bold_13_0820.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method
