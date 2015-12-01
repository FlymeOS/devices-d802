.class Lcom/lge/camera/controller/QuickFunctionController$4;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkQFLitemAndClearSubMenu(Ljava/lang/String;)Z
    .locals 7
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x10

    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v3, p1}, Lcom/lge/camera/controller/QuickFunctionController;->isEqualPreferenceAndSubmenu(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 322
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 325
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 363
    :cond_1
    :goto_0
    return v1

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 329
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 330
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-eqz v3, :cond_6

    .line 333
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 334
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setClearFocusAnimation()V

    .line 336
    const-string v2, "face_tracking"

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto :goto_0

    .line 346
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 348
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "showAll"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_6
    :goto_1
    move v1, v2

    .line 363
    goto/16 :goto_0

    .line 353
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 354
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "immediately"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v1, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 358
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_6

    .line 360
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_1
.end method

.method private clearPIPRecordingUI()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 372
    :cond_1
    return-void
.end method

.method private selectSwapCamera(ILcom/lge/camera/setting/ListPreference;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "pref"    # Lcom/lge/camera/setting/ListPreference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckToggleTime(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, liveeffect active"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x66

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 249
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 252
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v1, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J

    .line 254
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setQuickFunctionMenuForcedDisable(Z)V

    .line 255
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v4, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 256
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 257
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 278
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, go to swap"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 263
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "immediately"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setQuickFunctionMenuForcedDisable(Z)V

    .line 269
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, v4, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 270
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 271
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 273
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 274
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v1, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v1, p1, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    goto :goto_0
.end method

.method private useToggleButton(ILcom/lge/camera/setting/ListPreference;Ljava/lang/String;)V
    .locals 16
    .param p1, "index"    # I
    .param p2, "pref"    # Lcom/lge/camera/setting/ListPreference;
    .param p3, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 283
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 284
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "QFL checkTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v11}, Lcom/lge/camera/controller/QuickFunctionController;->access$500(Lcom/lge/camera/controller/QuickFunctionController;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v9, "key_time_machine"

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v3, 0x0

    .line 287
    .local v3, "checkUsage":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v9, v3}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckToggleTime(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v9, "subMenuClicked"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const-string v9, "key_flash"

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "off"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v7, "torch"

    .line 295
    .local v7, "setValue":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p3

    invoke-interface {v9, v0, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v5

    .line 298
    .local v5, "menuIndex":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 299
    .local v4, "childIndex":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v5, v4}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(II)Z

    .line 301
    const-string v9, "key_smart_mode"

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 307
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # setter for: Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J
    invoke-static {v9, v10, v11}, Lcom/lge/camera/controller/QuickFunctionController;->access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J

    .line 308
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;
    invoke-static {v9}, Lcom/lge/camera/controller/QuickFunctionController;->access$600(Lcom/lge/camera/controller/QuickFunctionController;)Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuView(I)Landroid/view/View;

    move-result-object v6

    .line 310
    .local v6, "qfl":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 311
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 312
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;
    invoke-static {v9}, Lcom/lge/camera/controller/QuickFunctionController;->access$600(Lcom/lge/camera/controller/QuickFunctionController;)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "childIndex":I
    .end local v5    # "menuIndex":I
    .end local v6    # "qfl":Landroid/view/View;
    .end local v7    # "setValue":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v10, 0x0

    move/from16 v0, p1

    invoke-virtual {v9, v0, v10}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 317
    return-void

    .line 286
    .end local v3    # "checkUsage":I
    :cond_1
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 291
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "checkUsage":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    const-string v7, "off"

    goto :goto_1

    :cond_3
    const-string v9, "on"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v7, "off"

    goto/16 :goto_1

    :cond_4
    const-string v7, "on"

    goto/16 :goto_1

    .line 304
    .restart local v4    # "childIndex":I
    .restart local v5    # "menuIndex":I
    .restart local v7    # "setValue":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v9, v9, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # invokes: Lcom/lge/camera/controller/QuickFunctionController;->checkOnClick()Z
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 198
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 200
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 201
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$400(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 202
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_setting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->initSettingMenu()V

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 212
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 213
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "prefKey":Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ===> pref.getKey(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController$4;->checkQFLitemAndClearSubMenu(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    monitor-exit v4

    goto :goto_0

    .line 238
    .end local v2    # "prefKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 210
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1

    .line 223
    .restart local v2    # "prefKey":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController$4;->clearPIPRecordingUI()V

    .line 225
    const-string v3, "key_voiceshutter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "key_time_machine"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "key_uplus_box"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "key_smart_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 229
    :cond_5
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionController$4;->useToggleButton(ILcom/lge/camera/setting/ListPreference;Ljava/lang/String;)V

    .line 235
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/16 v5, 0x12

    if-ne v3, v5, :cond_6

    .line 236
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 238
    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    .line 230
    :cond_7
    const-string v3, "key_swap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$4;->selectSwapCamera(ILcom/lge/camera/setting/ListPreference;)V

    goto :goto_2

    .line 233
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
