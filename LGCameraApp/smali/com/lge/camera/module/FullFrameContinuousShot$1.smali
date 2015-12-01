.class Lcom/lge/camera/module/FullFrameContinuousShot$1;
.super Ljava/lang/Object;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FullFrameContinuousShot;->updateUIView()V
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
    .line 107
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$1;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 110
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot$1;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot$1;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0036

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BurstShotProgressBar;

    .line 114
    .local v0, "bpb":Lcom/lge/camera/components/BurstShotProgressBar;
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot$1;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;
    invoke-static {v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$000(Lcom/lge/camera/module/FullFrameContinuousShot;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot$1;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I
    invoke-static {v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$100(Lcom/lge/camera/module/FullFrameContinuousShot;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/BurstShotProgressBar;->setProgress(I)V

    .line 118
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot$1;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    # getter for: Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I
    invoke-static {v5}, Lcom/lge/camera/module/FullFrameContinuousShot;->access$100(Lcom/lge/camera/module/FullFrameContinuousShot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method
