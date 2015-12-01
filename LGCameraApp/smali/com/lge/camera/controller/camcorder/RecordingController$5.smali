.class Lcom/lge/camera/controller/camcorder/RecordingController$5;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$5;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->resetRecTime()V

    .line 1093
    return-void
.end method
