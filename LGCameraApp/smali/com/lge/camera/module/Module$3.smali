.class Lcom/lge/camera/module/Module$3;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/Module;->handleTakePictureError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/Module;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/Module;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/lge/camera/module/Module$3;->this$0:Lcom/lge/camera/module/Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/camera/module/Module$3;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/lge/camera/module/Module$3;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/lge/camera/module/Module$3;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/camera/module/Module$3;->this$0:Lcom/lge/camera/module/Module;

    iget-object v2, v2, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 303
    :cond_0
    return-void
.end method
