.class Lcom/lge/camera/command/setting/SetCameraImageSize$2;
.super Ljava/lang/Object;
.source "SetCameraImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraImageSize;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraImageSize;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 320
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 321
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 322
    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$2;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto :goto_0
.end method
