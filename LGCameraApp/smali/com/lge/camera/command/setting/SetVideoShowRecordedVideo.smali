.class public Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoShowRecordedVideo.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 31
    const-string v1, "CameraApp"

    const-string v2, "SetVideoShowRecordedVideo executed"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "recordMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_auto_review"

    invoke-interface {v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v1, "recordmode_dual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "recordmode_smart_zoom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_auto_review"

    invoke-interface {v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_auto_review"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_auto_review"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    goto :goto_0
.end method
