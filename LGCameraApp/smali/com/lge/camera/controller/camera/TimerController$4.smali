.class Lcom/lge/camera/controller/camera/TimerController$4;
.super Ljava/lang/Object;
.source "TimerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/TimerController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/TimerController;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lge/camera/controller/camera/TimerController$4;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$4;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$800(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$4;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$900(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateTimerIndicator()V

    .line 294
    return-void
.end method
