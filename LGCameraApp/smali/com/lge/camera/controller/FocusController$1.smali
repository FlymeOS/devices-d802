.class Lcom/lge/camera/controller/FocusController$1;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/FocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/FocusController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/FocusController;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/FocusController;->checkMediator()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v1, v1, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v1, v1, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "focus":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v1, v1, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v1, v1, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    const/16 v2, 0x9

    iput v2, v1, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 189
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator()V

    goto :goto_0
.end method
