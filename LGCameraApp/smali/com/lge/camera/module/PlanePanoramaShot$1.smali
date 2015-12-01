.class Lcom/lge/camera/module/PlanePanoramaShot$1;
.super Ljava/lang/Object;
.source "PlanePanoramaShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/PlanePanoramaShot;->takePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/PlanePanoramaShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/PlanePanoramaShot;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/camera/module/PlanePanoramaShot$1;->this$0:Lcom/lge/camera/module/PlanePanoramaShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/module/PlanePanoramaShot$1;->this$0:Lcom/lge/camera/module/PlanePanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/PlanePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/lge/camera/module/PlanePanoramaShot$1;->this$0:Lcom/lge/camera/module/PlanePanoramaShot;

    iget-object v0, v0, Lcom/lge/camera/module/PlanePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startPlanePanorama()V

    .line 32
    return-void
.end method
