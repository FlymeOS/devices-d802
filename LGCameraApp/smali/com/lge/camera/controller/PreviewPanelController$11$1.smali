.class Lcom/lge/camera/controller/PreviewPanelController$11$1;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/PreviewPanelController$11;

.field final synthetic val$degree:I

.field final synthetic val$imageBmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController$11;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 2720
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$11;

    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->val$imageBmp:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->val$degree:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2722
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$11;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2723
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$11;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d009f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2725
    .local v0, "lastGalleryImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 2726
    invoke-static {v0}, Lcom/lge/camera/util/Util;->clearImageViewDrawable(Landroid/widget/ImageView;)V

    .line 2727
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->this$1:Lcom/lge/camera/controller/PreviewPanelController$11;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->val$imageBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lge/camera/controller/PreviewPanelController$11$1;->val$degree:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2729
    :cond_0
    return-void
.end method
