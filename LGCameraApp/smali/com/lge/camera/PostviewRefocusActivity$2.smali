.class Lcom/lge/camera/PostviewRefocusActivity$2;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity;->showFocusUp(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewRefocusActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$2;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$2;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity$2;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mHideTouchEffect:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$1500(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 885
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 880
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$2;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$2;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020382

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 874
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$2;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/camera/PostviewRefocusActivity;->access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    :cond_0
    return-void
.end method
