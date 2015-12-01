.class Lcom/lge/camera/command/SwapCamera$1;
.super Ljava/lang/Object;
.source "SwapCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SwapCamera;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SwapCamera;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SwapCamera;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 161
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 162
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 163
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isLiveEffectDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$1;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 169
    return-void
.end method
