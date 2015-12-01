.class Lcom/lge/camera/module/HDRShot$1;
.super Ljava/lang/Object;
.source "HDRShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/HDRShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/HDRShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/HDRShot;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lge/camera/module/HDRShot$1;->this$0:Lcom/lge/camera/module/HDRShot;

    iget-object v0, v0, Lcom/lge/camera/module/HDRShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 77
    :cond_0
    return-void
.end method
