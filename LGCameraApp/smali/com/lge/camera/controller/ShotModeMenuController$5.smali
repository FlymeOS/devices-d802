.class Lcom/lge/camera/controller/ShotModeMenuController$5;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/ShotModeMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChanged(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 961
    return-void
.end method

.method public onTouchScrollEnd()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShowAnimation:Z

    .line 957
    return-void
.end method

.method public onTouchScrollStarted()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShowAnimation:Z

    .line 929
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStateIdle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 930
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStarted:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 931
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStarted:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 933
    :cond_0
    return-void
.end method

.method public onTouchScrollTab(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 937
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 940
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput p1, v2, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    .line 944
    move v1, p1

    .line 945
    .local v1, "pos":I
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v2, v1}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v0

    .line 946
    .local v0, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v0, :cond_1

    .line 947
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v2, v2, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController$5;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController;->checkScrollContents()V

    .line 952
    .end local v0    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v1    # "pos":I
    :cond_2
    return-void
.end method
