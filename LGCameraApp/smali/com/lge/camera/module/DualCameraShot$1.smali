.class Lcom/lge/camera/module/DualCameraShot$1;
.super Ljava/lang/Object;
.source "DualCameraShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/DualCameraShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/DualCameraShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/DualCameraShot;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 60
    invoke-static {}, Lcom/lge/filterpacks/DualRecorderFilter;->takePreviewFrame()V

    .line 61
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->playShutterSound()V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SnapshotEffect"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot$1;->this$0:Lcom/lge/camera/module/DualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 66
    return-void
.end method
