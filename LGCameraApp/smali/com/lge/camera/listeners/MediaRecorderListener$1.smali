.class Lcom/lge/camera/listeners/MediaRecorderListener$1;
.super Ljava/lang/Object;
.source "MediaRecorderListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/MediaRecorderListener;->onError(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/MediaRecorderListener;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/MediaRecorderListener;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lge/camera/listeners/MediaRecorderListener$1;->this$0:Lcom/lge/camera/listeners/MediaRecorderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener$1;->this$0:Lcom/lge/camera/listeners/MediaRecorderListener;

    # getter for: Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/MediaRecorderListener;->access$000(Lcom/lge/camera/listeners/MediaRecorderListener;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener$1;->this$0:Lcom/lge/camera/listeners/MediaRecorderListener;

    # getter for: Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/MediaRecorderListener;->access$000(Lcom/lge/camera/listeners/MediaRecorderListener;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener$1;->this$0:Lcom/lge/camera/listeners/MediaRecorderListener;

    # getter for: Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/MediaRecorderListener;->access$000(Lcom/lge/camera/listeners/MediaRecorderListener;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    .line 130
    :cond_0
    return-void
.end method
