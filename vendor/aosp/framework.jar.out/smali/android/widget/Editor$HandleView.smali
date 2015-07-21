.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field protected mIsCrossed:Z

.field private mIsDragging:Z

.field protected mIsEdged:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field protected mMoveLeftToRight:Z

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mPreviousX:F

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3864
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 3865
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3856
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3858
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3891
    const/high16 v1, -0x31000000

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousX:F

    .line 3934
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 3935
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 3936
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3937
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3866
    new-instance v1, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 3868
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 3869
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3870
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3871
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3873
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3874
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 3875
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 3878
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 3880
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3882
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    .line 3883
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 3884
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 3885
    return-void
.end method

.method static synthetic access$3502(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$HandleView;
    .param p1, "x1"    # Z

    .prologue
    .line 3835
    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    return p1
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 3945
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3946
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 3947
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3948
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3949
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 3952
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3953
    .local v4, "now":J
    const/4 v0, 0x0

    .line 3954
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3955
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3956
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 3957
    add-int/lit8 v0, v0, 0x1

    .line 3958
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 3961
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 3963
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3965
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    .prologue
    .line 4249
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 4250
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4252
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 4258
    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4264
    .local v1, "left":I
    :goto_0
    return v1

    .line 4254
    .end local v1    # "left":I
    :pswitch_1
    const/4 v1, 0x0

    .line 4255
    .restart local v1    # "left":I
    goto :goto_0

    .line 4261
    .end local v1    # "left":I
    :pswitch_2
    sub-int v1, v2, v0

    .restart local v1    # "left":I
    goto :goto_0

    .line 4252
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 3981
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 3977
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 4068
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4069
    const/4 v0, 0x1

    .line 4076
    :goto_0
    return v0

    .line 4072
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4073
    const/4 v0, 0x0

    goto :goto_0

    .line 4076
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;FF)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 3940
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3941
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3942
    return-void
.end method


# virtual methods
.method public crossHandle(Z)V
    .locals 6
    .param p1, "crossing"    # Z

    .prologue
    .line 3894
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-ne v4, p1, :cond_0

    .line 3916
    :goto_0
    return-void

    .line 3895
    :cond_0
    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    .line 3896
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3897
    .local v3, "temp":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3898
    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 3899
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3901
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 3902
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    .line 3903
    .local v2, "offset":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3905
    .local v1, "line":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3906
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3909
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3910
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3912
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3913
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3915
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    goto :goto_0
.end method

.method protected dismiss()V
    .locals 1

    .prologue
    .line 4003
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4004
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4005
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4007
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4008
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 4268
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4011
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4013
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4014
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4050
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4051
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4053
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_2

    .line 4054
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 4055
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4056
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/widget/Editor$InsertionHandleView;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-object v2, v0, Landroid/widget/Editor;->mCustomMode:Landroid/view/ActionMode;

    .line 4057
    :cond_1
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4060
    :cond_2
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 4403
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isEdgeArea(F)Z
    .locals 6
    .param p1, "positionX"    # F

    .prologue
    .line 4407
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4408
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    .line 4409
    .local v2, "offsetforRtlcheck":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    .line 4411
    .local v1, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-nez v3, :cond_0

    instance-of v3, p0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    neg-float v3, v3

    cmpg-float v3, p1, v3

    if-lez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-nez v3, :cond_2

    instance-of v3, p0, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fa00000    # 1.25f

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 4415
    :cond_1
    const/4 v3, 0x1

    .line 4416
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4063
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3968
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4424
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4425
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4241
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4242
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 4244
    .local v1, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4245
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4246
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 4420
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4421
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3973
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 3974
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4273
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 4399
    :cond_0
    :goto_0
    const/16 v17, 0x1

    return v17

    .line 4275
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4276
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/Editor;->isFloatingWindow()Z
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 4280
    .local v16, "rootView":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 4281
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4304
    .end local v16    # "rootView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    .line 4305
    .local v12, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4306
    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4307
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4309
    sget-boolean v17, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v17, :cond_0

    .line 4310
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mPreviousX:F

    .line 4311
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Editor$SelectionStartHandleView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mMoveLeftToRight:Z

    .line 4312
    :cond_1
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Editor$SelectionEndHandleView;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mMoveLeftToRight:Z

    goto/16 :goto_0

    .line 4283
    .end local v12    # "positionListener":Landroid/widget/Editor$PositionListener;
    :cond_2
    sget-boolean v17, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v17, :cond_4

    .line 4285
    const/16 v16, 0x0

    .line 4286
    .restart local v16    # "rootView":Landroid/view/View;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    .line 4288
    .local v5, "location":[I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 4291
    if-eqz v16, :cond_3

    .line 4293
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4294
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v5, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4297
    :cond_3
    const-string v17, "Editor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Editor Cursor Handle: ACTION_DOWN RawY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " rootView Y:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v5, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4299
    .end local v5    # "location":[I
    .end local v16    # "rootView":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    goto/16 :goto_1

    .line 4318
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v14

    .line 4319
    .local v14, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 4321
    .local v15, "rawY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/Editor;->isFloatingWindow()Z
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 4322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 4323
    .restart local v16    # "rootView":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 4324
    .restart local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    .line 4343
    .end local v16    # "rootView":Landroid/view/View;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v13, v17, v18

    .line 4344
    .local v13, "previousVerticalOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v2, v17, v18

    .line 4346
    .local v2, "currentVerticalOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    move/from16 v17, v0

    cmpg-float v17, v13, v17

    if-gez v17, :cond_a

    .line 4347
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 4348
    .local v8, "newVerticalOffset":F
    invoke-static {v8, v13}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 4353
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4355
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    move/from16 v17, v0

    sub-float v17, v14, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v6, v17, v18

    .line 4356
    .local v6, "newPosX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move/from16 v17, v0

    sub-float v17, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    move/from16 v18, v0

    add-float v7, v17, v18

    .line 4358
    .local v7, "newPosY":F
    sget-boolean v17, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v17, :cond_7

    .line 4359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    .line 4360
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_7

    .line 4361
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousX:F

    move/from16 v17, v0

    cmpg-float v17, v17, v14

    if-gez v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v9, :cond_b

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mMoveLeftToRight:Z

    .line 4363
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$HandleView;->mPreviousX:F

    .line 4367
    .end local v9    # "offset":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4326
    .end local v2    # "currentVerticalOffset":F
    .end local v6    # "newPosX":F
    .end local v7    # "newPosY":F
    .end local v8    # "newVerticalOffset":F
    .end local v13    # "previousVerticalOffset":F
    :cond_8
    sget-boolean v17, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v17, :cond_5

    .line 4328
    const/16 v16, 0x0

    .line 4329
    .restart local v16    # "rootView":Landroid/view/View;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    .line 4331
    .restart local v5    # "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 4332
    if-eqz v16, :cond_9

    .line 4334
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4335
    const/16 v17, 0x1

    aget v17, v5, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    .line 4338
    :cond_9
    const-string v17, "Editor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Editor Cursor Handle: ACTION_MOVE RawY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " rootView Y:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v5, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4350
    .end local v5    # "location":[I
    .end local v16    # "rootView":Landroid/view/View;
    .restart local v2    # "currentVerticalOffset":F
    .restart local v13    # "previousVerticalOffset":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 4351
    .restart local v8    # "newVerticalOffset":F
    invoke-static {v8, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto/16 :goto_3

    .line 4362
    .restart local v6    # "newPosX":F
    .restart local v7    # "newPosY":F
    .restart local v9    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousX:F

    move/from16 v17, v0

    cmpl-float v17, v17, v14

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v9, :cond_6

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mMoveLeftToRight:Z

    goto/16 :goto_4

    .line 4372
    .end local v2    # "currentVerticalOffset":F
    .end local v6    # "newPosX":F
    .end local v7    # "newPosY":F
    .end local v8    # "newVerticalOffset":F
    .end local v9    # "offset":I
    .end local v13    # "previousVerticalOffset":F
    .end local v14    # "rawX":F
    .end local v15    # "rawY":F
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 4373
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4374
    sget-boolean v17, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Editor$SelectionStartHandleView;

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Editor$SelectionEndHandleView;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 4378
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v10

    .line 4379
    .local v10, "offsetforRtlcheck":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    .line 4380
    .local v4, "isRtlCharAtOffset":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/lge/internal/R$bool;->config_editor_reverse_handle_available:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 4383
    .local v3, "isReverseHandleEnabled":Z
    if-eqz v3, :cond_f

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/Editor;->isFloatingWindow()Z
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;
    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 4386
    .restart local v6    # "newPosX":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/Editor$HandleView;->isEdgeArea(F)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/Editor$HandleView;->isEdgeArea(F)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 4387
    :cond_e
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Editor$HandleView;->setVisibility(I)V

    .line 4388
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 4391
    .end local v6    # "newPosX":F
    :cond_f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Editor$HandleView;->showActionPopupWindow(I)V

    goto/16 :goto_0

    .line 4396
    .end local v3    # "isReverseHandleEnabled":Z
    .end local v4    # "isRtlCharAtOffset":Z
    .end local v10    # "offsetforRtlcheck":I
    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 4273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4087
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4088
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 4090
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4120
    :cond_0
    :goto_0
    return-void

    .line 4094
    :cond_1
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_3

    move v2, v3

    .line 4095
    .local v2, "offsetChanged":Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    .line 4096
    :cond_2
    if-eqz v2, :cond_5

    .line 4097
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mIsAleadyBubblePopupStarted:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v5, :cond_4

    .line 4099
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3, v4}, Landroid/widget/Editor;->setShowingBubblePopup(Z)V

    .line 4100
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0

    .end local v2    # "offsetChanged":Z
    :cond_3
    move v2, v4

    .line 4094
    goto :goto_1

    .line 4104
    .restart local v2    # "offsetChanged":Z
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4105
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4107
    :cond_5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4109
    .local v1, "line":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4111
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4114
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4115
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4117
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4118
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3985
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4000
    :goto_0
    return-void

    .line 3987
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3988
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3989
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3990
    .local v0, "selectionEnd":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-eqz v2, :cond_2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/Editor$HandleView;->crossHandle(Z)V

    .line 3993
    .end local v0    # "selectionEnd":I
    .end local v1    # "selectionStart":I
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v2

    invoke-virtual {v2, p0, v4}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3996
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3997
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3999
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0

    .line 3991
    .restart local v0    # "selectionEnd":I
    .restart local v1    # "selectionStart":I
    :cond_2
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-nez v2, :cond_1

    if-le v1, v0, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/Editor$HandleView;->crossHandle(Z)V

    goto :goto_1
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 4017
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v0, v0, Landroid/widget/TextView;->mCanCreateBubblePopup:Z

    if-nez v0, :cond_0

    .line 4047
    :goto_0
    return-void

    .line 4018
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_1

    .line 4019
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4021
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 4022
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 4046
    :goto_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4044
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method protected updateDrawable()V
    .locals 4

    .prologue
    .line 3919
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 3920
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 3922
    .local v0, "isRtlCharAtOffset":Z
    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3923
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v3, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 3924
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 3925
    return-void

    .line 3922
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3923
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 13
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 4124
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v10

    move/from16 v0, p4

    invoke-virtual {p0, v10, v0}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4125
    if-nez p3, :cond_0

    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v10, :cond_d

    .line 4126
    :cond_0
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v10, :cond_3

    .line 4128
    iget v10, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v10, :cond_1

    iget v10, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v10, :cond_2

    .line 4129
    :cond_1
    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v11, p1, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4130
    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v11, p2, v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4131
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4132
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4135
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4138
    :cond_3
    sget-boolean v10, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v10, :cond_5

    if-nez p3, :cond_4

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    instance-of v10, v10, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v10, :cond_5

    .line 4139
    :cond_4
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 4140
    .local v4, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v6

    .line 4141
    .local v6, "offset":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 4143
    .local v5, "line":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4144
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    iput v10, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4147
    iget v10, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4148
    iget v10, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4150
    iput v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4151
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4154
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "line":I
    .end local v6    # "offset":I
    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 4155
    iget v10, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v8, p1, v10

    .line 4156
    .local v8, "positionX":I
    iget v10, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v9, p2, v10

    .line 4158
    .local v9, "positionY":I
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4159
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v7

    .line 4160
    .local v7, "offsetforRtlcheck":I
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 4161
    .local v3, "isRtlCharAtOffset":Z
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/lge/internal/R$bool;->config_editor_reverse_handle_available:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 4164
    .local v2, "isReverseHandleEnabled":Z
    sget-boolean v10, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v10, :cond_7

    if-eqz v2, :cond_7

    if-nez v3, :cond_7

    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-nez v10, :cond_7

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isFloatingWindow()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 4166
    instance-of v10, p0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v10, :cond_10

    .line 4167
    int-to-float v10, v8

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v11, v12

    neg-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_e

    .line 4168
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v10, :cond_6

    .line 4169
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    .line 4170
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4172
    :cond_6
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    .line 4199
    :cond_7
    :goto_0
    sget-boolean v10, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v10, :cond_a

    if-eqz v2, :cond_a

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isFloatingWindow()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v10

    if-nez v10, :cond_8

    if-eqz v3, :cond_a

    :cond_8
    instance-of v10, p0, Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v10, :cond_9

    instance-of v10, p0, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v10, :cond_a

    :cond_9
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    if-eqz v10, :cond_a

    .line 4204
    iget v10, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v8, p1, v10

    .line 4205
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    .line 4206
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4209
    :cond_a
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 4210
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4215
    :goto_1
    sget-boolean v10, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v10, :cond_c

    if-eqz v2, :cond_c

    if-nez v3, :cond_c

    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-nez v10, :cond_c

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isFloatingWindow()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 4218
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsCrossed:Z

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    .line 4219
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4220
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/Editor$HandleView;->setVisibility(I)V

    .line 4221
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 4235
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "isReverseHandleEnabled":Z
    .end local v3    # "isRtlCharAtOffset":Z
    .end local v7    # "offsetforRtlcheck":I
    .end local v8    # "positionX":I
    .end local v9    # "positionY":I
    :cond_c
    :goto_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4237
    :cond_d
    return-void

    .line 4174
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "isReverseHandleEnabled":Z
    .restart local v3    # "isRtlCharAtOffset":Z
    .restart local v7    # "offsetforRtlcheck":I
    .restart local v8    # "positionX":I
    .restart local v9    # "positionY":I
    :cond_e
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v10, :cond_f

    if-nez p4, :cond_f

    .line 4175
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    .line 4176
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4178
    :cond_f
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    goto :goto_0

    .line 4180
    :cond_10
    instance-of v10, p0, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v10, :cond_7

    .line 4181
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v10, v8

    if-lez v10, :cond_12

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3fa00000    # 1.25f

    div-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_12

    .line 4183
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v10, :cond_11

    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v10, :cond_11

    .line 4184
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    .line 4185
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4187
    :cond_11
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v8, v10

    goto/16 :goto_0

    .line 4190
    :cond_12
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v10, :cond_13

    if-nez p4, :cond_13

    .line 4191
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    .line 4192
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4194
    :cond_13
    iget-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsEdged:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v8, v10

    goto/16 :goto_0

    .line 4212
    :cond_14
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 4224
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "isReverseHandleEnabled":Z
    .end local v3    # "isRtlCharAtOffset":Z
    .end local v7    # "offsetforRtlcheck":I
    .end local v8    # "positionX":I
    .end local v9    # "positionY":I
    :cond_15
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 4225
    sget-boolean v10, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-nez v10, :cond_16

    .line 4226
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto/16 :goto_2

    .line 4229
    :cond_16
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4230
    iget-object v10, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_2
.end method

.method protected abstract updateSelection(I)V
.end method
