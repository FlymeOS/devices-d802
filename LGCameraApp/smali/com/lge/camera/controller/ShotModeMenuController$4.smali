.class Lcom/lge/camera/controller/ShotModeMenuController$4;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 857
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 860
    const/4 v2, 0x0

    .line 861
    .local v2, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    const/4 v1, 0x0

    .line 862
    .local v1, "isSelected":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 863
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "mode_menu_command"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-nez v5, :cond_2

    .line 865
    move v3, p3

    .line 866
    .local v3, "pos":I
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v5, :cond_0

    .line 867
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v2

    .line 868
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->isSelectedItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 869
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    # invokes: Lcom/lge/camera/controller/ShotModeMenuController;->updateListViewItem(I)V
    invoke-static {v5, v3}, Lcom/lge/camera/controller/ShotModeMenuController;->access$000(Lcom/lge/camera/controller/ShotModeMenuController;I)V

    .line 870
    const/4 v1, 0x1

    .line 883
    .end local v3    # "pos":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 884
    move-object v4, v2

    .line 885
    .local v4, "selectedItem":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v4, :cond_1

    .line 886
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v4}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 888
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v6, Lcom/lge/camera/controller/ShotModeMenuController$4$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/lge/camera/controller/ShotModeMenuController$4$1;-><init>(Lcom/lge/camera/controller/ShotModeMenuController$4;Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 899
    .end local v4    # "selectedItem":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/ShotModeMenuController;->hide()V

    .line 900
    return-void

    .line 874
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-eqz v5, :cond_0

    .line 875
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, p3}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v2

    .line 876
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, p3}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->isSelectedItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 877
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    # invokes: Lcom/lge/camera/controller/ShotModeMenuController;->updateGridViewItem(I)V
    invoke-static {v5, p3}, Lcom/lge/camera/controller/ShotModeMenuController;->access$100(Lcom/lge/camera/controller/ShotModeMenuController;I)V

    .line 878
    const-string v5, "fromGridView"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 879
    const/4 v1, 0x1

    goto :goto_0
.end method
