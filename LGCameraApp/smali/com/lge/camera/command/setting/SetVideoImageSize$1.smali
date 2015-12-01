.class Lcom/lge/camera/command/setting/SetVideoImageSize$1;
.super Ljava/lang/Object;
.source "SetVideoImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoImageSize;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

.field final synthetic val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startPreviewEffect()V

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 163
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->val$lgParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_0
.end method
