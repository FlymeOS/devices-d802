.class Lcom/lge/camera/CameraMediator$3;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->getTimeMachinePictures()Z
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
    .line 1440
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$3;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$3;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1444
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "useTimeMachinePostview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1445
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$3;->this$0:Lcom/lge/camera/CameraMediator;

    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1446
    return-void
.end method
