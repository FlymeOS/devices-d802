.class Lcom/lge/camera/module/RefocusShot$1;
.super Ljava/lang/Object;
.source "RefocusShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/RefocusShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/RefocusShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/RefocusShot;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/camera/module/RefocusShot$1;->this$0:Lcom/lge/camera/module/RefocusShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot$1;->this$0:Lcom/lge/camera/module/RefocusShot;

    iget-object v0, v0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot$1;->this$0:Lcom/lge/camera/module/RefocusShot;

    iget-object v0, v0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot$1;->this$0:Lcom/lge/camera/module/RefocusShot;

    iget-object v0, v0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot$1;->this$0:Lcom/lge/camera/module/RefocusShot;

    iget-object v0, v0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v2, p0, Lcom/lge/camera/module/RefocusShot$1;->this$0:Lcom/lge/camera/module/RefocusShot;

    iget-object v2, v2, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v1, v2}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    new-instance v2, Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v3, p0, Lcom/lge/camera/module/RefocusShot$1;->this$0:Lcom/lge/camera/module/RefocusShot;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method
