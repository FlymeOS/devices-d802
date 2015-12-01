.class Lcom/lge/camera/controller/PreviewPanelController$13$1;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController$13;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/PreviewPanelController$13;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController$13;)V
    .locals 0

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2834
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2835
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->val$galleryWindowViewImage:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->val$blackCover:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2836
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-boolean v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->val$open:Z

    if-nez v1, :cond_2

    .line 2837
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-boolean v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->val$deleteImage:Z

    if-eqz v1, :cond_1

    .line 2838
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00a1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    .line 2840
    .local v0, "trash":Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2841
    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2843
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # invokes: Lcom/lge/camera/controller/PreviewPanelController;->deleteImageAndUpdateThumbnail()V
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1200(Lcom/lge/camera/controller/PreviewPanelController;)V

    .line 2856
    .end local v0    # "trash":Lcom/lge/camera/components/RotateImageButton;
    :cond_0
    :goto_0
    return-void

    .line 2845
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # invokes: Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1300(Lcom/lge/camera/controller/PreviewPanelController;)V

    goto :goto_0

    .line 2848
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2849
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->val$blackCover:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2851
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2852
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$13$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$13;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v2, 0x3

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->access$1102(Lcom/lge/camera/controller/PreviewPanelController;I)I

    goto :goto_0
.end method
