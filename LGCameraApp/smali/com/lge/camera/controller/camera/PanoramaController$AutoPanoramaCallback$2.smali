.class Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->onPanningSpeedWarning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

.field final synthetic val$warningFlag:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;Z)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->val$warningFlag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 683
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 685
    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->val$warningFlag:Z

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    .line 686
    .local v2, "visible":I
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    const v5, 0x7f0d0118

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 689
    .local v3, "warning":Lcom/lge/camera/components/RotateLayout;
    if-eqz v3, :cond_3

    .line 690
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    const v5, 0x7f0d011a

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 691
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 692
    const v4, 0x7f0a027f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 693
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v0

    .line 694
    .local v0, "degree":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$5600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-nez v4, :cond_0

    .line 695
    add-int/lit16 v4, v0, 0x10e

    rem-int/lit16 v0, v4, 0x168

    .line 697
    :cond_0
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 699
    .end local v0    # "degree":I
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2600(Lcom/lge/camera/controller/camera/PanoramaController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 700
    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v4, v4, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iget-object v5, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v5, v5, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v5}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2300(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v5

    iget-boolean v6, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$2;->val$warningFlag:Z

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->initAutoPanoramaPlayUI(IZ)Z

    .line 702
    :cond_2
    invoke-virtual {v3, v2}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 704
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_3
    return-void

    .line 685
    .end local v2    # "visible":I
    .end local v3    # "warning":Lcom/lge/camera/components/RotateLayout;
    :cond_4
    const/4 v2, 0x4

    goto :goto_0
.end method
