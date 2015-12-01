.class Lcom/lge/camera/controller/SettingRotatableExpandableController$11;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCheckCloseAnimation:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$1000(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 922
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->onCloseAnimationEnd()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$900(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 923
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    const/4 v1, 0x0

    # setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$602(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 924
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 916
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    const/16 v1, 0x65

    # setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$602(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 912
    return-void
.end method
