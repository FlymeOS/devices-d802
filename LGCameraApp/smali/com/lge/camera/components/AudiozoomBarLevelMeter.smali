.class public Lcom/lge/camera/components/AudiozoomBarLevelMeter;
.super Landroid/widget/ImageView;
.source "AudiozoomBarLevelMeter.java"


# static fields
.field public static final FORWARD:I


# instance fields
.field private mBox:I

.field private mCurs:F

.field private mHeight:I

.field private mStep:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mCurs:F

    .line 26
    iput v1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mStep:I

    .line 27
    iput v1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mBox:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mCurs:F

    .line 26
    iput v1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mStep:I

    .line 27
    iput v1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mBox:I

    .line 35
    return-void
.end method

.method private isOutOfLevel()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mStep:I

    iget v1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    if-lt v0, v1, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initRecProgressBar(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mWidth:I

    .line 39
    iput p2, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    .line 40
    iget v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mBox:I

    .line 41
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    iget v1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mStep:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mBox:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mCurs:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 81
    .local v0, "value":I
    iget v1, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    if-le v0, v1, :cond_1

    .line 82
    iget v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    .line 87
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iget v2, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mWidth:I

    iget v4, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    return-void

    .line 83
    :cond_1
    if-gez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->isOutOfLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 68
    const/16 p1, 0x64

    .line 73
    :cond_1
    :goto_1
    int-to-float v0, p1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mCurs:F

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->invalidate()V

    goto :goto_0

    .line 69
    :cond_2
    if-gez p1, :cond_1

    .line 70
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public setStep(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mHeight:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->mStep:I

    .line 45
    return-void
.end method
