.class Lcom/lge/dockservice/DockWindowService$DockView$4;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Lcom/lge/dockservice/TransitionAnimator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$DockView;

.field final synthetic val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$DockView;Lcom/lge/dockservice/TransitionAnimator$UpdateListener;)V
    .locals 0

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 2

    .prologue
    .line 1621
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slideTo animation cancelled"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView$4;->onAnimationEnd()V

    .line 1623
    return-void
.end method

.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 1609
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slideTo animation ended"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1611
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1612
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1613
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # invokes: Lcom/lge/dockservice/DockWindowService;->updateDockAxis(Lcom/lge/dockservice/DockWindowService$DockView;)V
    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$2300(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V

    .line 1614
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    .line 1615
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    if-eqz v1, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    invoke-interface {v1}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationEnd()V

    .line 1618
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 1582
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slideTo animation started"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    invoke-interface {v0}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationStart()V

    .line 1586
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(II)V
    .locals 6
    .param p1, "currentX"    # I
    .param p2, "currentY"    # I

    .prologue
    .line 1589
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1590
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1591
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1593
    :try_start_0
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget-object v3, v3, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    :goto_0
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    if-eqz v3, :cond_0

    .line 1604
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    invoke-interface {v3, p2, p2}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationUpdate(II)V

    .line 1606
    :cond_0
    return-void

    .line 1595
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->access$2200(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/TransitionAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/dockservice/TransitionAnimator;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1599
    :catch_1
    move-exception v1

    .line 1600
    .local v1, "ex":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
