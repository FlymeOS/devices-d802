.class Lcom/lge/camera/controller/OptionMenuController$1;
.super Ljava/lang/Object;
.source "OptionMenuController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/OptionMenuController;->hideOptionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/OptionMenuController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/OptionMenuController;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/OptionMenuController$1$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/OptionMenuController$1$1;-><init>(Lcom/lge/camera/controller/OptionMenuController$1;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 106
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 103
    return-void
.end method
