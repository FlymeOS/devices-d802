.class Lcom/lge/camera/controller/PreviewController$10;
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
    .line 1973
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v4, 0x7f0d022b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1976
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2002
    :cond_0
    :goto_0
    return v2

    .line 1979
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1980
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1983
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1984
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1985
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1987
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$900(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/ShutterButton;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 1991
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1994
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$900(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/ShutterButton;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 1997
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.TakePicture"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$900(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/ShutterButton;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    goto :goto_0
.end method
