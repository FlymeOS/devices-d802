.class public Lcom/lge/camera/listeners/OnKeyEventListener;
.super Ljava/lang/Object;
.source "OnKeyEventListener.java"


# static fields
.field private static mQClipHotkeyFlag:I


# instance fields
.field needFocusFalse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    .line 38
    return-void
.end method

.method private checkHelpDialogForShutterHotKey(Lcom/lge/camera/Mediator;)Z
    .locals 2
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 850
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    .line 852
    .local v0, "dialogId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7e

    if-gt v0, v1, :cond_0

    .line 854
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->onDismissRotateDialog()V

    .line 856
    :cond_0
    const/4 v1, 0x1

    .line 858
    .end local v0    # "dialogId":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkKeyAction(Lcom/lge/camera/Mediator;)Z
    .locals 3
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v0, 0x1

    .line 347
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHideQFLWhenSettingMenuDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPressedShutterButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getBeautyshotProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    const-string v1, "zoom"

    const-string v2, "key_volume"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkShotModeForZoomInOut()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    const v1, 0x7f0a036a

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->toastConstant(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_3
    const v1, 0x7f0a0369

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->toastConstant(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 386
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkQFLmenuAndSubMenu(ILcom/lge/camera/Mediator;Z)Z
    .locals 4
    .param p1, "repeatCount"    # I
    .param p2, "mediator"    # Lcom/lge/camera/Mediator;
    .param p3, "isShutterKey"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 717
    :cond_0
    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V

    .line 718
    invoke-direct {p0, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->dismissRotateDialog(Lcom/lge/camera/Mediator;)V

    .line 752
    :cond_1
    :goto_0
    return v0

    .line 720
    :cond_2
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 721
    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 723
    :cond_3
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_4

    .line 724
    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 726
    :cond_4
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    .line 727
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->restoreLiveEffectSubMenu()V

    .line 728
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0

    .line 730
    :cond_5
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 731
    const-string v1, "com.lge.camera.command.HideModeMenu"

    invoke-virtual {p2, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_6
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_7

    .line 734
    if-eqz p3, :cond_1

    move v0, v1

    .line 735
    goto :goto_0

    .line 738
    :cond_7
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_9

    .line 739
    if-nez p1, :cond_8

    .line 740
    invoke-virtual {p2, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 741
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 742
    const-string v1, "face_tracking"

    const-string v2, "key_focus"

    invoke-virtual {p2, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "manual"

    const-string v2, "key_focus"

    invoke-virtual {p2, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 746
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->showFocus()Z

    .line 749
    :cond_8
    invoke-direct {p0, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->dismissRotateDialog(Lcom/lge/camera/Mediator;)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 752
    goto :goto_0
.end method

.method private checkQFLmenuAndSubMenuForBackKey(Lcom/lge/camera/Mediator;)Z
    .locals 5
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 557
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingControllerShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 563
    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->dismissRotateDialog(Lcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 572
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 573
    const-string v1, "com.lge.camera.command.HideModeMenu"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 579
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/SettingController;->removeChildSettingView(Z)V

    .line 580
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSettingBarControll()V

    goto :goto_0

    .line 584
    :cond_5
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkAndCloseChildView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 590
    :cond_6
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 591
    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_7
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_8

    .line 594
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->restoreLiveEffectSubMenu()V

    .line 595
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 596
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0

    .line 598
    :cond_8
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_9

    move v0, v1

    .line 599
    goto :goto_0

    .line 600
    :cond_9
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_a

    .line 601
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 602
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 603
    const-string v1, "manual"

    const-string v2, "key_focus"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showFocus()Z

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 609
    goto/16 :goto_0
.end method

.method private checkQuickViewForBackKey(Lcom/lge/camera/Mediator;)Z
    .locals 1
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 613
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isShowingQuickView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkShutterHotKeyInCamera(ILcom/lge/camera/Mediator;)Z
    .locals 8
    .param p1, "repeatCount"    # I
    .param p2, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 783
    invoke-direct {p0, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->isTimerSettingActive(Lcom/lge/camera/Mediator;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v2

    .line 787
    :cond_1
    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p2, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "shotmode":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "shotmode_normal"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "shotmode_front_beauty"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "not found"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "shotmode_dual_camera"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 793
    if-gtz p1, :cond_0

    .line 797
    const-string v4, "shotmode_panorama"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 798
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isSynthesisInProgress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 801
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isPanoramaStarted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 802
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->stopPanorama()V

    .line 803
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto :goto_0

    .line 806
    :cond_2
    const-string v4, "shotmode_plane_panorama"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 807
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getPlanePanoramaStatus()I

    move-result v4

    if-eq v4, v2, :cond_0

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getPlanePanoramaStatus()I

    move-result v4

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getPlanePanoramaStatus()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 812
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getPlanePanoramaStatus()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 813
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->stopPlanePanorama()V

    goto :goto_0

    .line 816
    :cond_3
    const-string v4, "shotmode_free_panorama"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 817
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v4

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 821
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 822
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->stopFreePanorama()V

    goto/16 :goto_0

    .line 825
    :cond_4
    const-string v4, "shotmode_continuous"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->stopByUserAction()Z

    move-result v4

    if-nez v4, :cond_0

    .line 828
    :cond_5
    const-string v4, "shotmode_clear_shot"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isCurrnetModuleRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 834
    :cond_6
    const-string v4, "key_camera_auto_review"

    invoke-virtual {p2, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "autoReview":Ljava/lang/String;
    const-string v4, "on_delay_2sec"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "on_delay_5sec"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    if-gtz p1, :cond_0

    .line 839
    :cond_8
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shotmode_front_beauty"

    const-string v5, "key_camera_shot_mode"

    invoke-virtual {p2, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->isCompleteProcessFrame()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_9
    move v2, v3

    .line 846
    goto/16 :goto_0
.end method

.method private checkZoomOnRecord(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "upKey"    # Z
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 394
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportZoomOnRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "zoom"

    const-string v1, "key_volume"

    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "com.lge.camera.command.TakePicture"

    invoke-virtual {p3, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    .line 400
    :cond_0
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_2

    .line 401
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 403
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->updateZoom(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    .line 408
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissRotateDialog(Lcom/lge/camera/Mediator;)V
    .locals 2
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 763
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 766
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->onDismissRotateDialog()V

    .line 767
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->quickFunctionAllMenuSelected(Z)V

    .line 771
    :cond_0
    return-void
.end method

.method private doBackKey(Lcom/lge/camera/Mediator;)Z
    .locals 3
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 480
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    const-string v2, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->isGalleryLaunching()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 457
    :cond_2
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkQFLmenuAndSubMenuForBackKey(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 458
    goto :goto_0

    .line 461
    :cond_3
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkQuickViewForBackKey(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 462
    goto :goto_0

    .line 465
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isOptionMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 466
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->hideOptionMenu()V

    move v0, v1

    .line 467
    goto :goto_0

    .line 470
    :cond_5
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 471
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->doBackKeyForCamera(Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 472
    :cond_6
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 473
    invoke-virtual {p1, v0, v1}, Lcom/lge/camera/Mediator;->checkCamcorderStop(IZ)Z

    move-result v0

    .line 474
    .local v0, "checkCamcorderStop":Z
    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->hideSmartZoomFocusView()V

    .line 476
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->setBackKeyPressed(Z)V

    goto :goto_0
.end method

.method private doBackKeyForCamera(Lcom/lge/camera/Mediator;)Z
    .locals 5
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 484
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->isTimerSettingActive(Lcom/lge/camera/Mediator;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isGestureShotActivated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopTimerShot()Z

    .line 486
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 487
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 488
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showQuickFunctionController()V

    .line 489
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showIndicatorController()V

    .line 490
    const-string v1, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showFocus()Z

    .line 493
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "on"

    const-string v2, "key_voiceshutter"

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    const-string v1, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 497
    :cond_1
    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_front_beauty"

    invoke-virtual {p1, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p1, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    :cond_2
    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->showBeautyshotController(Z)V

    .line 504
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->startGestureEngine()V

    .line 552
    :cond_4
    :goto_0
    return v0

    .line 508
    :cond_5
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isEnteringViewShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 509
    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->showQuickMenuEnteringGuide(Z)V

    goto :goto_0

    .line 513
    :cond_6
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->setResultCancelForAttachMode()V

    .line 515
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 516
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 517
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopPanorama()V

    .line 518
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    goto :goto_0

    .line 521
    :cond_7
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 523
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPlanePanoramaStatus()I

    move-result v2

    if-lt v2, v0, :cond_c

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPlanePanoramaStatus()I

    move-result v2

    if-gt v2, v4, :cond_c

    .line 525
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopPlanePanorama()V

    goto :goto_0

    .line 528
    :cond_8
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 530
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFreePanoramaStatus()I

    move-result v2

    if-gt v2, v4, :cond_c

    .line 532
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopFreePanorama()V

    goto :goto_0

    .line 535
    :cond_9
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopByUserAction()Z

    move-result v2

    if-nez v2, :cond_4

    .line 539
    :cond_a
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_clear_shot"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->stopByUserAction()Z

    move-result v2

    if-nez v2, :cond_4

    .line 543
    :cond_b
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_4

    .line 545
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isExitIgnoreDuringSaving()Z

    move-result v2

    if-nez v2, :cond_4

    .line 547
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getQueueCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_c

    .line 548
    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->setExitIgnoreDuringSaving(Z)V

    .line 549
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->showSavingProgressDialog()V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 552
    goto/16 :goto_0
.end method

.method private doHeadSetHookAndMediaKey(Lcom/lge/camera/Mediator;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 275
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v2

    .line 307
    :cond_1
    :goto_0
    return v1

    .line 280
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_KEY or HEADSETHOOK UP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    const-string v2, "CameraApp"

    const-string v3, "go to incomming call"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 288
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    .line 289
    .local v0, "video_state":I
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_4
    move v1, v2

    .line 294
    goto :goto_0

    .line 297
    .end local v0    # "video_state":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/OnKeyEventListener;->isTimerSettingActive(Lcom/lge/camera/Mediator;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 298
    goto :goto_0

    .line 301
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    const-string v3, "on"

    const-string v4, "key_voiceshutter"

    invoke-virtual {p1, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 303
    goto :goto_0
.end method

.method private doHotKey(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "isKeyDown"    # Z
    .param p4, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v1, 0x0

    .line 201
    if-eqz p2, :cond_0

    sget v2, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    if-ne p1, v2, :cond_0

    .line 202
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->isRinging(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const-string v2, "CameraApp"

    const-string v3, "Do not support photo story in call popup state"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const v2, 0x7f0a03a9

    invoke-virtual {p4, v2}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 211
    .local v0, "nRepeatCount":I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportQClipCustomization()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_QCLIP_HOT_KEY, isKeyDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nRepeatCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 216
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/AppControlUtil;->getQClipHotkeyFlag(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    .line 218
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQClipHotkeyFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    sget v2, Lcom/lge/camera/listeners/OnKeyEventListener;->mQClipHotkeyFlag:I

    sparse-switch v2, :sswitch_data_0

    .line 238
    const-string v2, "CameraApp"

    const-string v3, "Common.QCLIP_HOTKEY_FLAG_NONE"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 242
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->setCameraKeyLongPressed(Z)V

    .line 244
    const-string v2, "on"

    const-string v3, "key_voiceshutter"

    invoke-virtual {p4, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 258
    :cond_4
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 223
    :sswitch_0
    if-eqz p3, :cond_5

    .line 224
    const-string v2, "CameraApp"

    const-string v3, "Common.QCLIP_HOTKEY_FLAG_KEYDOWN_SHUTTER"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1, v0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->doShutterKey(IILcom/lge/camera/Mediator;)Z

    goto :goto_1

    .line 227
    :cond_5
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V

    .line 228
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V

    goto :goto_1

    .line 232
    :sswitch_1
    if-nez p3, :cond_3

    .line 233
    const-string v2, "CameraApp"

    const-string v3, "QCLIP_HOTKEY_FLAG_KEYUP_ROTATE"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v2, -0x1

    invoke-virtual {p4, v2}, Lcom/lge/camera/Mediator;->setOrientationForced(I)V

    goto :goto_1

    .line 250
    :cond_6
    if-eqz p3, :cond_7

    .line 251
    const-string v1, "CameraApp"

    const-string v2, "Common.QCLIP_HOTKEY - shutter"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p1, v0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->doShutterKey(IILcom/lge/camera/Mediator;)Z

    goto :goto_2

    .line 254
    :cond_7
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V

    .line 255
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V

    goto :goto_2

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method private doKeyEnter(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v1, 0x1

    .line 432
    invoke-virtual {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyAction(Lcom/lge/camera/Mediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private doMenuKey(Lcom/lge/camera/Mediator;)Z
    .locals 1
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method private doShutterKey(IILcom/lge/camera/Mediator;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doSubmenuOffAndHideMenu(Ljava/lang/String;ILcom/lge/camera/Mediator;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "repeatCount"    # I
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 756
    if-nez p2, :cond_0

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 758
    invoke-virtual {p3, p1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 760
    :cond_0
    return-void
.end method

.method private doVolumeKeyUpDown(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "upKey"    # Z
    .param p4, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v0, 0x1

    .line 311
    invoke-virtual {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getShowCameraErrorPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-static {}, Lcom/lge/camera/components/CameraCoverView;->isCoverOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v1

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_2

    .line 325
    const/4 v0, 0x0

    goto :goto_0

    .line 328
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    :cond_3
    invoke-direct {p0, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkKeyAction(Lcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkZoomOnRecord(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/listeners/OnKeyEventListener;->updateZoom(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    goto :goto_0
.end method

.method private isTimerSettingActive(Lcom/lge/camera/Mediator;)Z
    .locals 2
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 774
    const-string v1, "key_camera_timer"

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "timerSetting":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    const/4 v1, 0x1

    .line 779
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V
    .locals 3
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->snapshotOnContinuousFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_clear_shot"

    invoke-virtual {p1, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_panorama"

    invoke-virtual {p1, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    :cond_1
    :goto_0
    return-void

    .line 869
    :cond_2
    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->setQuickFunctionMenuForcedDisable(Z)V

    .line 870
    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->setQuickButtonForcedDisable(Z)V

    .line 871
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->refreshMenuForVolumeShutterPress()V

    goto :goto_0
.end method

.method private releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V
    .locals 4
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v3, 0x0

    .line 876
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p1, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    iget-boolean v1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    if-eqz v1, :cond_0

    .line 880
    const v1, 0x7f0d0180

    invoke-virtual {p1, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 881
    .local v0, "button":Lcom/lge/camera/components/ShutterButton;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 882
    iput-boolean v3, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    .line 885
    .end local v0    # "button":Lcom/lge/camera/components/ShutterButton;
    :cond_0
    return-void
.end method

.method private updateZoom(Landroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "upKey"    # Z
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 412
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v4

    .line 415
    :cond_1
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2

    .line 423
    const-string v0, "com.lge.camera.command.ShowZoom"

    invoke-virtual {p3, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 425
    :cond_2
    if-eqz p2, :cond_3

    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    .line 426
    .local v2, "zoomStep":I
    :goto_1
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    move-object v3, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/components/ZoomBar;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    goto :goto_0

    .line 425
    .end local v2    # "zoomStep":I
    :cond_3
    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    goto :goto_1
.end method


# virtual methods
.method public checkMediator(Lcom/lge/camera/Mediator;)Z
    .locals 3
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v0, 0x0

    .line 625
    if-nez p1, :cond_0

    .line 626
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is not initialized..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_0
    return v0

    .line 629
    :cond_0
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is not initialized..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 634
    const-string v1, "CameraApp"

    const-string v2, "checkKeyOperation : return, mediator is pausing..."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    sget v2, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    if-eq p1, v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 128
    :goto_0
    return v0

    .line 54
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 128
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHotKey(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 56
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_MENU"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/lge/camera/components/CameraCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doMenuKey(Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 63
    :sswitch_1
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doBackKey(Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 67
    :sswitch_2
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_CAMERA"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkMediator(Lcom/lge/camera/Mediator;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->shutterHotKey(IILcom/lge/camera/Mediator;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 73
    goto :goto_0

    :cond_3
    move v0, v1

    .line 75
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 87
    goto :goto_0

    .line 92
    :sswitch_4
    const-string v0, "CameraApp"

    const-string v1, "&&KEYCODE_ENTER"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doKeyEnter(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 96
    :sswitch_5
    const-string v0, "CameraApp"

    const-string v2, "&&KEYCODE_VOLUME_UP"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doVolumeKeyUpDown(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    .line 100
    :sswitch_6
    const-string v1, "CameraApp"

    const-string v2, "&&KEYCODE_VOLUME_DOWN"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doVolumeKeyUpDown(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v0

    goto :goto_0

    :sswitch_7
    move v0, v1

    .line 108
    goto :goto_0

    .line 118
    :sswitch_8
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_KEY or HEADSETHOOK DOWN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p3, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHeadSetHookAndMediaKey(Lcom/lge/camera/Mediator;Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 123
    :sswitch_9
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_SEARCH"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_3
        0x18 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1b -> :sswitch_2
        0x42 -> :sswitch_4
        0x4f -> :sswitch_8
        0x50 -> :sswitch_7
        0x52 -> :sswitch_0
        0x54 -> :sswitch_9
        0x55 -> :sswitch_8
        0x56 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/lge/camera/Mediator;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 136
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v5

    .line 143
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 196
    invoke-direct {p0, p1, p2, v5, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHotKey(ILandroid/view/KeyEvent;ZLcom/lge/camera/Mediator;)Z

    move-result v5

    goto :goto_0

    .line 146
    :sswitch_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_MENU or KEYCODE_BACK keyup"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :sswitch_1
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_VOLUME keyUp."

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez p3, :cond_2

    move v5, v4

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_0

    .line 162
    :cond_3
    const-string v0, "zoom"

    const-string v2, "key_volume"

    invoke-virtual {p3, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x42

    if-eq p1, v0, :cond_5

    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 165
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    move-object v3, v1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/components/ZoomBar;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    .line 170
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    :cond_4
    :goto_1
    move v5, v4

    .line 183
    goto :goto_0

    .line 173
    :cond_5
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->releaseBurstShotPressed(Lcom/lge/camera/Mediator;)V

    .line 174
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->refreshMenusForShutterHotKey(Lcom/lge/camera/Mediator;)V

    .line 176
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {p3, v5}, Lcom/lge/camera/Mediator;->setCameraKeyLongPressed(Z)V

    .line 178
    const-string v0, "on"

    const-string v1, "key_voiceshutter"

    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    goto :goto_1

    .line 193
    :sswitch_2
    invoke-direct {p0, p3, p2}, Lcom/lge/camera/listeners/OnKeyEventListener;->doHeadSetHookAndMediaKey(Lcom/lge/camera/Mediator;Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x42 -> :sswitch_1
        0x4f -> :sswitch_2
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public shutterHotKey(IILcom/lge/camera/Mediator;)Z
    .locals 6
    .param p1, "keycode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 642
    invoke-static {}, Lcom/lge/camera/components/CameraCoverView;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v1

    .line 646
    :cond_1
    const-string v3, "shutter"

    const-string v4, "key_volume"

    invoke-virtual {p3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportCameraKey()Z

    move-result v3

    if-nez v3, :cond_2

    sget v3, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    if-eq p1, v3, :cond_2

    const/16 v3, 0x42

    if-ne p1, v3, :cond_a

    .line 651
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shutterHotKey : repeatCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isOptionMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 654
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->hideOptionMenu()V

    goto :goto_0

    .line 658
    :cond_3
    invoke-direct {p0, p2, p3, v1}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkQFLmenuAndSubMenu(ILcom/lge/camera/Mediator;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkHelpDialogForShutterHotKey(Lcom/lge/camera/Mediator;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/lge/camera/listeners/OnKeyEventListener;->checkShutterHotKeyInCamera(ILcom/lge/camera/Mediator;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 668
    :cond_4
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-ne v3, v1, :cond_5

    invoke-virtual {p3, p2, v2}, Lcom/lge/camera/Mediator;->checkCamcorderStop(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 670
    goto :goto_0

    .line 673
    :cond_5
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 674
    const-string v2, "CameraApp"

    const-string v3, "KeyEvent.KEYCODE_HOT_KEY return, not previewing"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_6
    const v3, 0x7f0d0180

    invoke-virtual {p3, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 679
    .local v0, "button":Lcom/lge/camera/components/ShutterButton;
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    const-string v3, "CameraApp"

    const-string v4, "KeyEvent.KEYCODE_HOT_KEY"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    if-lez p2, :cond_7

    .line 685
    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->setCameraKeyLongPressed(Z)V

    .line 686
    const-string v3, "on"

    const-string v4, "key_voiceshutter"

    invoke-virtual {p3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 687
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 691
    :cond_7
    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->setQuickFunctionMenuForcedDisable(Z)V

    .line 692
    invoke-virtual {p3, v1}, Lcom/lge/camera/Mediator;->setQuickButtonForcedDisable(Z)V

    .line 693
    iput-boolean v2, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    .line 695
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 696
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 697
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-virtual {p3, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 702
    :cond_8
    invoke-virtual {p3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    goto/16 :goto_0

    .line 705
    :cond_9
    iput-boolean v1, p0, Lcom/lge/camera/listeners/OnKeyEventListener;->needFocusFalse:Z

    goto/16 :goto_0

    .end local v0    # "button":Lcom/lge/camera/components/ShutterButton;
    :cond_a
    move v1, v2

    .line 711
    goto/16 :goto_0
.end method
