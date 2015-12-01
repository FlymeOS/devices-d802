.class public Lcom/lge/camera/command/SnapshotEffect;
.super Lcom/lge/camera/command/Command;
.source "SnapshotEffect.java"


# instance fields
.field private capturedImageAniListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 36
    new-instance v0, Lcom/lge/camera/command/SnapshotEffect$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/SnapshotEffect$1;-><init>(Lcom/lge/camera/command/SnapshotEffect;)V

    iput-object v0, p0, Lcom/lge/camera/command/SnapshotEffect;->capturedImageAniListener:Landroid/view/animation/Animation$AnimationListener;

    .line 27
    return-void
.end method

.method private startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V
    .locals 4
    .param p1, "aniListener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p2, "captureImageView"    # Landroid/view/View;

    .prologue
    .line 53
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const/4 v0, 0x0

    .line 59
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 60
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 61
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 62
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 31
    const-string v1, "CameraApp"

    const-string v2, "SnapshotEffect"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/lge/camera/command/SnapshotEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d017b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .local v0, "mOnDelayOffView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/command/SnapshotEffect;->capturedImageAniListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/command/SnapshotEffect;->startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V

    .line 34
    return-void
.end method
