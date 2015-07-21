.class Lcom/lge/app/floating/TitleView$1;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/TitleView;->activateOpacitySlider(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/TitleView;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/lge/app/floating/TitleView;Z)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    iput-boolean p2, p0, Lcom/lge/app/floating/TitleView$1;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/TitleView$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 305
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # getter for: Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z
    invoke-static {v0}, Lcom/lge/app/floating/TitleView;->access$200(Lcom/lge/app/floating/TitleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView$1;->val$flag:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->runVibrate()V

    .line 295
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # getter for: Lcom/lge/app/floating/TitleView;->mReservedProgress:I
    invoke-static {v1}, Lcom/lge/app/floating/TitleView;->access$300(Lcom/lge/app/floating/TitleView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # getter for: Lcom/lge/app/floating/TitleView;->mOpacitySteps:I
    invoke-static {v2}, Lcom/lge/app/floating/TitleView;->access$400(Lcom/lge/app/floating/TitleView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 296
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # setter for: Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z
    invoke-static {v0, v3}, Lcom/lge/app/floating/TitleView;->access$102(Lcom/lge/app/floating/TitleView;Z)Z

    .line 299
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # setter for: Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z
    invoke-static {v0, v3}, Lcom/lge/app/floating/TitleView;->access$202(Lcom/lge/app/floating/TitleView;Z)Z

    .line 300
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    const/16 v1, 0x64

    # setter for: Lcom/lge/app/floating/TitleView;->mReservedProgress:I
    invoke-static {v0, v1}, Lcom/lge/app/floating/TitleView;->access$302(Lcom/lge/app/floating/TitleView;I)I

    .line 301
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 309
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView$1;->val$flag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z
    invoke-static {v1, v0}, Lcom/lge/app/floating/TitleView;->access$102(Lcom/lge/app/floating/TitleView;Z)Z

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
