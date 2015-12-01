.class Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;
.super Ljava/lang/Object;
.source "PlanePanoramaControllerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->showGuideText(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

.field final synthetic val$isVisible:Z

.field final synthetic val$stringId:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;IZ)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    iput p2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->val$stringId:I

    iput-boolean p3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->access$000(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 446
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->val$stringId:I

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d009a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->val$stringId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 451
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->val$isVisible:Z

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    iget-object v1, v1, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->access$100(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startRotateGuideText(Landroid/widget/RelativeLayout;I)V

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    iget-object v1, v0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;->val$isVisible:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method
