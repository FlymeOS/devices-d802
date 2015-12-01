.class Lcom/lge/camera/controller/PreviewController$7;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$7;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$7;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1193
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$7;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$7;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$7;->this$0:Lcom/lge/camera/controller/PreviewController;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController$7;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lge/camera/controller/PreviewController;->access$700(Lcom/lge/camera/controller/PreviewController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/PreviewController;->access$602(Lcom/lge/camera/controller/PreviewController;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1195
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$7;->this$0:Lcom/lge/camera/controller/PreviewController;

    # getter for: Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewController;->access$600(Lcom/lge/camera/controller/PreviewController;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1197
    :cond_0
    return-void
.end method
