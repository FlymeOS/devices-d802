.class Lcom/lge/camera/receiver/CameraScreenOffReceiver$1;
.super Ljava/lang/Object;
.source "CameraScreenOffReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/receiver/CameraScreenOffReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/receiver/CameraScreenOffReceiver;


# direct methods
.method constructor <init>(Lcom/lge/camera/receiver/CameraScreenOffReceiver;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/receiver/CameraScreenOffReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraScreenOffReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraScreenOffReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraScreenOffReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraScreenOffReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, p0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->removePostRunnable(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraScreenOffReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraScreenOffReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraScreenOffReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraScreenOffReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 38
    :cond_0
    return-void
.end method
