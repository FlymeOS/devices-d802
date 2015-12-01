.class public Lcom/lge/camera/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startAlphaAnimation(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "al"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 28
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    invoke-virtual {v0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static startAnimationList(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "show"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public static startShowingAnimation(Landroid/view/View;ZJLandroid/view/animation/Animation$AnimationListener;Z)V
    .locals 8
    .param p0, "aniView"    # Landroid/view/View;
    .param p1, "show"    # Z
    .param p2, "duration"    # J
    .param p4, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p5, "showAgain"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 38
    if-nez p5, :cond_2

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz p1, :cond_1

    move v6, v3

    :goto_0
    if-ne v7, v6, :cond_2

    .line 52
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v4

    .line 39
    goto :goto_0

    .line 43
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    if-eqz p1, :cond_4

    move v2, v5

    .line 45
    .local v2, "start":F
    :goto_3
    if-eqz p1, :cond_5

    .line 46
    .local v1, "end":F
    :goto_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 47
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .end local v0    # "ani":Landroid/view/animation/Animation;
    .end local v1    # "end":F
    .end local v2    # "start":F
    :cond_3
    move v3, v4

    .line 43
    goto :goto_2

    :cond_4
    move v2, v1

    .line 44
    goto :goto_3

    .restart local v2    # "start":F
    :cond_5
    move v1, v5

    .line 45
    goto :goto_4
.end method
