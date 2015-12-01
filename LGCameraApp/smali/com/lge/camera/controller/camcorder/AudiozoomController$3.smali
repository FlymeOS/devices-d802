.class Lcom/lge/camera/controller/camcorder/AudiozoomController$3;
.super Ljava/lang/Object;
.source "AudiozoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/AudiozoomController;->updateAudiozoomvalue(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

.field final synthetic val$tmpzoom:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;I)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    iput p2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->val$tmpzoom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 323
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1800(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1900(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, "nAnglebar":I
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$2000(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getZoomMaxValue()F

    move-result v1

    .line 331
    .local v1, "max":F
    float-to-int v3, v1

    :try_start_0
    iget v4, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->val$tmpzoom:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_2

    .line 332
    const/16 v2, 0x64

    .line 341
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->setStep(I)V

    .line 342
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/components/AudiozoomBar;->setProgress(I)V

    .line 343
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->setVisibility(I)V

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/AudiozoomBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/AudiozoomBar;->setVisibility(I)V

    .line 350
    .end local v1    # "max":F
    .end local v2    # "nAnglebar":I
    :cond_1
    return-void

    .line 333
    .restart local v1    # "max":F
    .restart local v2    # "nAnglebar":I
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->val$tmpzoom:I

    if-nez v3, :cond_3

    .line 334
    const/4 v2, 0x0

    goto :goto_0

    .line 336
    :cond_3
    iget v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;->val$tmpzoom:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/ArithmeticException;
    const-string v3, "CameraApp"

    const-string v4, "ArithmeticException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
