.class Lcom/lge/camera/controller/PreviewPanelController$4;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->setRefocusReviewIconVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;Z)V
    .locals 0

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1420
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->val$show:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1422
    .local v0, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0194

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    .end local v0    # "visible":I
    :cond_0
    return-void

    .line 1420
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
