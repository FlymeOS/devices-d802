.class Lcom/lge/camera/controller/camcorder/AudiozoomController$1;
.super Ljava/lang/Object;
.source "AudiozoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/AudiozoomController;->setmAudiozoomvalue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$1;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$1;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$000(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$1;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$1;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 161
    :cond_0
    return-void
.end method
