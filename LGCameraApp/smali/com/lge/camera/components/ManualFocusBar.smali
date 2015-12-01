.class public Lcom/lge/camera/components/ManualFocusBar;
.super Lcom/lge/camera/components/BarView;
.source "ManualFocusBar.java"


# instance fields
.field private mManualFocusValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/BarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 26
    return-void
.end method


# virtual methods
.method protected getBarLayout()Lcom/lge/camera/components/RotateLayout;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0d00f6

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method protected getBarParentLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0d00f5

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarSettingValue()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/components/ManualFocusBar;->getCursorValue()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 39
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ManualFocusBar;->setCursorValue(I)V

    .line 40
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ManualFocusBar;->setCursor(I)V

    .line 41
    return-void
.end method

.method public getCurrentManualFocusValue()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    return v0
.end method

.method public releaseBar()V
    .locals 4

    .prologue
    .line 74
    iget-boolean v1, p0, Lcom/lge/camera/components/ManualFocusBar;->mInitial:Z

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ManualFocusBar;->getValue()I

    move-result v0

    .line 79
    .local v0, "value":I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/camera/components/ManualFocusBar;->getCursorValue()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 81
    iget-object v1, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const/16 v2, 0x8

    iget v3, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    goto :goto_0
.end method

.method public setBarSettingValue(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 86
    iput p2, p0, Lcom/lge/camera/components/ManualFocusBar;->mManualFocusValue:I

    .line 87
    return-void
.end method

.method public setLayoutDimension()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fa

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->MIN_CURSOR_POS:I

    .line 47
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fb

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->MAX_CURSOR_POS:I

    .line 48
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fc

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->MAX_CURSOR_POS_PORT:I

    .line 50
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fd

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->CURSOR_HEIGHT:F

    .line 51
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f0900fe

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->CURSOR_HEIGHT_PORT:F

    .line 52
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->MAX_CURSOR_POS:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/ManualFocusBar;->CURSOR_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/ManualFocusBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->CURSOR_POS_HEIGHT:I

    .line 53
    iget v0, p0, Lcom/lge/camera/components/ManualFocusBar;->MAX_CURSOR_POS_PORT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/ManualFocusBar;->CURSOR_HEIGHT_PORT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/components/ManualFocusBar;->MIN_CURSOR_POS:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->CURSOR_POS_HEIGHT_PORT:I

    .line 55
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013e

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->RELEASE_EXPAND_LEFT:I

    .line 56
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f09013f

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->RELEASE_EXPAND_TOP:I

    .line 57
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090140

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->RELEASE_EXPAND_RIGHT:I

    .line 58
    iget-object v0, p0, Lcom/lge/camera/components/ManualFocusBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v1, 0x7f090141

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ManualFocusBar;->RELEASE_EXPAND_BOTTOM:I

    .line 60
    return-void
.end method
