.class public Lcom/lge/camera/components/Camera3dDepthBar;
.super Lcom/lge/camera/components/BarView;
.source "Camera3dDepthBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getBarLayout()Lcom/lge/camera/components/RotateLayout;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0d004a

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method protected getBarParentLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0d0049

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarSettingValue()V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/lge/camera/components/Camera3dDepthBar;->getCursorValue()I

    move-result v0

    .line 37
    .local v0, "lValue":I
    iget-object v1, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v2, p0, Lcom/lge/camera/components/Camera3dDepthBar;->barSettingKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lge/camera/components/BarAction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/Camera3dDepthBar;->setCursorValue(I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/Camera3dDepthBar;->setCursor(I)V

    .line 44
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v2, p0, Lcom/lge/camera/components/Camera3dDepthBar;->barSettingKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lge/camera/components/BarAction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public releaseBar()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fa

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->MIN_CURSOR_POS:I

    .line 50
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fb

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->MAX_CURSOR_POS:I

    .line 51
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fc

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->MAX_CURSOR_POS_PORT:I

    .line 53
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->CURSOR_HEIGHT:F

    .line 54
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fe

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->CURSOR_HEIGHT_PORT:F

    .line 55
    iget v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->MAX_CURSOR_POS:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/Camera3dDepthBar;->CURSOR_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/Camera3dDepthBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->CURSOR_POS_HEIGHT:I

    .line 56
    iget v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->MAX_CURSOR_POS_PORT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/Camera3dDepthBar;->CURSOR_HEIGHT_PORT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/Camera3dDepthBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->CURSOR_POS_HEIGHT_PORT:I

    .line 58
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013e

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->RELEASE_EXPAND_LEFT:I

    .line 59
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013f

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->RELEASE_EXPAND_TOP:I

    .line 60
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090140

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->RELEASE_EXPAND_RIGHT:I

    .line 61
    iget-object v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090141

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/Camera3dDepthBar;->RELEASE_EXPAND_BOTTOM:I

    .line 63
    return-void
.end method
