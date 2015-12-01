.class Lcom/lge/camera/command/setting/SetCameraMode$1;
.super Ljava/lang/Object;
.source "SetCameraMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraMode;

.field final synthetic val$allSetting:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraMode;Z)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->val$allSetting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->val$allSetting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStorageFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "StorageControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 49
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 50
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_zoom"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_focus"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 53
    const-string v0, "shotmode_dual_camera"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_brightness"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_beautyshot"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_live_effect"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 73
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_record_mode"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 100
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "shotmode_timemachine"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_zoom"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 83
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 87
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSettingControllerVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SelectDuration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->applyCameraChange()V

    .line 97
    const-string v0, "CameraApp"

    const-string v1, "SetCameraMode-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 81
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_2
.end method
