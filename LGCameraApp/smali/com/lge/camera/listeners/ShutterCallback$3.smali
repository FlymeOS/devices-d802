.class Lcom/lge/camera/listeners/ShutterCallback$3;
.super Ljava/lang/Object;
.source "ShutterCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/ShutterCallback;->onShutter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/ShutterCallback;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/ShutterCallback;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_normal"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_main_beauty"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "not found"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$3;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.SnapshotEffect"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method
