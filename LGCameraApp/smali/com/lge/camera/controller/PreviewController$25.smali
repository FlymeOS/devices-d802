.class Lcom/lge/camera/controller/PreviewController$25;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->jpegCallbackOnDualCameraPictureTaken([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;

.field final synthetic val$frameJpeg:[B


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;[B)V
    .locals 0

    .prologue
    .line 2896
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$25;->this$0:Lcom/lge/camera/controller/PreviewController;

    iput-object p2, p0, Lcom/lge/camera/controller/PreviewController$25;->val$frameJpeg:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$25;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2899
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$25;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$25;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$25;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$25;->val$frameJpeg:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/module/Module;->jpegCallbackOnDualCameraPictureTaken([BLandroid/hardware/Camera;)V

    .line 2902
    :cond_0
    return-void
.end method
