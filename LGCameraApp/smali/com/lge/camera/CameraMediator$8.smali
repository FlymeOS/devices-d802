.class Lcom/lge/camera/CameraMediator$8;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CameraMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0

    .prologue
    .line 2317
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$8;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTimershotByGestureRecog()V
    .locals 2

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$8;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v0, v0, Lcom/lge/camera/CameraMediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$8;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v0, v0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/TimerController;->setGestureShotActivated(Z)V

    .line 2322
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$8;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v0, v0, Lcom/lge/camera/CameraMediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->gestureCallbackTakePicture()V

    .line 2324
    :cond_0
    return-void
.end method
