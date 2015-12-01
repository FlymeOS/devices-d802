.class Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;
.super Ljava/lang/Object;
.source "PlanePanoramaControllerBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startAnimationAlphaShowing(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    iput-object p2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 218
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 214
    return-void
.end method
