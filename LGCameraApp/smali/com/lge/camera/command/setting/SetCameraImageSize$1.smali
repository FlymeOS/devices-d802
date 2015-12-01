.class Lcom/lge/camera/command/setting/SetCameraImageSize$1;
.super Ljava/lang/Object;
.source "SetCameraImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraImageSize;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

.field final synthetic val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraImageSize;Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 209
    return-void
.end method
