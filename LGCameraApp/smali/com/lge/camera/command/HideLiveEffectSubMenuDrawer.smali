.class public Lcom/lge/camera/command/HideLiveEffectSubMenuDrawer;
.super Lcom/lge/camera/command/Command;
.source "HideLiveEffectSubMenuDrawer.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 27
    const-string v2, "CameraApp"

    const-string v3, "HideLiveEffectSubMenuDrawer executed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/lge/camera/command/HideLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00f0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 31
    .local v1, "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->close()V

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/HideLiveEffectSubMenuDrawer;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00ef

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "liveEffectSlidingMenuView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 38
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    return-void
.end method
