.class Lcom/lge/camera/controller/camcorder/RecordingController$4$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camcorder/RecordingController$4;

.field final synthetic val$autoReviewDuration:J


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController$4;J)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$4;

    iput-wide p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;->val$autoReviewDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;->val$autoReviewDuration:J

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->showGalleryQuickViewWindow(ZJ)Z

    .line 875
    :cond_0
    return-void
.end method
