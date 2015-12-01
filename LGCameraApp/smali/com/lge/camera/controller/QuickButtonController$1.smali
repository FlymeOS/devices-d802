.class Lcom/lge/camera/controller/QuickButtonController$1;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 575
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->checkOnClick()Z
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$000(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const/4 v6, 0x0

    .line 580
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 742
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$600(Lcom/lge/camera/controller/QuickButtonController;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    # setter for: Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$602(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$600(Lcom/lge/camera/controller/QuickButtonController;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 582
    :pswitch_1
    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "torch"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    :goto_2
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "bundle":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 589
    .restart local v6    # "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 590
    const-string v0, "fromQuickButton"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v0, v1, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v4}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto :goto_1

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 597
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 598
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto/16 :goto_1

    .line 605
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    goto/16 :goto_1

    .line 611
    :pswitch_4
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->checkSettingMenu()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$200(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 612
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$300(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCheckToggleTime(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 614
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowModeMenu"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 615
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V

    .line 617
    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 621
    :pswitch_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->checkSettingMenu()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$200(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 622
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_7

    .line 623
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 624
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_7

    .line 625
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setClearFocusAnimation()V

    .line 626
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 630
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 634
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplaySettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 638
    :pswitch_6
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$300(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 639
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCheckToggleTime(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 640
    const-string v0, "back"

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_swap"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 641
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    const-string v3, "front"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 646
    :goto_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 649
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 653
    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 654
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 656
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsRecording()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$400(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 657
    monitor-exit v1

    goto/16 :goto_0

    .line 682
    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 643
    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    const-string v3, "back"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 661
    :cond_b
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 663
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 666
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsCamera()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickButtonController;->access$500(Lcom/lge/camera/controller/QuickButtonController;)V

    .line 667
    monitor-exit v1

    goto/16 :goto_0

    .line 672
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 673
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 674
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 675
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 677
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 678
    .end local v6    # "bundle":Landroid/os/Bundle;
    .local v7, "bundle":Landroid/os/Bundle;
    :try_start_3
    const-string v0, "subMenuClicked"

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 679
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SwapCamera"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v7, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 680
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v7

    .line 682
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    :cond_d
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 686
    :pswitch_7
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, "flash":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedVideoFlashAuto()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 689
    :cond_e
    const-string v0, "off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 690
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 704
    :goto_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 705
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "bundle":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 706
    .restart local v6    # "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 707
    const-string v0, "fromQuickButton"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 709
    :cond_f
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v0, v1, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 713
    :goto_6
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/16 v1, 0xa

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto/16 :goto_0

    .line 691
    :cond_10
    const-string v0, "on"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 692
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 694
    :cond_11
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 697
    :cond_12
    const-string v0, "off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 698
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 700
    :cond_13
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 711
    :cond_14
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_6

    .line 717
    .end local v8    # "flash":Ljava/lang/String;
    :pswitch_8
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_light"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 718
    .local v9, "light":Ljava/lang/String;
    const-string v0, "off"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 719
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_light"

    const-string v3, "on"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 720
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainBarAlpha(I)V

    .line 721
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setBackgroundColorWhite()V

    .line 722
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->startLightOnAni()V

    .line 723
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->setBacklightToMax(Landroid/app/Activity;)V

    .line 725
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "light_frame"

    const/16 v2, 0x7b

    invoke-interface {v0, v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    .line 735
    :cond_15
    :goto_7
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/16 v1, 0xb

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    goto/16 :goto_1

    .line 727
    :cond_16
    const-string v0, "on"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 728
    const-string v0, "CameraApp"

    const-string v1, "LIGHT_ON : "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_light"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 730
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setBackgroundColorBlack()V

    .line 731
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->startLightOffAni()V

    .line 732
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$1;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->setBacklightToSystemSetting(Landroid/app/Activity;)V

    goto :goto_7

    .line 682
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v9    # "light":Ljava/lang/String;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :catchall_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_4

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
