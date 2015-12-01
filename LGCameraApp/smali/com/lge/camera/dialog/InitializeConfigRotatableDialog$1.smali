.class Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;
.super Ljava/lang/Object;
.source "InitializeConfigRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 47
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetMenuPrepared"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 62
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->onDismiss()V

    .line 65
    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method
