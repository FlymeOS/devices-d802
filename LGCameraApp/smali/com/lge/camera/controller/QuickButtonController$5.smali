.class Lcom/lge/camera/controller/QuickButtonController$5;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setAlphaAnimation(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;

.field final synthetic val$start:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$5;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iput-object p2, p0, Lcom/lge/camera/controller/QuickButtonController$5;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/lge/camera/controller/QuickButtonController$5;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 1031
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$5;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1033
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$5;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/lge/camera/controller/QuickButtonController$5;->val$start:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$5;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # setter for: Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$902(Lcom/lge/camera/controller/QuickButtonController;Z)Z

    .line 1036
    :cond_0
    return-void

    .line 1033
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1028
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$5;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v1, 0x1

    # setter for: Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$902(Lcom/lge/camera/controller/QuickButtonController;Z)Z

    .line 1025
    return-void
.end method
