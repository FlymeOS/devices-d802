.class Lcom/lge/camera/controller/PreviewPanelController$13;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;

.field final synthetic val$blackCover:Landroid/view/View;

.field final synthetic val$deleteImage:Z

.field final synthetic val$galleryWindowViewImage:Landroid/view/View;

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;ZLandroid/view/View;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 2821
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->val$open:Z

    iput-object p3, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->val$galleryWindowViewImage:Landroid/view/View;

    iput-object p4, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->val$blackCover:Landroid/view/View;

    iput-boolean p5, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->val$deleteImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$13$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewPanelController$13$1;-><init>(Lcom/lge/camera/controller/PreviewPanelController$13;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 2858
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2829
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2823
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->val$open:Z

    if-nez v0, :cond_0

    .line 2824
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$13;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x2

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$1102(Lcom/lge/camera/controller/PreviewPanelController;I)I

    .line 2826
    :cond_0
    return-void
.end method
