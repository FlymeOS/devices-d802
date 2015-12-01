.class Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ExtraTouchEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/listeners/ExtraTouchEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private mediator:Lcom/lge/camera/Mediator;

.field final synthetic this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/ExtraTouchEventListener;Lcom/lge/camera/Mediator;)V
    .locals 0
    .param p2, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 789
    iput-object p2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    .line 790
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v3, 0x42f00000    # 120.0f

    .line 795
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v5

    .line 799
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    .line 808
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    .line 812
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    .line 816
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "GestureListener exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 829
    :try_start_0
    const-string v5, "CameraApp"

    const-string v6, "GestureListener - onLongPress"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    if-nez v5, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_2

    .line 834
    const-string v5, "0"

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_camera_timer"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 839
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    iget v6, v6, Lcom/lge/camera/listeners/ExtraTouchEventListener;->startX:I

    iget-object v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    # invokes: Lcom/lge/camera/listeners/ExtraTouchEventListener;->checkIgnoreTouchEvent(ILcom/lge/camera/Mediator;)Z
    invoke-static {v5, v6, v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$000(Lcom/lge/camera/listeners/ExtraTouchEventListener;ILcom/lge/camera/Mediator;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 840
    const-string v5, "CameraApp"

    const-string v6, "Ignore touch event"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "GestureListener exception : "

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 844
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I
    invoke-static {v6}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I
    invoke-static {v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$200(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I
    invoke-static {v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$300(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PIPController;->isInSubWindow(II)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I
    invoke-static {v6}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I
    invoke-static {v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$300(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PIPController;->isInSmartZoomFocusViewArea(II)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v5

    if-nez v5, :cond_9

    .line 847
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "recordmode_dual"

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_video_record_mode"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "recordmode_smart_zoom"

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_video_record_mode"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_dual_camera"

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 858
    :cond_7
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5, v6}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->isPIPFrameSplitView(Lcom/lge/camera/Mediator;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v5

    if-eqz v5, :cond_0

    .line 862
    const/4 v1, 0x0

    .line 863
    .local v1, "mInitialX":F
    const/4 v2, 0x0

    .line 864
    .local v2, "mInitialY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 865
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 866
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/PIPController;->isResizeHandlerShown()Z

    move-result v5

    if-nez v5, :cond_8

    .line 867
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const-string v6, "com.lge.camera.command.ShowPIPResizeHandler"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 869
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/PIPController;->isResizeHandlerShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 870
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lge/camera/controller/PIPController;->setMode(I)V

    goto/16 :goto_0

    .line 874
    :cond_8
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const-string v6, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    .end local v1    # "mInitialX":F
    .end local v2    # "mInitialY":F
    :cond_9
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "recordmode_smart_zoom"

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_video_record_mode"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCurrentPIPMask()I

    move-result v5

    if-eqz v5, :cond_0

    .line 884
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I
    invoke-static {v5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I
    invoke-static {v6}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$200(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I
    invoke-static {v5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getFocusAreaHeight()I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->previewTopMargin:I
    invoke-static {v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$200(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v7

    add-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    .line 889
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/PIPController;->enableObjectTrackingForSmartZoom()V

    .line 890
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I
    invoke-static {v6}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I
    invoke-static {v7}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$300(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v7

    iget-object v8, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    # invokes: Lcom/lge/camera/listeners/ExtraTouchEventListener;->setSmartZoomFocusViewPosition(IILcom/lge/camera/Mediator;)V
    invoke-static {v5, v6, v7, v8}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$400(Lcom/lge/camera/listeners/ExtraTouchEventListener;IILcom/lge/camera/Mediator;)V

    .line 891
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I
    invoke-static {v5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v3

    .line 892
    .local v3, "revertX":I
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I
    invoke-static {v5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$300(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v4

    .line 893
    .local v4, "revertY":I
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v5

    if-nez v5, :cond_a

    .line 894
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->y:I
    invoke-static {v5}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$300(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v3

    .line 895
    sget v5, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    # getter for: Lcom/lge/camera/listeners/ExtraTouchEventListener;->x:I
    invoke-static {v6}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->access$100(Lcom/lge/camera/listeners/ExtraTouchEventListener;)I

    move-result v6

    sub-int v4, v5, v6

    .line 897
    :cond_a
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLongPress revertX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", revertY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5, v3, v4}, Lcom/lge/camera/Mediator;->doTouchbyAF(II)V

    .line 899
    iget-object v5, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$GestureListener;->mediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0a0350

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->toast(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
