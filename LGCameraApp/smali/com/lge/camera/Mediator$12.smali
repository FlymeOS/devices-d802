.class Lcom/lge/camera/Mediator$12;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->updateNavigationBarShape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0

    .prologue
    .line 5040
    iput-object p1, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    const/4 v1, 0x1

    .line 5042
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 5043
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5057
    :goto_0
    return-void

    .line 5046
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->setFullScreen(Landroid/app/Activity;)V

    .line 5047
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AppControlUtil;->setTransparentNavigationBar(Landroid/app/Activity;Z)V

    .line 5048
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AppControlUtil;->setEnableRotateNaviataionBar(Landroid/app/Activity;Z)V

    .line 5049
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->disableNavigationButton(Landroid/app/Activity;)V

    .line 5050
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->isCamcorderRotation(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5051
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getRecordingDegree()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/AppControlUtil;->rotateNavigationBarIcon(Landroid/app/Activity;II)V

    goto :goto_0

    .line 5054
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator$12;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/AppControlUtil;->rotateNavigationBarIcon(Landroid/app/Activity;II)V

    goto :goto_0
.end method
