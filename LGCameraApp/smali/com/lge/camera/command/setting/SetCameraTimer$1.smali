.class Lcom/lge/camera/command/setting/SetCameraTimer$1;
.super Ljava/lang/Object;
.source "SetCameraTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraTimer;->updateIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraTimer;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraTimer;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraTimer$1;->this$0:Lcom/lge/camera/command/setting/SetCameraTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraTimer$1;->this$0:Lcom/lge/camera/command/setting/SetCameraTimer;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraTimer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraTimer$1;->this$0:Lcom/lge/camera/command/setting/SetCameraTimer;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraTimer;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateTimerIndicator()V

    .line 68
    return-void
.end method
