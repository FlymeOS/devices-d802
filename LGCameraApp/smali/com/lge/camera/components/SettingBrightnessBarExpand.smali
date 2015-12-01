.class public Lcom/lge/camera/components/SettingBrightnessBarExpand;
.super Lcom/lge/camera/components/BrightnessBar;
.source "SettingBrightnessBarExpand.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BrightnessBar;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BrightnessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BrightnessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected disallowTouchInParentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 60
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 62
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fa

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->MIN_CURSOR_POS:I

    .line 38
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090102

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->CURSOR_WIDTH:F

    .line 39
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090103

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->CURSOR_POS_WIDTH:I

    .line 41
    iget v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->MIN_CURSOR_POS:I

    iget v1, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->CURSOR_POS_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->MAX_CURSOR_POS:I

    .line 43
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013e

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->RELEASE_EXPAND_LEFT:I

    .line 44
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013f

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->RELEASE_EXPAND_TOP:I

    .line 45
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090140

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->RELEASE_EXPAND_RIGHT:I

    .line 46
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090141

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->RELEASE_EXPAND_BOTTOM:I

    .line 48
    return-void
.end method

.method public startRotation(IZ)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/components/BarAction;->rotateSettingBar(II)V

    .line 55
    :cond_0
    return-void
.end method

.method public updateBar(IZZZ)V
    .locals 6
    .param p1, "step"    # I
    .param p2, "others"    # Z
    .param p3, "isLongTouch"    # Z
    .param p4, "actionEnd"    # Z

    .prologue
    .line 68
    iget v1, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mValue:I

    .line 69
    .local v1, "lValue":I
    iget-boolean v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mInitial:Z

    if-eqz v3, :cond_1

    if-nez p4, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-nez v3, :cond_2

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    if-eqz p4, :cond_3

    .line 79
    iget-object v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->getCursorValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setBarSettingValue(Ljava/lang/String;I)V

    .line 80
    if-eqz p3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    add-int v2, v1, p1

    .line 88
    .local v2, "updatedValue":I
    iget v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mCursorMaxStep:I

    if-le v2, v3, :cond_4

    .line 89
    iget v2, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mCursorMaxStep:I

    .line 92
    :cond_4
    if-gez v2, :cond_5

    .line 93
    const/4 v2, 0x0

    .line 96
    :cond_5
    if-eq v2, v1, :cond_1

    .line 98
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setCursorValue(I)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->getCursorValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setCursor(I)V

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "mValue"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    if-eqz p3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->barSettingCommand:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->resetDisplayTimeout()V

    .line 110
    invoke-virtual {p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->updateAllBars()V

    goto :goto_0

    .line 107
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v4, p0, Lcom/lge/camera/components/SettingBrightnessBarExpand;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;)V

    goto :goto_1
.end method
