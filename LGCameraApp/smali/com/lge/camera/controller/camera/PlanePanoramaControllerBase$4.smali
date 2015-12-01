.class Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$4;
.super Ljava/lang/Object;
.source "PlanePanoramaControllerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->playPanoramaShutterSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$4;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$4;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->access$200(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$4;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->access$300(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->playFreePanoramaShutterSound()V

    .line 580
    return-void
.end method
