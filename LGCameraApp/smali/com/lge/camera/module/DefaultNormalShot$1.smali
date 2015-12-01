.class Lcom/lge/camera/module/DefaultNormalShot$1;
.super Ljava/lang/Object;
.source "DefaultNormalShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/DefaultNormalShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/DefaultNormalShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/DefaultNormalShot;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/camera/module/DefaultNormalShot$1;->this$0:Lcom/lge/camera/module/DefaultNormalShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot$1;->this$0:Lcom/lge/camera/module/DefaultNormalShot;

    iget-object v0, v0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot$1;->this$0:Lcom/lge/camera/module/DefaultNormalShot;

    iget-object v0, v0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot$1;->this$0:Lcom/lge/camera/module/DefaultNormalShot;

    iget-object v0, v0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot$1;->this$0:Lcom/lge/camera/module/DefaultNormalShot;

    iget-object v0, v0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot$1;->this$0:Lcom/lge/camera/module/DefaultNormalShot;

    iget-object v0, v0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot$1;->this$0:Lcom/lge/camera/module/DefaultNormalShot;

    iget-object v0, v0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 85
    :cond_0
    return-void
.end method
