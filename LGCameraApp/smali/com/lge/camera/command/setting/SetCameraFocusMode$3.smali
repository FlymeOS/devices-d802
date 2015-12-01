.class Lcom/lge/camera/command/setting/SetCameraFocusMode$3;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusAuto(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
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
    .line 158
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->val$allSetting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 161
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "smartMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isfacePreviewInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "not found"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "shotMode":Ljava/lang/String;
    const-string v2, "shotmode_normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "not found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->releaseAllEngine()V

    .line 174
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 178
    iget-boolean v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->val$allSetting:Z

    if-eqz v2, :cond_4

    .line 179
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    # invokes: Lcom/lge/camera/command/setting/SetCameraFocusMode;->showFocusForSetFocusMode()V
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->access$000(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 182
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkFaceDetectionNoUI()Z

    move-result v2

    if-nez v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 185
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->startFaceDetection(Z)V

    .line 187
    :cond_5
    return-void
.end method
