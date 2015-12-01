.class Lcom/lge/camera/controller/IndicatorController$1;
.super Ljava/lang/Object;
.source "IndicatorController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/IndicatorController;->setVisibleIndicatorView(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/IndicatorController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/IndicatorController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lge/camera/controller/IndicatorController$1;->this$0:Lcom/lge/camera/controller/IndicatorController;

    iput-object p2, p0, Lcom/lge/camera/controller/IndicatorController$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lge/camera/controller/IndicatorController$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/lge/camera/controller/IndicatorController$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/lge/camera/controller/IndicatorController$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 423
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 416
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 413
    return-void
.end method
