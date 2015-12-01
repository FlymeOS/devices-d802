.class Lcom/lge/camera/controller/camcorder/AudiozoomController$4;
.super Ljava/lang/Object;
.source "AudiozoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/AudiozoomController;->updateAudioZoomLevelMeter()V
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
    .line 358
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2200(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-static {}, Lcom/lge/camera/VideoRecorder;->getAudioZoomLevelMeter()I

    move-result v1

    # setter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mLevelMeterValue:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2302(Lcom/lge/camera/controller/camcorder/AudiozoomController;I)I

    .line 363
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mLevelMeterValue:I
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->setProgress(I)V

    .line 366
    :cond_0
    return-void
.end method
