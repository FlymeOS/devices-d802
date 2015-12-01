.class Lcom/lge/camera/controller/ShotModeMenuController$1;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ShotModeMenuController;->setLayoutDegree(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;

.field final synthetic val$animation:Z

.field final synthetic val$shotModeMenuLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iput-object p2, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->val$shotModeMenuLayout:Landroid/view/View;

    iput-boolean p3, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->val$animation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->isCurrentCentered()V

    .line 581
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->val$shotModeMenuLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->val$animation:Z

    if-eqz v0, :cond_3

    .line 590
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->val$shotModeMenuLayout:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/ShotModeMenuController;->showingAnimation(Landroid/view/View;Z)V

    .line 596
    :cond_1
    :goto_1
    return-void

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 586
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v1, v1, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/GridView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->val$shotModeMenuLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$1;->val$shotModeMenuLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
