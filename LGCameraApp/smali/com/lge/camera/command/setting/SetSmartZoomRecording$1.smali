.class Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;
.super Ljava/lang/Object;
.source "SetSmartZoomRecording.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSmartZoomRecording;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSmartZoomRecording;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 91
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_smart_zoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "mMenuIndex":I
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_zoom"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    .line 96
    const-string v2, "CameraApp"

    const-string v3, "setting rollback to off. no Previewing now"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    .line 100
    .local v1, "video_state":I
    if-eqz v1, :cond_2

    .line 101
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_zoom"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting rollback to off. video is not idle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "resetting Smart Zoom Recording Parameter in previewing!!!! "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateSmartZoomRecordingSelection()Z

    .line 109
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartZoomRecording$1;->this$0:Lcom/lge/camera/command/setting/SetSmartZoomRecording;

    iget-object v2, v2, Lcom/lge/camera/command/setting/SetSmartZoomRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    goto :goto_0
.end method
