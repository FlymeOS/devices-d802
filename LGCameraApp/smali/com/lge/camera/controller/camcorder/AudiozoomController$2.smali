.class Lcom/lge/camera/controller/camcorder/AudiozoomController$2;
.super Ljava/lang/Object;
.source "AudiozoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/AudiozoomController;->startAudiozoom()V
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
    .line 222
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 224
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$200(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # invokes: Lcom/lge/camera/controller/camcorder/AudiozoomController;->checkLayout()Z
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 226
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->isSetQFL:Z
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$500(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # invokes: Lcom/lge/camera/controller/camcorder/AudiozoomController;->showAudiozoomReady()V
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$600(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$700(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    const v4, 0x7f0a030b

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "guideString":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$800(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateTextView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # invokes: Lcom/lge/camera/controller/camcorder/AudiozoomController;->getTextArea()I
    invoke-static {v4}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$900(Lcom/lge/camera/controller/camcorder/AudiozoomController;)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1000(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    const v5, 0x7f0a033c

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$800(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateTextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x0

    .line 239
    .local v2, "nAnglebar":I
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getZoomBarValue()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1200(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getZoomMaxValue()F
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 243
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->setStep(I)V

    .line 244
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/components/AudiozoomBar;->setProgress(I)V

    .line 245
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v3

    const v4, 0x7f0d000e

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1500(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 248
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->setVisibility(I)V

    .line 250
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/camera/components/AudiozoomBar;->setVisibility(I)V

    .line 252
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/lge/camera/controller/camcorder/AudiozoomController$2$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController$2$1;-><init>(Lcom/lge/camera/controller/camcorder/AudiozoomController$2;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1602(Lcom/lge/camera/controller/camcorder/AudiozoomController;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 269
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    # getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1600(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 271
    .end local v1    # "guideString":Ljava/lang/String;
    .end local v2    # "nAnglebar":I
    :cond_1
    return-void

    .line 240
    .restart local v1    # "guideString":Ljava/lang/String;
    .restart local v2    # "nAnglebar":I
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/ArithmeticException;
    const-string v3, "CameraApp"

    const-string v4, "ArithmeticException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
