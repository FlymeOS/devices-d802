.class Lcom/lge/camera/controller/PreviewPanelController$21;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->slidePanelOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0

    .prologue
    .line 3536
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$21;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$21;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x0

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1402(Lcom/lge/camera/controller/PreviewPanelController;Z)Z

    .line 3550
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$21;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0183

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3551
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3546
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 3538
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$21;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x1

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1402(Lcom/lge/camera/controller/PreviewPanelController;Z)Z

    .line 3539
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$21;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$21;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    .line 3541
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$21;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setClickable(Z)V

    .line 3543
    :cond_0
    return-void
.end method
