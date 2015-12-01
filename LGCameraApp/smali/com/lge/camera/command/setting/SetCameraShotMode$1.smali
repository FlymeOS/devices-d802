.class Lcom/lge/camera/command/setting/SetCameraShotMode$1;
.super Ljava/lang/Object;
.source "SetCameraShotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraShotMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "shotMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_light"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->setBacklightToMax(Landroid/app/Activity;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->setBacklightToSystemSetting(Landroid/app/Activity;)V

    goto :goto_0
.end method
