.class Lcom/lge/camera/controller/PreviewController$9;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1941
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1969
    :cond_0
    :goto_0
    return v4

    .line 1944
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0229

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    # setter for: Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v2, v1}, Lcom/lge/camera/controller/PreviewController;->access$802(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/components/RotateImageButton;)Lcom/lge/camera/components/RotateImageButton;

    .line 1946
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1947
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1948
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1951
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1952
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1953
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1954
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1958
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1959
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1960
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1962
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1963
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.camera.action.CAMERA_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1965
    .local v0, "finishBroadCastIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$9;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
