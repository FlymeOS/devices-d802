.class Lcom/lge/camera/controller/ShotModeMenuController$2;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ShotModeMenuController;->shotModeMenuAnimation(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;

.field final synthetic val$aniView:Landroid/view/View;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$2;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput-object p2, p0, Lcom/lge/camera/controller/ShotModeMenuController$2;->val$aniView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/lge/camera/controller/ShotModeMenuController$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$2;->val$aniView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 724
    iget-boolean v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$2;->val$show:Z

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$2;->val$aniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$2;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/ShotModeMenuController$2$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/ShotModeMenuController$2$1;-><init>(Lcom/lge/camera/controller/ShotModeMenuController$2;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 720
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 717
    return-void
.end method
