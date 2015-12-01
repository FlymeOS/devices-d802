.class Lcom/lge/camera/command/SnapshotEffect$1;
.super Ljava/lang/Object;
.source "SnapshotEffect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/SnapshotEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SnapshotEffect;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SnapshotEffect;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/camera/command/SnapshotEffect$1;->this$0:Lcom/lge/camera/command/SnapshotEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/lge/camera/command/SnapshotEffect$1;->this$0:Lcom/lge/camera/command/SnapshotEffect;

    iget-object v1, v1, Lcom/lge/camera/command/SnapshotEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d017b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 47
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 41
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 38
    return-void
.end method
