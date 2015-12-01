.class Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;
.super Ljava/lang/Object;
.source "GestureShutterController.java"

# interfaces
.implements Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/GestureShutterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureRegEngineCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/GestureShutterController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/GestureShutterController;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/GestureShutterController;Lcom/lge/camera/controller/GestureShutterController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/controller/GestureShutterController;
    .param p2, "x1"    # Lcom/lge/camera/controller/GestureShutterController$1;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;-><init>(Lcom/lge/camera/controller/GestureShutterController;)V

    return-void
.end method


# virtual methods
.method public onGestureEngineErrorCallback(I)V
    .locals 2
    .param p1, "errorType"    # I

    .prologue
    .line 390
    const-string v0, "CameraApp"

    const-string v1, "onGestureEngineErrorCallback()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public onGestureEngineResultCallback(ILcom/lge/gestureshot/library/HandInfo;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "handInfo"    # Lcom/lge/gestureshot/library/HandInfo;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$100(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$100(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/gestureshot/library/HandInfo;->setHandInfo(Lcom/lge/gestureshot/library/HandInfo;)V

    .line 401
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 416
    :pswitch_0
    const-string v0, "CameraApp"

    const-string v1, "GESTURE_EVENT_DRAW_GUIDEBOX"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->showGestureGuide()V

    .line 418
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$300(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$300(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;->onShowGestureGuide()V

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    iget-object v0, v0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback$1;-><init>(Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 403
    :pswitch_1
    const-string v0, "CameraApp"

    const-string v1, "GESTURE_EVENT_CAPTURE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$200(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/components/GestureGuideBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 407
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$300(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$300(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;->onHideGestureGuide()V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$200(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/components/GestureGuideBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/GestureGuideBox;->invalidate()V

    .line 411
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->stopGestureEngine()V

    .line 412
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # invokes: Lcom/lge/camera/controller/GestureShutterController;->executeTimershot()V
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$400(Lcom/lge/camera/controller/GestureShutterController;)V

    goto :goto_0

    .line 431
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$200(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/components/GestureGuideBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$200(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/components/GestureGuideBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/GestureGuideBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 435
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$300(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;
    invoke-static {v0}, Lcom/lge/camera/controller/GestureShutterController;->access$300(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;->onHideGestureGuide()V

    goto/16 :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
