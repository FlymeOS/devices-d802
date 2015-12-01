.class Lcom/lge/camera/controller/PreviewPanelController$10;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x1388

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    .line 2621
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    .line 2622
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2623
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput-boolean v11, v1, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2624
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v1, v11, v11}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    .line 2626
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_auto_review"

    invoke-interface {v1, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    .local v0, "autoReview":Ljava/lang/String;
    const-string v1, "on_delay_2sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x7d0

    .line 2628
    .local v4, "duration":J
    :goto_0
    const-string v1, "on_delay_5sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v2, v8

    .line 2630
    .local v2, "autoReviewDuration":J
    :goto_1
    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimemachineHasPictures()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2631
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$10;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x1

    invoke-interface {v1, v11, v8, v9, v6}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 2634
    .end local v0    # "autoReview":Ljava/lang/String;
    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_0
    return-void

    .restart local v0    # "autoReview":Ljava/lang/String;
    :cond_1
    move-wide v4, v6

    .line 2627
    goto :goto_0

    .restart local v4    # "duration":J
    :cond_2
    move-wide v2, v4

    .line 2628
    goto :goto_1
.end method
