.class public Lcom/lge/camera/components/RotateLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateLayout.java"


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateLayout;->setBackgroundResource(I)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "change"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    sub-int v1, p4, p2

    .line 58
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 59
    .local v0, "height":I
    iget v2, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 62
    :sswitch_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 66
    :sswitch_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 73
    const/4 v1, 0x0

    .local v1, "w":I
    const/4 v0, 0x0

    .line 74
    .local v0, "h":I
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateLayout;->onFinishInflate()V

    .line 77
    :cond_0
    iget v2, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 91
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/components/RotateLayout;->setMeasuredDimension(II)V

    .line 93
    iget v2, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 112
    return-void

    .line 80
    :sswitch_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/lge/camera/components/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 81
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 83
    goto :goto_0

    .line 86
    :sswitch_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/lge/camera/components/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 87
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 88
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 95
    :sswitch_2
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 96
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 99
    :sswitch_3
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 100
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 103
    :sswitch_4
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 104
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 107
    :sswitch_5
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 108
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 93
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public rotateLayout(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 130
    return-void
.end method

.method public setAngle(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 116
    rem-int/lit16 p1, p1, 0x168

    .line 117
    iget v0, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iput p1, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    .line 120
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    goto :goto_0
.end method
