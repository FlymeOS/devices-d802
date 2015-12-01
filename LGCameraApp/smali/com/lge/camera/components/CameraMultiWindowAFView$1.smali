.class Lcom/lge/camera/components/CameraMultiWindowAFView$1;
.super Ljava/lang/Object;
.source "CameraMultiWindowAFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/CameraMultiWindowAFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/CameraMultiWindowAFView;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/CameraMultiWindowAFView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;->this$0:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;->this$0:Lcom/lge/camera/components/CameraMultiWindowAFView;

    # getter for: Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->access$000(Lcom/lge/camera/components/CameraMultiWindowAFView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;->this$0:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setAnimation()V

    .line 53
    iget-object v0, p0, Lcom/lge/camera/components/CameraMultiWindowAFView$1;->this$0:Lcom/lge/camera/components/CameraMultiWindowAFView;

    # getter for: Lcom/lge/camera/components/CameraMultiWindowAFView;->animationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->access$000(Lcom/lge/camera/components/CameraMultiWindowAFView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method
