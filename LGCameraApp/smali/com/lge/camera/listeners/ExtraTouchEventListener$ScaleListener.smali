.class Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ExtraTouchEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/listeners/ExtraTouchEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field private mBlockJitterStep:F

.field private mOneStepBeforeSpan:F

.field private mediator:Lcom/lge/camera/Mediator;

.field final synthetic this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/ExtraTouchEventListener;Lcom/lge/camera/Mediator;)V
    .locals 1
    .param p2, "mediator"    # Lcom/lge/camera/Mediator;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 731
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mBlockJitterStep:F

    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mOneStepBeforeSpan:F

    .line 736
    iput-object p2, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mediator:Lcom/lge/camera/Mediator;

    .line 737
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/16 v4, 0x8

    .line 741
    const-string v5, "CameraApp"

    const-string v6, "onScale!!!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    iget v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mOneStepBeforeSpan:F

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 744
    .local v2, "mGapSpan":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mBlockJitterStep:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 745
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v4

    .line 761
    :goto_0
    return v4

    .line 748
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getGestureZoomFactor()I

    move-result v6

    mul-int v1, v5, v6

    .line 749
    .local v1, "gapSpan":I
    mul-int v5, v1, v1

    div-int/lit16 v5, v5, 0x384

    add-int/lit8 v3, v5, 0x1

    .line 751
    .local v3, "zoomStep":I
    if-lt v3, v4, :cond_1

    move v3, v4

    .line 752
    :cond_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScaleGestureDetector : gapSpan = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", zoomStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-eqz v2, :cond_2

    .line 755
    if-lez v2, :cond_3

    sget v0, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    .line 757
    .local v0, "cursorStep":I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->zoomInOut(IIZLcom/lge/camera/Mediator;)V

    .line 760
    .end local v0    # "cursorStep":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    iput v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mOneStepBeforeSpan:F

    .line 761
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v4

    goto :goto_0

    .line 755
    :cond_3
    sget v0, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 766
    const-string v0, "CameraApp"

    const-string v1, "onScaleBegin"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mOneStepBeforeSpan:F

    .line 768
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 773
    const-string v0, "CameraApp"

    const-string v1, "onScaleEnd```````````````````"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mOneStepBeforeSpan:F

    .line 775
    iget-object v0, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->this$0:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    sget v1, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/camera/listeners/ExtraTouchEventListener$ScaleListener;->mediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;->zoomInOut(IIZLcom/lge/camera/Mediator;)V

    .line 776
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 777
    return-void
.end method
