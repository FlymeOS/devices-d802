.class public Lcom/lge/camera/components/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# instance fields
.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUseStroke:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/StrokeTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 34
    sget-object v1, Lcom/lge/camera/R$styleable;->stroke:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/camera/components/StrokeTextView;->mUseStroke:Z

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/StrokeTextView;->mStrokeColor:I

    .line 38
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/StrokeTextView;->mStrokeWidth:F

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 43
    iget-boolean v1, p0, Lcom/lge/camera/components/StrokeTextView;->mUseStroke:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/lge/camera/components/StrokeTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 45
    .local v0, "states":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/lge/camera/components/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    invoke-virtual {p0}, Lcom/lge/camera/components/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/components/StrokeTextView;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 47
    iget v1, p0, Lcom/lge/camera/components/StrokeTextView;->mStrokeColor:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/StrokeTextView;->setTextColor(I)V

    .line 49
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/components/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/StrokeTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 55
    .end local v0    # "states":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method
