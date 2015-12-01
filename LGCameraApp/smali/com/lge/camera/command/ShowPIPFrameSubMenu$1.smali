.class Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;
.super Ljava/lang/Object;
.source "ShowPIPFrameSubMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/ShowPIPFrameSubMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "CameraApp"

    const-string v2, "ShutterButton pressed -> block PIPFrameEffect click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I
    invoke-static {v2, v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$002(Lcom/lge/camera/command/ShowPIPFrameSubMenu;I)I

    .line 251
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    # getter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I
    invoke-static {v2}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$000(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setPIPMask(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0127

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "pipDrawerMenu":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    # getter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I
    invoke-static {v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$100(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    # getter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I
    invoke-static {v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$100(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 258
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 259
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    # getter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I
    invoke-static {v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$000(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I

    move-result v1

    if-nez v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 262
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSmartZoomFocusViewMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 263
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->disableObjectTrackingForSmartZoom()V

    .line 264
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->unregisterObjectCallback()V

    .line 273
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    # getter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I
    invoke-static {v2}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$000(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I

    move-result v2

    # setter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I
    invoke-static {v1, v2}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$102(Lcom/lge/camera/command/ShowPIPFrameSubMenu;I)I

    goto/16 :goto_0

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    # getter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I
    invoke-static {v1}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$100(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I

    move-result v1

    if-nez v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->initSmartZoomFocusView()V

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v1, v1, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showSmartZoomFocusView()V

    goto :goto_1

    .line 275
    .end local v0    # "pipDrawerMenu":Landroid/view/View;
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    iget-object v2, p0, Lcom/lge/camera/command/ShowPIPFrameSubMenu$1;->this$0:Lcom/lge/camera/command/ShowPIPFrameSubMenu;

    # getter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenuPrev:I
    invoke-static {v2}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$100(Lcom/lge/camera/command/ShowPIPFrameSubMenu;)I

    move-result v2

    # setter for: Lcom/lge/camera/command/ShowPIPFrameSubMenu;->mPIPFrameSelectedMenu:I
    invoke-static {v1, v2}, Lcom/lge/camera/command/ShowPIPFrameSubMenu;->access$002(Lcom/lge/camera/command/ShowPIPFrameSubMenu;I)I

    goto/16 :goto_0
.end method
