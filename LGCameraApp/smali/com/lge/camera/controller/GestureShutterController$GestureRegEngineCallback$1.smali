.class Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback$1;
.super Ljava/lang/Object;
.source "GestureShutterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->onGestureEngineResultCallback(ILcom/lge/gestureshot/library/HandInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback$1;->this$1:Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback$1;->this$1:Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;

    iget-object v0, v0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    iget-object v0, v0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback$1;->this$1:Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;

    iget-object v0, v0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback$1;->this$1:Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;

    iget-object v1, v1, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;->this$0:Lcom/lge/camera/controller/GestureShutterController;

    # getter for: Lcom/lge/camera/controller/GestureShutterController;->mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v1}, Lcom/lge/camera/controller/GestureShutterController;->access$100(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v1

    # invokes: Lcom/lge/camera/controller/GestureShutterController;->drawHandGuideRect(Lcom/lge/gestureshot/library/HandInfo;)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/GestureShutterController;->access$500(Lcom/lge/camera/controller/GestureShutterController;Lcom/lge/gestureshot/library/HandInfo;)V

    .line 427
    return-void
.end method
