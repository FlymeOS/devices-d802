.class Lcom/lge/camera/command/setting/SetSmartCameraMode$3;
.super Ljava/lang/Object;
.source "SetSmartCameraMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSmartCameraMode;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSmartCameraMode;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$3;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$3;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$3;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 170
    return-void
.end method
