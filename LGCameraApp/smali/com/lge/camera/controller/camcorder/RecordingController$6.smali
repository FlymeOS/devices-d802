.class Lcom/lge/camera/controller/camcorder/RecordingController$6;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

.field final synthetic val$degree:I

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;ZI)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->val$start:Z

    iput p3, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->val$degree:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1265
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # invokes: Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4300(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1267
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_2

    .line 1268
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->val$start:Z

    if-eqz v0, :cond_3

    .line 1269
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->val$degree:I

    const/16 v3, 0x8

    invoke-interface {v0, v1, v7, v2, v3}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;III)V

    .line 1273
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$5000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$5200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$5100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->val$degree:I

    const/4 v4, 0x7

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;III)V

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$5300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1, v5, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 1284
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseFlashTemperature()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$5500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFlashOffByHighTemperature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1286
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$5600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v7, v5, v6}, Lcom/lge/camera/ControllerFunction;->setButtonRemainEnabled(IZZ)V

    .line 1292
    :cond_2
    return-void

    .line 1282
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$6;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$5400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeQuickButtonAll()V

    goto :goto_0
.end method
