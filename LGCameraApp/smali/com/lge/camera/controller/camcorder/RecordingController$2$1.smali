.class Lcom/lge/camera/controller/camcorder/RecordingController$2$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camcorder/RecordingController$2;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController$2;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 759
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->doAfterRecordingProcess()V

    .line 760
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$2;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 761
    return-void
.end method
