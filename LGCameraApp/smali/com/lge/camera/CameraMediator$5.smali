.class Lcom/lge/camera/CameraMediator$5;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V
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
    .line 1582
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$5;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$5;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1585
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$5;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 1586
    return-void
.end method
