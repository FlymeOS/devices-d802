.class Lcom/lge/camera/controller/ShotModeMenuController$6;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 964
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v12, 0x64

    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 967
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "Main_CameraAppConfig"

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 969
    .local v5, "pref":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v8, :cond_0

    .line 971
    const-string v8, "mode_menu_view_list"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 972
    .local v1, "currViewIsList":Z
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d0213

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 974
    .local v0, "contentsLayout":Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d021a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 976
    .local v4, "listLayout":Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0d021c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 979
    .local v3, "gridLayout":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 980
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 981
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 983
    if-eqz v1, :cond_1

    .line 984
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput v6, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 985
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v6}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    .line 986
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 993
    :goto_0
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v9, v9, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v10, 0x7f0d0210

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v10, v10, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/lge/camera/controller/ShotModeMenuController;->setLayoutDegree(Landroid/view/View;IZ)V

    .line 998
    if-nez v1, :cond_2

    move v1, v6

    .line 999
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1000
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v8, "mode_menu_view_list"

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1001
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1003
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-ne v8, v6, :cond_3

    .line 1004
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    const/16 v9, 0x32

    invoke-virtual {v8, v3, v7, v6, v9}, Lcom/lge/camera/controller/ShotModeMenuController;->startAlphaAnimation(Landroid/view/View;III)V

    .line 1008
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v6, v6, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v7, v7, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0a0355

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1020
    .end local v0    # "contentsLayout":Landroid/view/View;
    .end local v1    # "currViewIsList":Z
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "gridLayout":Landroid/view/View;
    .end local v4    # "listLayout":Landroid/view/View;
    :cond_0
    :goto_2
    return-void

    .line 988
    .restart local v0    # "contentsLayout":Landroid/view/View;
    .restart local v1    # "currViewIsList":Z
    .restart local v3    # "gridLayout":Landroid/view/View;
    .restart local v4    # "listLayout":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput v7, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 989
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v8, v8, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v7}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    .line 990
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 991
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v7

    .line 998
    goto :goto_1

    .line 1011
    .restart local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v8, v4, v7, v6, v12}, Lcom/lge/camera/controller/ShotModeMenuController;->startAlphaAnimation(Landroid/view/View;III)V

    .line 1014
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v8, v0, v7, v6, v12}, Lcom/lge/camera/controller/ShotModeMenuController;->startAlphaAnimation(Landroid/view/View;III)V

    .line 1016
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v6, v6, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController$6;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v7, v7, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0a0356

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
