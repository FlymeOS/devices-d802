.class Lcom/lge/camera/module/MainBeautyShot$1$1;
.super Ljava/lang/Object;
.source "MainBeautyShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/MainBeautyShot$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/module/MainBeautyShot$1;

.field final synthetic val$finalJpegData:[B


# direct methods
.method constructor <init>(Lcom/lge/camera/module/MainBeautyShot$1;[B)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iput-object p2, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->val$finalJpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 125
    const/4 v0, 0x1

    .line 126
    .local v0, "isSaved":Z
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    array-length v1, v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->val$finalJpegData:[B

    invoke-virtual {v1, v2}, Lcom/lge/camera/module/MainBeautyShot;->savePictureInJpegCallback([B)Z

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    invoke-virtual {v1, v0}, Lcom/lge/camera/module/MainBeautyShot;->processJpegCallbackAfter(Z)V

    .line 147
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "savePicture() not enough memory!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a0071

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 131
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 133
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v2, v2, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v2, v2, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 135
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v7}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 137
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    invoke-virtual {v1}, Lcom/lge/camera/module/MainBeautyShot;->releaseBeautyshotJpegCallback()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot$1$1;->this$1:Lcom/lge/camera/module/MainBeautyShot$1;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v1, v1, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto :goto_1
.end method
