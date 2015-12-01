.class Lcom/lge/camera/setting/ExpandAnimationToggle$1;
.super Ljava/lang/Object;
.source "ExpandAnimationToggle.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/setting/ExpandAnimationToggle;-><init>(Landroid/content/Context;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/setting/ExpandAnimationToggle;


# direct methods
.method constructor <init>(Lcom/lge/camera/setting/ExpandAnimationToggle;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle$1;->this$0:Lcom/lge/camera/setting/ExpandAnimationToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle$1;->this$0:Lcom/lge/camera/setting/ExpandAnimationToggle;

    # getter for: Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/camera/setting/ExpandAnimationToggle;->access$000(Lcom/lge/camera/setting/ExpandAnimationToggle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle$1;->this$0:Lcom/lge/camera/setting/ExpandAnimationToggle;

    # getter for: Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/camera/setting/ExpandAnimationToggle;->access$000(Lcom/lge/camera/setting/ExpandAnimationToggle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 68
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 64
    return-void
.end method
