.class Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;
.super Ljava/lang/Object;
.source "TakePictureInRecording.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/TakePictureInRecording;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JpegPictureCallbackInRecording"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/TakePictureInRecording;


# direct methods
.method public constructor <init>(Lcom/lge/camera/command/TakePictureInRecording;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 126
    const-string v0, "CameraApp"

    const-string v1, "#### TIME_CHECK JpegPictureCallbackInRecording()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, "isSuccessSave":Z
    if-nez p1, :cond_1

    .line 133
    const-string v0, "CameraApp"

    const-string v1, "error!! onPictureTaken (jpegData == null)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v6, 0x0

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegData size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    .line 144
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLiveSnapshot Queue count is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v2, v2, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-nez v6, :cond_2

    .line 149
    const-string v0, "CameraApp"

    const-string v1, "savePicture() fail!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a01a0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 151
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 152
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    goto/16 :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SnapshotEffect"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v1, v1, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 157
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 158
    const-string v0, "CameraApp"

    const-string v1, "JpegPictureCallbackInRecording()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
