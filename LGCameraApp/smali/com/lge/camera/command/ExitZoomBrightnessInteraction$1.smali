.class Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;
.super Ljava/lang/Object;
.source "ExitZoomBrightnessInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ExitZoomBrightnessInteraction;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    iget-object v1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v1, v1, Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v1, v1, Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkFocusController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v1, v1, Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "focus":Ljava/lang/String;
    const-string v1, "face_tracking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v1, v1, Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v1, v1, Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v1, v1, Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 50
    .end local v0    # "focus":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$1;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v1, v1, Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->showBeautyShotBarForNewUx(Z)V

    .line 51
    return-void
.end method
