.class Lcom/lge/camera/controller/SoundController$1$1;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SoundController$1;->onLoadComplete(Landroid/media/SoundPool;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SoundController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SoundController$1;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "SoundControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method
