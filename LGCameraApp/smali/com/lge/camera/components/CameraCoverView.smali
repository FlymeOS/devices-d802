.class public Lcom/lge/camera/components/CameraCoverView;
.super Landroid/widget/ImageView;
.source "CameraCoverView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;
    }
.end annotation


# static fields
.field public static final APERTURE_ANGLE:I = 0x2d

.field public static final APERTURE_COUNT:I = 0x8

.field public static final DEGREE_END:I = 0x28

.field public static final DRAW_ANI_START:I = 0x1

.field public static final DRAW_END:I = 0x2

.field public static final DRAW_IDLE:I

.field public static mIsOpen:Z


# instance fields
.field private currentDegree:F

.field private drawableHeight:F

.field private drawableWidth:F

.field private mDrawState:I

.field private mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

.field private pX:F

.field private rootDx:F

.field private rootDy:F

.field private saveCount:I

.field private transX:F

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 48
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 49
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 50
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 51
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 53
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 54
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 49
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 50
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 51
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 53
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 54
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 33
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

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 49
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 50
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 51
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 53
    iput v1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 54
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 37
    return-void
.end method

.method public static isCoverOpen()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    return v0
.end method


# virtual methods
.method public getDrawState()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    .line 98
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    cmpg-float v2, v2, v5

    if-lez v2, :cond_0

    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    packed-switch v2, :pswitch_data_0

    .line 138
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 141
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    .line 142
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    .line 144
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->viewWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    .line 145
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->viewHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    .line 146
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    .line 147
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->drawableWidth:F

    div-float/2addr v2, v4

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    .line 149
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->rootDx:F

    neg-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->rootDy:F

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 152
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    if-lez v1, :cond_3

    .line 154
    const/high16 v2, 0x42340000    # 45.0f

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    iget v4, p0, Lcom/lge/camera/components/CameraCoverView;->drawableHeight:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 156
    :cond_3
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    neg-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->pX:F

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 159
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->transX:F

    neg-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    .end local v1    # "i":I
    :pswitch_0
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 105
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 106
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    invoke-interface {v2}, Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;->onCoverCloseAnimationEnd()V

    .line 108
    iput-object v3, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    goto :goto_1

    .line 112
    :pswitch_1
    sget-boolean v2, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    if-eqz v2, :cond_4

    .line 113
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 115
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    const/high16 v3, 0x42200000    # 40.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 116
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 117
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    goto/16 :goto_0

    .line 121
    :cond_4
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    iget v3, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 122
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 123
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2

    .line 124
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 125
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    goto/16 :goto_1

    .line 130
    :pswitch_2
    iput v5, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 131
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    invoke-interface {v2}, Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;->onCoverOpenAnimationEnd()V

    .line 133
    iput-object v3, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    goto/16 :goto_0

    .line 162
    .restart local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/lge/camera/components/CameraCoverView;->saveCount:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDrawState(IZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "open"    # Z

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    .line 68
    :goto_0
    sput-boolean p2, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    .line 69
    sget-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/lge/camera/components/CameraCoverView;->currentDegree:F

    .line 71
    iget v0, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraCoverView;->invalidate()V

    .line 74
    :cond_0
    return-void

    .line 65
    :cond_1
    iput p1, p0, Lcom/lge/camera/components/CameraCoverView;->mDrawState:I

    goto :goto_0

    .line 69
    :cond_2
    const/high16 v0, 0x42200000    # 40.0f

    goto :goto_1
.end method

.method public setOnCameraCoverListener(Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/camera/components/CameraCoverView;->mListener:Lcom/lge/camera/components/CameraCoverView$OnCameraCoverListener;

    .line 59
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/camera/components/CameraCoverView;->mIsOpen:Z

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    return-void
.end method
