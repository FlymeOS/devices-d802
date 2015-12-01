.class Lcom/lge/camera/command/setting/SetCameraShotMode$2;
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

.field final synthetic val$params:Lcom/lge/hardware/LGCamera$LGParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShotMode;Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$2;->val$params:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$2;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetCameraShotMode"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$2;->val$params:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method
