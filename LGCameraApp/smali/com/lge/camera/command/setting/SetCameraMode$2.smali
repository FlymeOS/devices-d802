.class Lcom/lge/camera/command/setting/SetCameraMode$2;
.super Ljava/lang/Object;
.source "SetCameraMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraMode;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraMode;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    const-string v2, "back"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    const-string v2, "front"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
