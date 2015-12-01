.class Lcom/lge/camera/controller/SettingRotatableExpandableController$9;
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
    .line 744
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # invokes: Lcom/lge/camera/controller/SettingRotatableExpandableController;->onOpenChildAnimationEnd()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 761
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 755
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    const/16 v1, 0xd

    # setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$602(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 749
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$700(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 750
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mCheckOpenAnimation:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$800(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 751
    return-void
.end method
