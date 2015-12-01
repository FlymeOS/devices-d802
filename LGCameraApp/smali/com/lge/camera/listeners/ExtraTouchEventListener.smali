.class public Lcom/lge/camera/listeners/ExtraTouchEventListener;
.super Ljava/lang/Object;
.source "ExtraTouchEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;,
        Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;
    }
.end annotation


# static fields
.field private static final BASE_SPAN:I = 0x384

.field private static final SCALE_SIZE:F = 0.4f

.field private static final STEP_LIMIT:I = 0x8

.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8

.field private static final ZERO:I


# instance fields
.field private convX:I

.field private convY:I

.field private downTouchX:I

.field private downTouchY:I

.field private initialX:I

.field private initialY:I

.field private mActionDetected:Z

.field private final mDualRec_TouchSensitivity:J

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDualRecSubWindowMoving:Z

.field private mIsSmartZoomFocusMoving:Z

.field private mLastTouchedAFTime:J

.field private mMoveDirection:I

.field private mPingPong:Z

.field private mResizingHandler:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mTouchDownTime:J

.field private mTouchUpTime:J

.field private prevX:I

.field private prevY:I

.field private previewTopMargin:I

.field startX:I

.field startY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 44
    iput-object v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 45
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 46
    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    .line 49
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 50
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 51
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    .line 52
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    .line 53
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    .line 54
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    .line 56
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    .line 57
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    .line 58
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    .line 60
    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchDownTime:J

    .line 61
    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchUpTime:J

    .line 62
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mDualRec_TouchSensitivity:J

    .line 69
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    .line 71
    iput-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    .line 267
    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    iput v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    .line 784
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/ExtraTouchEventListener;ILcom/lge/camera/Mediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/listeners/ExtraTouchEventListener;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/listeners/ExtraTouchEventListener;IILcom/lge/camera/Mediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/listeners/ExtraTouchEventListener;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    return-void
.end method

.method private checkBarMenuOnTouchActionUp(IIZLcom/lge/camera/Mediator;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "includeManualFocus"    # Z
    .param p4, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xf

    .line 680
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0901cc

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 683
    .local v3, "zoom_brightness_touch_area_start_y":I
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    if-ne v4, v6, :cond_1

    :cond_0
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_2

    :cond_1
    if-ge p2, v3, :cond_3

    .line 689
    :cond_2
    iget-boolean v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v4, :cond_3

    .line 690
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 692
    .local v0, "current_time":J
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x258

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    .line 695
    invoke-virtual {p4, p1, p2}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    .line 724
    .end local v0    # "current_time":J
    :cond_3
    :goto_0
    return-void

    .line 699
    :cond_4
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v4

    if-nez v4, :cond_5

    .line 700
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 701
    invoke-virtual {p4, p3}, Lcom/lge/camera/Mediator;->clearSubMenu(Z)V

    .line 702
    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_main_beauty"

    invoke-virtual {p4, v4, v5}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 705
    invoke-virtual {p4, v7}, Lcom/lge/camera/Mediator;->showBeautyshotController(Z)V

    .line 709
    :cond_5
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->showIndicatorController()V

    .line 710
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->checkFocusController()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 711
    const-string v4, "key_focus"

    invoke-virtual {p4, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "focus":Ljava/lang/String;
    const-string v4, "auto"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "multiwindowaf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-eq v4, v7, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 717
    :cond_6
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->showFocus()Z

    .line 720
    .end local v2    # "focus":Ljava/lang/String;
    :cond_7
    const-string v4, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p4, v4}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z
    .locals 5
    .param p1, "coordinate"    # I
    .param p2, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 1003
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020389

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1005
    .local v2, "taf":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 1006
    .local v1, "sizeOfTaf":I
    int-to-float v3, v1

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 1008
    .local v0, "margin":I
    if-lt p1, v0, :cond_0

    sget v3, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v3, v0

    if-le p1, v3, :cond_1

    .line 1010
    :cond_0
    const/4 v3, 0x1

    .line 1012
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkMenuInTouchActionDown(Lcom/lge/camera/Mediator;)V
    .locals 2
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v1, 0x1

    .line 242
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iput-boolean v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 244
    const-string v0, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingControllerShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iput-boolean v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 249
    const-string v0, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 254
    const-string v0, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 255
    iput-boolean v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 259
    const-string v0, "key_video_record_mode"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    if-nez v0, :cond_4

    .line 260
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->restoreLiveEffectSubMenu()V

    .line 262
    :cond_4
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    goto :goto_0
.end method

.method private checkSmartZoomFocusViewInScreen(IILcom/lge/camera/Mediator;)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 1017
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->getFocusViewHalfWidth(Lcom/lge/camera/Mediator;)I

    move-result v0

    .line 1019
    .local v0, "halfWidth":I
    if-lt p1, v0, :cond_0

    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sub-int/2addr v1, v0

    if-le p2, v1, :cond_1

    .line 1021
    :cond_0
    const/4 v1, 0x0

    .line 1023
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkTouchMoveFocus(Lcom/lge/camera/Mediator;)Z
    .locals 6
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 414
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-eqz v2, :cond_2

    .line 475
    :cond_1
    :goto_0
    return v0

    .line 428
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 429
    const-string v2, "0"

    const-string v3, "key_camera_timer"

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    :cond_3
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isCurrnetModuleRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 443
    :cond_4
    const-string v2, "key_light"

    const-string v3, "on"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p1, v2, v3}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    :cond_5
    const v2, 0x7f0d009b

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 452
    const-string v1, "CameraApp"

    const-string v2, "block touch during Quickview is visible"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_6
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->snapshotOnContinuousFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 463
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isCafSupported()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "face_tracking"

    const-string v3, "key_focus"

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    const-string v2, "manual"

    const-string v3, "key_focus"

    invoke-virtual {p1, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->checkFocusController()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 475
    goto/16 :goto_0
.end method

.method private doTouchAction(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bInPreviewScreen"    # Z
    .param p5, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v1, "CameraApp"

    const-string v2, "PinchZoom : ACTION_DOWN"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-boolean v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 194
    iput-boolean v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 195
    iput-boolean v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchDownTime:J

    .line 199
    iput p2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    .line 200
    iput p3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    .line 202
    iput p2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    .line 203
    iput p3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    .line 205
    invoke-virtual {p5}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "CameraApp"

    const-string v2, "checkMenuInTouchActionDown : ACTION_DOWN"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkMenuInTouchActionDown(Lcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 213
    :pswitch_1
    const-string v1, "CameraApp"

    const-string v2, "PinchZoom : ACTION_MOVE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p5, p2}, Lcom/lge/camera/Mediator;->checkTouchFocusArea(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual/range {p0 .. p5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->doExeTouchActionMove(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V

    goto :goto_0

    .line 221
    :pswitch_2
    const-string v1, "CameraApp"

    const-string v2, "PinchZoom : ACTION_UP"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchUpTime:J

    .line 223
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->doExeTouchActionUp(Landroid/view/MotionEvent;IILcom/lge/camera/Mediator;)V

    .line 224
    iput v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    .line 225
    iput v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    goto :goto_0

    .line 231
    :pswitch_3
    const-string v1, "CameraApp"

    const-string v2, "ACTION_CANCEL"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const v1, 0x7f0d0179

    invoke-virtual {p5, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    .local v0, "v":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 234
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getFocusViewHalfWidth(Lcom/lge/camera/Mediator;)I
    .locals 4
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 1046
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1048
    .local v0, "focusView":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 1049
    .local v1, "halfWidth":I
    return v1
.end method

.method private setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 1028
    invoke-direct {p0, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->getFocusViewHalfWidth(Lcom/lge/camera/Mediator;)I

    move-result v0

    .line 1030
    .local v0, "halfWidth":I
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkSmartZoomFocusViewInScreen(IILcom/lge/camera/Mediator;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    if-ge p1, v0, :cond_2

    .line 1032
    move p1, v0

    .line 1036
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_3

    .line 1037
    move p2, v0

    .line 1042
    :cond_1
    :goto_1
    invoke-virtual {p3, p1, p2}, Lcom/lge/camera/Mediator;->setSmartZoomFocusViewPosition(II)V

    .line 1043
    return-void

    .line 1033
    :cond_2
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_0

    .line 1034
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int p1, v1, v0

    goto :goto_0

    .line 1038
    :cond_3
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sub-int/2addr v1, v0

    if-le p2, v1, :cond_1

    .line 1039
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sub-int p2, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public doExeTouchActionMove(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bInPreviewScreen"    # Z
    .param p5, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 271
    const/4 v4, 0x0

    .local v4, "diffX":I
    const/4 v5, 0x0

    .line 272
    .local v5, "diffY":I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v15

    if-nez v15, :cond_1

    .line 275
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v15

    if-nez v15, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkTouchMoveFocus(Lcom/lge/camera/Mediator;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 282
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isFocusViewVisible()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 283
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->hideFocus()Z

    .line 286
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "key_camera_shot_mode"

    const-string v16, "shotmode_dual_camera"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 290
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v15

    if-eqz v15, :cond_0

    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    if-nez v15, :cond_5

    .line 295
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    .line 296
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    .line 297
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    .line 298
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    .line 299
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/lge/camera/controller/PIPController;->checkResizeDirection(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    .line 301
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->initialY:I

    move/from16 v18, v0

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getOrientation()I

    move-result v19

    invoke-virtual/range {v15 .. v19}, Lcom/lge/camera/controller/PIPController;->setDirectionForRatio(IIII)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    .line 304
    const-string v15, "CameraApp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMoveDirection = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    sub-int v4, p2, v15

    .line 307
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    sub-int v5, p3, v15

    .line 308
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 309
    const-string v15, "CameraApp"

    const-string v16, "Ignore touch event"

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    if-eqz v15, :cond_7

    .line 314
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 317
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    if-nez v15, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSmartZoomFocusViewArea(II)Z

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->isPIPFrameSplitView(Lcom/lge/camera/Mediator;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 321
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 323
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v15

    if-nez v15, :cond_e

    .line 324
    sget-boolean v15, Lcom/lge/camera/properties/MultimediaProperties;->PIP_MOVE_ALLOWED_ONLY_IN_EDIT_MODE:Z

    if-nez v15, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lcom/lge/camera/controller/PIPController;->isInSmartZoomFocusViewArea(II)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-eqz v15, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    if-nez v15, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v15

    if-eqz v15, :cond_b

    .line 329
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lge/camera/controller/PIPController;->moveSubWindow(II)V

    .line 330
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->confirmSubWindow()V

    .line 363
    :cond_a
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevX:I

    .line 364
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/listeners/ExtraTouchEventListener;->prevY:I

    goto/16 :goto_0

    .line 331
    :cond_b
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v15

    if-nez v15, :cond_a

    .line 333
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v0, p2

    if-lt v0, v15, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v0, p2

    if-gt v0, v15, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int v15, v15, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    move/from16 v16, v0

    sub-int v16, v16, p2

    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    move/from16 v16, v0

    sub-int v16, v16, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    move/from16 v17, v0

    sub-int v17, v17, p3

    mul-int v16, v16, v17

    add-int v15, v15, v16

    const/16 v16, 0x640

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    if-eqz v15, :cond_d

    .line 341
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    .line 342
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    .line 344
    :cond_d
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->isSmartZoomFocusViewShown()Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v15

    if-eqz v15, :cond_a

    .line 346
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->showSmartZoomFocusView()V

    goto/16 :goto_1

    .line 349
    :cond_e
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 350
    const-string v15, "com.lge.camera.command.HidePIPResizeHandler"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    const/16 v16, 0xf

    move/from16 v0, v16

    if-eq v15, v0, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    if-eqz v15, :cond_f

    .line 353
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v5, v0}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowByDiff(III)V

    .line 355
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowResizeHandler(I)V

    goto/16 :goto_1

    .line 356
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    const/16 v16, 0xf

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 357
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Lcom/lge/camera/controller/PIPController;->moveSubWindow(II)V

    .line 358
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mMoveDirection:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowResizeHandler(I)V

    goto/16 :goto_1

    .line 361
    :cond_10
    const-string v15, "CameraApp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid mode : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 366
    :cond_11
    if-eqz p4, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 368
    const-string v15, "CameraApp"

    const-string v16, "Ignore touch event!"

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_12
    const v15, 0x7f0d0179

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 372
    .local v13, "v":Landroid/widget/ImageView;
    if-eqz v13, :cond_0

    .line 373
    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_13

    .line 374
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    const v15, 0x3f333333    # 0.7f

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 377
    :cond_13
    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    .local v6, "ftm":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    .line 379
    .local v14, "width":I
    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 383
    .local v7, "height":I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaWidth()I

    move-result v11

    .line 384
    .local v11, "previewWidth":I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v9

    .line 385
    .local v9, "previewHeight":I
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->getFocusAreaLeftMargin()I

    move-result v10

    .line 387
    .local v10, "previewLeftMargin":I
    add-int v15, v10, v11

    div-int/lit8 v16, v14, 0x2

    sub-int v15, v15, v16

    move/from16 v0, p2

    if-le v0, v15, :cond_14

    .line 388
    add-int v15, v10, v11

    div-int/lit8 v16, v14, 0x2

    sub-int p2, v15, v16

    .line 391
    :cond_14
    div-int/lit8 v15, v7, 0x2

    sub-int v15, v9, v15

    move/from16 v0, p3

    if-le v0, v15, :cond_15

    .line 392
    div-int/lit8 v15, v7, 0x2

    sub-int p3, v9, v15

    .line 395
    :cond_15
    sub-int v15, p2, v10

    div-int/lit8 v16, v14, 0x2

    sub-int v8, v15, v16

    .line 396
    .local v8, "left":I
    div-int/lit8 v15, v7, 0x2

    sub-int v12, p3, v15

    .line 398
    .local v12, "top":I
    if-gez v8, :cond_16

    const/4 v8, 0x0

    .line 399
    :cond_16
    if-gez v12, :cond_17

    const/4 v12, 0x0

    .line 401
    :cond_17
    invoke-virtual/range {p5 .. p5}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 402
    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 403
    iput v12, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 408
    :goto_2
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 405
    :cond_18
    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 406
    iput v12, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2
.end method

.method public doExeTouchActionUp(Landroid/view/MotionEvent;IILcom/lge/camera/Mediator;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 479
    const v12, 0x7f0d0179

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 480
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 481
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v12

    if-nez v12, :cond_2

    .line 676
    :cond_1
    :goto_0
    return-void

    .line 486
    :cond_2
    const v12, 0x7f0d009b

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 487
    const-string v12, "CameraApp"

    const-string v13, "block touch during Quickview is visible"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isNullSettingView()Z

    move-result v12

    if-nez v12, :cond_5

    .line 491
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isSettingControllerVisible()Z

    move-result v12

    if-nez v12, :cond_1

    .line 494
    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 495
    const-string v12, "com.lge.camera.command.RemoveSettingMenu"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 675
    :cond_4
    :goto_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    goto :goto_0

    .line 497
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v12

    const/16 v13, 0x10

    if-eq v12, v13, :cond_6

    .line 500
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkBarMenuOnTouchActionUp(IIZLcom/lge/camera/Mediator;)V

    goto :goto_1

    .line 502
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v12, :cond_8

    const-string v12, "manual"

    const-string v13, "key_focus"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 505
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkBarMenuOnTouchActionUp(IIZLcom/lge/camera/Mediator;)V

    .line 506
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isManualFocusBarVisible()Z

    move-result v12

    if-nez v12, :cond_7

    .line 507
    const/4 v12, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->showManualFocusController(Z)V

    .line 508
    const/16 v12, 0x19

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    goto/16 :goto_0

    .line 510
    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->showManualFocusController(Z)V

    goto/16 :goto_0

    .line 514
    :cond_8
    const/4 v6, 0x1

    .line 515
    .local v6, "frontCameraID":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 516
    .local v4, "current_time":J
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PinchZoom : touched time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long v14, v4, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchUpTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mTouchDownTime:J

    sub-long v10, v12, v14

    .line 521
    .local v10, "touchTime":J
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v12

    if-eqz v12, :cond_22

    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    if-eqz v12, :cond_22

    .line 524
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 525
    const-string v12, "CameraApp"

    const-string v13, "Ignore touch event!"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :cond_a
    const v12, 0x7f0d0123

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v12}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-nez v12, :cond_d

    .line 534
    :cond_c
    const v12, 0x7f0d0123

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v12}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose()V

    .line 641
    .end local v6    # "frontCameraID":I
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    .line 642
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    .line 643
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsSmartZoomFocusMoving:Z

    goto/16 :goto_1

    .line 537
    .restart local v6    # "frontCameraID":I
    :cond_d
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v12

    if-nez v12, :cond_1a

    .line 538
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    sub-int v13, p2, v13

    move/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v12

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->isPIPFrameSplitView(Lcom/lge/camera/Mediator;)Z

    move-result v12

    if-eqz v12, :cond_16

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v12, :cond_16

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v12

    if-eqz v12, :cond_16

    .line 542
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_f

    .line 543
    const-string v12, "0"

    const-string v13, "key_camera_timer"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 546
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    goto/16 :goto_0

    .line 550
    :cond_f
    const-wide/16 v12, 0x12c

    cmp-long v12, v10, v12

    if-gez v12, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int v12, v12, p2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int v13, v13, p2

    mul-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int v13, v13, p3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int v14, v14, p3

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x64

    if-ge v12, v13, :cond_11

    .line 553
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 555
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-eqz v12, :cond_12

    .end local v6    # "frontCameraID":I
    :goto_3
    invoke-static {v6}, Lcom/lge/filterpacks/DualRecorderFilter;->selectPIP(I)V

    .line 559
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-nez v12, :cond_13

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    .line 607
    :cond_11
    :goto_5
    const-string v12, "com.lge.camera.command.HidePIPResizeHandler"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 555
    .restart local v6    # "frontCameraID":I
    :cond_12
    const/4 v6, 0x0

    goto :goto_3

    .line 559
    .end local v6    # "frontCameraID":I
    :cond_13
    const/4 v12, 0x0

    goto :goto_4

    .line 560
    .restart local v6    # "frontCameraID":I
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 561
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v12

    if-nez v12, :cond_15

    .line 563
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    goto :goto_5

    .line 565
    :cond_15
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->disableObjectTrackingForSmartZoom()V

    .line 567
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    .line 568
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->unregisterObjectCallback()V

    .line 569
    const v12, 0x7f0a0351

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->toast(I)V

    goto :goto_5

    .line 573
    :cond_16
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v12, :cond_11

    .line 575
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    move/from16 v0, p2

    if-lt v0, v12, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    add-int/2addr v12, v13

    move/from16 v0, p2

    if-gt v0, v12, :cond_1

    .line 580
    const-wide/16 v12, 0x12c

    cmp-long v12, v10, v12

    if-gez v12, :cond_11

    .line 581
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 583
    sget v12, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_18

    .line 584
    const-string v12, "CameraApp"

    const-string v13, "For SmartZoom Recording, object tracking is started"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move/from16 v7, p2

    .line 587
    .local v7, "revertX":I
    move/from16 v8, p3

    .line 588
    .local v8, "revertY":I
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v12

    if-nez v12, :cond_17

    .line 589
    move/from16 v7, p3

    .line 590
    sget v12, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int v8, v12, p2

    .line 592
    :cond_17
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doExeTouchActionUp revertX = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", revertY = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v8}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    goto/16 :goto_5

    .line 596
    .end local v7    # "revertX":I
    .end local v8    # "revertY":I
    :cond_18
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->disableObjectTrackingForSmartZoom()V

    .line 598
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    .line 599
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->unregisterObjectCallback()V

    .line 600
    const v12, 0x7f0a0351

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->toast(I)V

    goto/16 :goto_5

    .line 603
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V

    goto/16 :goto_5

    .line 608
    :cond_1a
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_21

    .line 609
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->confirmSubWindow()V

    .line 610
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    sub-int v13, p2, v13

    move/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v12

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mIsDualRecSubWindowMoving:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mResizingHandler:Z

    if-nez v12, :cond_1b

    .line 613
    const-string v12, "com.lge.camera.command.HidePIPResizeHandler"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 615
    :cond_1b
    sget-boolean v12, Lcom/lge/camera/properties/MultimediaProperties;->PIP_TOGGLE_ALLOWED_IN_EDIT_MODE:Z

    if-eqz v12, :cond_1d

    const-wide/16 v12, 0x12c

    cmp-long v12, v10, v12

    if-gez v12, :cond_1d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int v12, v12, p2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchX:I

    sub-int v13, v13, p2

    mul-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int v13, v13, p3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->downTouchY:I

    sub-int v14, v14, p3

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x64

    if-ge v12, v13, :cond_1d

    .line 619
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 621
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-eqz v12, :cond_1f

    .end local v6    # "frontCameraID":I
    :goto_6
    invoke-static {v6}, Lcom/lge/filterpacks/DualRecorderFilter;->selectPIP(I)V

    .line 625
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    if-nez v12, :cond_20

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mPingPong:Z

    .line 628
    :cond_1d
    sget-boolean v12, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z

    if-nez v12, :cond_1e

    .line 629
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/controller/PIPController;->drawSubWindow()V

    .line 631
    :cond_1e
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v12

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Lcom/lge/camera/controller/PIPController;->resizeSubWindowResizeHandler(I)V

    .line 633
    const-string v12, "com.lge.camera.command.HidePIPResizeHandler"

    const-wide/16 v14, 0x1388

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v14, v15}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 621
    .restart local v6    # "frontCameraID":I
    :cond_1f
    const/4 v6, 0x0

    goto :goto_6

    .line 625
    .end local v6    # "frontCameraID":I
    :cond_20
    const/4 v12, 0x0

    goto :goto_7

    .line 639
    .restart local v6    # "frontCameraID":I
    :cond_21
    const-string v12, "CameraApp"

    const-string v13, "KMIN - Invalid SubWindow mode"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 644
    :cond_22
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->isLiveEffectActive()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_23

    .line 646
    const v12, 0x7f0d00f0

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v12}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 649
    const v12, 0x7f0d00f0

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v12}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose()V

    goto/16 :goto_1

    .line 654
    :cond_23
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 655
    const-string v12, "CameraApp"

    const-string v13, "Ignore touch event!"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    :cond_24
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v12

    if-eqz v12, :cond_25

    .line 659
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v12, :cond_4

    .line 660
    const-string v12, "CameraApp"

    const-string v13, "call toggleClearView"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->toggleClearView()V

    goto/16 :goto_1

    .line 664
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-nez v12, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    sub-long v12, v4, v12

    const-wide/16 v14, 0x258

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    .line 667
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mLastTouchedAFTime:J

    .line 668
    move-object/from16 v0, p4

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    goto/16 :goto_1
.end method

.method public executeTouchEvent(Landroid/view/MotionEvent;Lcom/lge/camera/Mediator;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    .line 76
    const/4 v4, 0x1

    .line 77
    .local v4, "bInPreviewScreen":Z
    sget v0, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I

    .line 79
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->isTouchSmartCoverView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_e

    .line 93
    const v0, 0x7f0d0175

    invoke-virtual {p2, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 94
    .local v8, "previewLayout":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    .local v9, "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 101
    .local v7, "panelWidth":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v1, v7

    if-le v0, v1, :cond_4

    .line 104
    const/4 v4, 0x0

    .line 106
    :cond_4
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iget v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iget v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_9

    .line 111
    :cond_5
    const/4 v4, 0x0

    .line 166
    .end local v7    # "panelWidth":I
    .end local v8    # "previewLayout":Landroid/view/View;
    .end local v9    # "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 169
    :cond_7
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 170
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    .line 171
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    if-gez v0, :cond_8

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 181
    :cond_8
    :goto_2
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    .line 182
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    .line 183
    iget v2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->doTouchAction(Landroid/view/MotionEvent;IIZLcom/lge/camera/Mediator;)V

    goto/16 :goto_0

    .line 114
    .restart local v7    # "panelWidth":I
    .restart local v8    # "previewLayout":Landroid/view/View;
    .restart local v9    # "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    :try_start_0
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 133
    :cond_a
    :goto_3
    iget-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    if-eqz v0, :cond_6

    .line 134
    const-string v0, "CameraApp"

    const-string v1, "Action Detected."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const v0, 0x7f0d0179

    invoke-virtual {p2, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 136
    .local v10, "v":Landroid/view/View;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 141
    .end local v10    # "v":Landroid/view/View;
    :catch_0
    move-exception v6

    .line 142
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    const-string v1, "mScaleDetector fail"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 121
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_b
    :try_start_1
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {p2, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_a

    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_a

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 147
    .end local v7    # "panelWidth":I
    .end local v8    # "previewLayout":Landroid/view/View;
    .end local v9    # "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    :try_start_2
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isQuickFunctionDragControllerVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 148
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    const-string v0, "CameraApp"

    const-string v1, "PinchZoom : detect success"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mActionDetected:Z

    .line 152
    const v0, 0x7f0d0179

    invoke-virtual {p2, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 153
    .restart local v10    # "v":Landroid/view/View;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 159
    .end local v10    # "v":Landroid/view/View;
    :catch_1
    move-exception v6

    .line 160
    .restart local v6    # "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    const-string v1, "mScaleDetector fail"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 174
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_f
    invoke-virtual {p2}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 175
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 176
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    goto/16 :goto_2

    .line 178
    :cond_10
    iget v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convX:I

    .line 179
    sget v0, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    iget v1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->convY:I

    goto/16 :goto_2
.end method

.method public isPIPFrameSplitView(Lcom/lge/camera/Mediator;)Z
    .locals 2
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 988
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v0

    .line 989
    .local v0, "currentPIPMask":I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTouchSmartCoverView()Z
    .locals 5

    .prologue
    .line 994
    sget v1, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    .line 995
    .local v1, "mCover_width":I
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    .line 996
    .local v0, "mCover_height":I
    sget v3, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v3, v1

    div-int/lit8 v2, v3, 0x2

    .line 998
    .local v2, "mCover_x":I
    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    if-le v3, v2, :cond_0

    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I

    add-int v4, v1, v2

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I

    if-ge v3, v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public releaseGestureDetectorListener()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 985
    return-void
.end method

.method public releaseScaleDetectorListener()V
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 976
    return-void
.end method

.method public setGestureDetectorListener(Lcom/lge/camera/Mediator;)V
    .locals 3
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 979
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;-><init>(Lcom/lge/camera/listeners/ExtraTouchEventListener;Lcom/lge/camera/Mediator;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 981
    return-void
.end method

.method public setScaleDetectorListener(Lcom/lge/camera/Mediator;)V
    .locals 3
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 970
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;-><init>(Lcom/lge/camera/listeners/ExtraTouchEventListener;Lcom/lge/camera/Mediator;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 972
    return-void
.end method

.method public zoomInOut(IIZLcom/lge/camera/Mediator;)V
    .locals 7
    .param p1, "cursorStep"    # I
    .param p2, "factor"    # I
    .param p3, "scaleEnd"    # Z
    .param p4, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 911
    :try_start_0
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isPressedShutterButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->checkFocusController()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getFocusState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 924
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->checkShotModeForZoomInOut()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->checkSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 927
    :cond_2
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->checkSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 928
    const v1, 0x7f0a036a

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->toastConstant(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v2, "zoomInOut NullPointerException:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 931
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->isToastControllerShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 934
    const v1, 0x7f0a0369

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->toastConstant(Ljava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_4
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 942
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportZoomOnRecord()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 943
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 946
    :cond_5
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v5, :cond_6

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v3, :cond_6

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 949
    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 951
    :cond_6
    invoke-virtual {p4, p1, p2, p3}, Lcom/lge/camera/Mediator;->updateZoomBar(IIZ)V

    goto/16 :goto_0

    .line 954
    :cond_7
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-nez v1, :cond_0

    .line 955
    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v5, :cond_8

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v3, :cond_8

    invoke-virtual {p4}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v1

    if-eq v1, v6, :cond_8

    .line 958
    const-string v1, "com.lge.camera.command.ShowZoom"

    invoke-virtual {p4, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 960
    :cond_8
    invoke-virtual {p4, p1, p2, p3}, Lcom/lge/camera/Mediator;->updateZoomBar(IIZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
