.class Lcom/lge/camera/module/ClearShot$2;
.super Ljava/lang/Object;
.source "ClearShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/ClearShot;->showClearShotView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ClearShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/ClearShot;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    # getter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v2, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v2, v2, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f03000a

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/lge/camera/module/ClearShot;->access$402(Lcom/lge/camera/module/ClearShot;Landroid/view/View;)Landroid/view/View;

    .line 251
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0175

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 252
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    # getter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 254
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    # getter for: Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v2, p0, Lcom/lge/camera/module/ClearShot$2;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v2, v2, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/module/ClearShot;->startRotation(I)V

    .line 258
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method
