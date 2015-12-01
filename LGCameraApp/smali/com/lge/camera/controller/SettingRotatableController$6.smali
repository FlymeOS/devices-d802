.class Lcom/lge/camera/controller/SettingRotatableController$6;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController;->showAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 473
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 470
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 460
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    # getter for: Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableController;->access$000(Lcom/lge/camera/controller/SettingRotatableController;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableController;->setChildMenuLocation(IZ)V

    .line 467
    return-void
.end method
