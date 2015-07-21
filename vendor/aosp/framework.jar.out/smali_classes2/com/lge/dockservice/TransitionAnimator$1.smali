.class Lcom/lge/dockservice/TransitionAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/TransitionAnimator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/dockservice/TransitionAnimator;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/TransitionAnimator;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/dockservice/TransitionAnimator$1;->this$0:Lcom/lge/dockservice/TransitionAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator$1;->this$0:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-static {v0}, Lcom/lge/dockservice/TransitionAnimator;->access$000(Lcom/lge/dockservice/TransitionAnimator;)Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator$1;->this$0:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-static {v0}, Lcom/lge/dockservice/TransitionAnimator;->access$000(Lcom/lge/dockservice/TransitionAnimator;)Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationCancel()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 77
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator$1;->this$0:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-static {v0}, Lcom/lge/dockservice/TransitionAnimator;->access$000(Lcom/lge/dockservice/TransitionAnimator;)Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator$1;->this$0:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-static {v0}, Lcom/lge/dockservice/TransitionAnimator;->access$000(Lcom/lge/dockservice/TransitionAnimator;)Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationEnd()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 67
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator$1;->this$0:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-static {v0}, Lcom/lge/dockservice/TransitionAnimator;->access$000(Lcom/lge/dockservice/TransitionAnimator;)Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lge/dockservice/TransitionAnimator$1;->this$0:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/TransitionAnimator;->mUpdateListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-static {v0}, Lcom/lge/dockservice/TransitionAnimator;->access$000(Lcom/lge/dockservice/TransitionAnimator;)Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationStart()V

    goto :goto_0
.end method
