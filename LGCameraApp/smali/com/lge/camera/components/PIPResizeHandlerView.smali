.class public Lcom/lge/camera/components/PIPResizeHandlerView;
.super Landroid/view/View;
.source "PIPResizeHandlerView.java"


# instance fields
.field private mLeftTopX:I

.field private mLeftTopY:I

.field private mMovingEdges:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

.field private mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

.field private mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

.field private mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

.field private mRightBottomX:I

.field private mRightBottomY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 27
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 28
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 29
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 30
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 31
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 35
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 27
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 28
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 29
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 30
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 31
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 35
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/camera/components/PIPResizeHandlerView;->setPosition(IIII)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 27
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 28
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 29
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 30
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 31
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 35
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 27
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 28
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 29
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 30
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 31
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 35
    iput v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method private drawResizeHandlerCorner(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 99
    .local v1, "subWindowHandlerThick":I
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204a3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204a5

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204a4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204a6

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    .line 116
    :cond_3
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    if-nez v2, :cond_10

    const/4 v0, 0x1

    .line 118
    .local v0, "notMoving":Z
    :goto_0
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    .line 121
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    iget-object v5, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Left:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    :cond_6
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_8

    :cond_7
    if-eqz v0, :cond_9

    .line 129
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget-object v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    iget-object v5, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Bottom_Right:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    :cond_9
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_b

    :cond_a
    if-eqz v0, :cond_c

    .line 138
    :cond_b
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Left:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    :cond_c
    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_e

    :cond_d
    if-eqz v0, :cond_f

    .line 145
    :cond_e
    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget-object v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mResizeHandler_Top_Right:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    :cond_f
    return-void

    .line 116
    .end local v0    # "notMoving":Z
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v0, v1

    .line 82
    .local v0, "subWindowHandlerThick":I
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x5d

    const/16 v4, 0xcd

    const/16 v5, 0xe6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 83
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget v5, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget-object v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    .end local v0    # "subWindowHandlerThick":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/components/PIPResizeHandlerView;->drawResizeHandlerCorner(Landroid/graphics/Canvas;)V

    .line 93
    return-void
.end method

.method public setPosition(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    .line 61
    iput p2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    .line 62
    iput p3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    .line 63
    iput p4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    .line 64
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    .line 56
    iput-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mPaint:Landroid/graphics/Paint;

    .line 57
    return-void
.end method

.method public updatePosition(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mMovingEdges:I

    .line 68
    iget-object v0, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopX:I

    iget v2, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mLeftTopY:I

    iget v3, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomX:I

    iget v4, p0, Lcom/lge/camera/components/PIPResizeHandlerView;->mRightBottomY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    invoke-virtual {p0}, Lcom/lge/camera/components/PIPResizeHandlerView;->invalidate()V

    .line 70
    return-void
.end method
