.class Lcom/lge/camera/command/setting/SetCameraFocusMode$6;
.super Ljava/lang/Object;
.source "SetCameraFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraFocusMode;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    # invokes: Lcom/lge/camera/command/setting/SetCameraFocusMode;->showFocusForSetFocusMode()V
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->access$000(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    .line 304
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode$6;->this$0:Lcom/lge/camera/command/setting/SetCameraFocusMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 310
    :cond_0
    return-void
.end method
