.class public Lcom/lge/camera/command/HidePIPFrameSubMenu;
.super Lcom/lge/camera/command/Command;
.source "HidePIPFrameSubMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 28
    const-string v2, "CameraApp"

    const-string v3, "HidePIPFrameSubMenu executed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/lge/camera/command/HidePIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0123

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 32
    .local v1, "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->close()V

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/HidePIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0122

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "pipFrameSlidingMenuView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 37
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_1
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 43
    const-string v3, "CameraApp"

    const-string v4, "HidePIPFrameSubMenu executed arg exist"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 44
    check-cast v0, Landroid/os/Bundle;

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "only_handle_close"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 47
    .local v1, "handle_close":Z
    if-eqz v1, :cond_1

    .line 48
    iget-object v3, p0, Lcom/lge/camera/command/HidePIPFrameSubMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0123

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 50
    .local v2, "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->close()V

    .line 56
    .end local v2    # "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/command/HidePIPFrameSubMenu;->execute()V

    goto :goto_0
.end method
