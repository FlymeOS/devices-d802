.class Lcom/lge/dockservice/DockWindowService$1$1;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$1;->undock(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$1;

.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$undockPosX:I

.field final synthetic val$undockPosY:I


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1$1;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$activityName:Ljava/lang/String;

    iput p3, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosY:I

    iput p4, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 224
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v2, v2, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$activityName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 225
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    if-eqz v0, :cond_3

    .line 227
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$300(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 228
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$300(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$300(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    :try_start_0
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->access$300(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    :goto_0
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosY:I

    if-gez v2, :cond_2

    .line 238
    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->undockBySingleTabUp()V

    .line 247
    :goto_1
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosX:I

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$undockPosY:I

    invoke-virtual {v0, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->undock(II)V

    goto :goto_1

    .line 245
    :cond_3
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DockView for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$1;->val$activityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
