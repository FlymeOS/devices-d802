.class Lcom/lge/camera/module/FullFrameContinuousShot$2;
.super Ljava/lang/Object;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/FullFrameContinuousShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v3, v3, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 196
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;
    invoke-static {v3}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$000(Lcom/lge/camera/module/FullFrameContinuousShot;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 212
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v3, v3, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0036

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BurstShotProgressBar;

    .line 201
    .local v0, "bpb":Lcom/lge/camera/components/BurstShotProgressBar;
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;
    invoke-static {v3}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$000(Lcom/lge/camera/module/FullFrameContinuousShot;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/BurstShotProgressBar;->setProgress(I)V

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v3, v3, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d00c5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 207
    .local v2, "vgInit":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;
    invoke-static {v3}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$000(Lcom/lge/camera/module/FullFrameContinuousShot;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 208
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;
    invoke-static {v3}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$000(Lcom/lge/camera/module/FullFrameContinuousShot;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    const/4 v4, 0x0

    # setter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$002(Lcom/lge/camera/module/FullFrameContinuousShot;Landroid/view/View;)Landroid/view/View;

    .line 211
    iget-object v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot$2;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # setter for: Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z
    invoke-static {v3, v5}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$202(Lcom/lge/camera/module/FullFrameContinuousShot;Z)Z

    goto :goto_0
.end method
