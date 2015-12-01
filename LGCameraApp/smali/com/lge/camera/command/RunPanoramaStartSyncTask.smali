.class public Lcom/lge/camera/command/RunPanoramaStartSyncTask;
.super Lcom/lge/camera/command/Command;
.source "RunPanoramaStartSyncTask.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Lcom/lge/olaworks/library/AutoPanorama;

    .line 28
    .local v0, "panorama":Lcom/lge/olaworks/library/AutoPanorama;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/lge/olaworks/library/AutoPanorama;->runStartSynthesisTask()V

    .line 31
    :cond_0
    return-void
.end method
