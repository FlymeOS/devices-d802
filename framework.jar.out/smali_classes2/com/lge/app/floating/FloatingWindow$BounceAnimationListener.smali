.class Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceAnimationListener"
.end annotation


# instance fields
.field private dontUpdatePosition:Z

.field private dontUpdateSize:Z

.field final synthetic this$0:Lcom/lge/app/floating/FloatingWindow;


# direct methods
.method private constructor <init>(Lcom/lge/app/floating/FloatingWindow;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3229
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 3232
    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdatePosition:Z

    .line 3233
    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdateSize:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/FloatingWindow;Lcom/lge/app/floating/FloatingWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "x1"    # Lcom/lge/app/floating/FloatingWindow$1;

    .prologue
    .line 3229
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    return-void
.end method


# virtual methods
.method public checkWhatToUpdate(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "endRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    .line 3237
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    .line 3238
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdatePosition:Z

    .line 3240
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3241
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdateSize:Z

    .line 3243
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 3272
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 3247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 3248
    .local v0, "r":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 3249
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot onAnimationUpdate in BounceAnimationListener - Fail to getAnimatedValue"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    :cond_0
    :goto_0
    return-void

    .line 3253
    :cond_1
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdatePosition:Z

    if-nez v1, :cond_2

    .line 3254
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/app/floating/FloatingWindow;->moveInner(II)V

    .line 3255
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v1, :cond_2

    .line 3256
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onMoving(Lcom/lge/app/floating/FloatingWindow;II)V

    .line 3260
    :cond_2
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdateSize:Z

    if-nez v1, :cond_0

    .line 3261
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/app/floating/FloatingWindow;->setSize(II)V

    .line 3262
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v1, :cond_0

    .line 3263
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onResizing(Lcom/lge/app/floating/FloatingWindow;II)V

    goto :goto_0
.end method
