.class Lcom/lge/camera/controller/camcorder/AudiozoomController$5;
.super Ljava/lang/Object;
.source "AudiozoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/AudiozoomController;->showAudiozoomReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0d000e

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 433
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # invokes: Lcom/lge/camera/controller/camcorder/AudiozoomController;->checkLayout()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2500(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStart:Z
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2600(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mHandler:Lcom/lge/camera/util/MainHandler;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2700(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mHandler:Lcom/lge/camera/util/MainHandler;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2700(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->removeMessages(I)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->addMsgArg(II)V

    .line 450
    :cond_1
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1500(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    goto :goto_0
.end method
