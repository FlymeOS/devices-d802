.class public Lcom/lge/camera/components/SettingCamera3dDepthBar;
.super Lcom/lge/camera/components/Camera3dDepthBar;
.source "SettingCamera3dDepthBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/components/Camera3dDepthBar;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/Camera3dDepthBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/Camera3dDepthBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fa

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->MIN_CURSOR_POS:I

    .line 35
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fb

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->MAX_CURSOR_POS:I

    .line 36
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fc

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->MAX_CURSOR_POS_PORT:I

    .line 38
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->CURSOR_HEIGHT:F

    .line 39
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fe

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->CURSOR_HEIGHT_PORT:F

    .line 40
    iget v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->MAX_CURSOR_POS:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->CURSOR_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->CURSOR_POS_HEIGHT:I

    .line 41
    iget v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->MAX_CURSOR_POS_PORT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->CURSOR_HEIGHT_PORT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->CURSOR_POS_HEIGHT_PORT:I

    .line 43
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013e

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->RELEASE_EXPAND_LEFT:I

    .line 44
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013f

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->RELEASE_EXPAND_TOP:I

    .line 45
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090140

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->RELEASE_EXPAND_RIGHT:I

    .line 46
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090141

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->RELEASE_EXPAND_BOTTOM:I

    .line 48
    return-void
.end method

.method public startRotation(IZ)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lge/camera/components/SettingCamera3dDepthBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/4 v1, 0x7

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/components/BarAction;->rotateSettingBar(II)V

    .line 55
    :cond_0
    return-void
.end method
