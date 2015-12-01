.class Lcom/lge/camera/command/setting/SetCameraFocusMode$4;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusManual(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

.field final synthetic val$allSetting:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;Z)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->val$allSetting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isfacePreviewInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "shotMode":Ljava/lang/String;
    const-string v1, "shotmode_normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->releaseAllEngine()V

    .line 223
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 227
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->val$allSetting:Z

    if-eqz v1, :cond_7

    .line 228
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_plane_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 249
    :cond_4
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkFaceDetectionNoUI()Z

    move-result v1

    if-nez v1, :cond_5

    .line 251
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 252
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->startFaceDetection(Z)V

    .line 254
    :cond_5
    return-void

    .line 235
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isManualFocusBarVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 237
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0

    .line 241
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v1

    if-nez v1, :cond_8

    .line 242
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 244
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->clearSubMenu(Z)V

    .line 245
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 246
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0
.end method
