.class public Lcom/lge/camera/components/SmartZoomFocusView;
.super Landroid/view/View;
.source "SmartZoomFocusView.java"


# instance fields
.field private mCurrentDegree:I

.field private mFocusBitmapAuto:Landroid/graphics/Bitmap;

.field private mFocusBitmapAutoHeight:I

.field private mFocusBitmapAutoRes:I

.field private mFocusBitmapAutoWidth:I

.field private mFocusBitmapManual:Landroid/graphics/Bitmap;

.field private mFocusBitmapManualHeight:I

.field private mFocusBitmapManualRes:I

.field private mFocusBitmapManualWidth:I

.field private mFocusMode:I

.field private mLeftTopX:I

.field private mLeftTopY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousDegree:I

.field private mPreviousFocusMode:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightBottomX:I

.field private mRightBottomY:I

.field private mSubWindowHandlerThick:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 27
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 28
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 31
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 32
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 34
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 37
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 38
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 39
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 40
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 42
    const v0, 0x7f020386

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 43
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 44
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 46
    const v0, 0x7f020387

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 47
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 48
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 27
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 28
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 31
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 32
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 34
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 37
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 38
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 39
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 40
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 42
    const v0, 0x7f020386

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 43
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 44
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 46
    const v0, 0x7f020387

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 47
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 48
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 67
    iput p2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 68
    iput p3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 69
    iput p4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 70
    iput p5, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 27
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 28
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 31
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 32
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 34
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 37
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 38
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 39
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 40
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 42
    const v0, 0x7f020386

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 43
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 44
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 46
    const v0, 0x7f020387

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 47
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 48
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 27
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 28
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 29
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 31
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 32
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 34
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    .line 37
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 38
    iput-object v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 39
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 40
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 42
    const v0, 0x7f020386

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    .line 43
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 44
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 46
    const v0, 0x7f020387

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    .line 47
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 48
    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->prepare()V

    .line 58
    return-void
.end method

.method private setPosition(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    .line 105
    iput p2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    .line 106
    iput p3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    .line 107
    iput p4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    .line 108
    return-void
.end method

.method private updatePosition()V
    .locals 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->invalidate()V

    .line 113
    return-void
.end method


# virtual methods
.method public getSmartZoomFocusViewMode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xb4

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/16 v6, 0xff

    .line 134
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    .line 137
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    if-ne v2, v7, :cond_5

    .line 138
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x66

    const/16 v4, 0xd3

    const/16 v5, 0xec

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mSubWindowHandlerThick:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    iget v5, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    iget v6, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomX:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopX:I

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 150
    .local v0, "centerX":I
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRightBottomY:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mLeftTopY:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 152
    .local v1, "centerY":I
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    if-ne v2, v7, :cond_7

    .line 153
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    if-eq v2, v3, :cond_3

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 159
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-ne v2, v8, :cond_6

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 165
    :goto_1
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 166
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_4
    :goto_2
    return-void

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_0

    .line 162
    .restart local v0    # "centerX":I
    .restart local v1    # "centerY":I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 171
    :cond_7
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    if-eq v2, v3, :cond_b

    .line 172
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 173
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 177
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    if-ne v2, v8, :cond_c

    .line 178
    :cond_a
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 183
    :goto_3
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousDegree:I

    .line 184
    iget v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    iput v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPreviousFocusMode:I

    .line 186
    :cond_b
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 180
    :cond_c
    iget-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoRes:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualRes:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 79
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    .line 80
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    .line 81
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    .line 82
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    .line 83
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoWidth:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_AUTO_ZOOM_AREA_MARGIN_WIDTH:I

    .line 84
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAutoHeight:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_AUTO_ZOOM_AREA_MARGIN_HEIGHT:I

    .line 85
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualWidth:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_MANUAL_ZOOM_AREA_MARGIN_WIDTH:I

    .line 86
    iget v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManualHeight:I

    sput v0, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_MANUAL_ZOOM_AREA_MARGIN_HEIGHT:I

    .line 87
    return-void
.end method

.method public setPositionAndUpdate(IIIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 116
    iput p5, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mCurrentDegree:I

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/components/SmartZoomFocusView;->setPosition(IIII)V

    .line 118
    invoke-direct {p0}, Lcom/lge/camera/components/SmartZoomFocusView;->updatePosition()V

    .line 119
    return-void
.end method

.method public setSmartZoomFocusViewMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusMode:I

    .line 123
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mRect:Landroid/graphics/Rect;

    .line 91
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapAuto:Landroid/graphics/Bitmap;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    iput-object v1, p0, Lcom/lge/camera/components/SmartZoomFocusView;->mFocusBitmapManual:Landroid/graphics/Bitmap;

    .line 101
    :cond_1
    return-void
.end method
