.class Landroid/widget/BubblePopupHorizontalScrollView$4;
.super Ljava/lang/Object;
.source "BubblePopupHorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/BubblePopupHorizontalScrollView;->showRightArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BubblePopupHorizontalScrollView;


# direct methods
.method constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Landroid/widget/BubblePopupHorizontalScrollView$4;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 250
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView$4;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/BubblePopupHorizontalScrollView;->access$900(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 255
    return-void
.end method
