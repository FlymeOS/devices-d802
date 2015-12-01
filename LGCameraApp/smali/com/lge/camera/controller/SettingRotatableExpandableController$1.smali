.class Lcom/lge/camera/controller/SettingRotatableExpandableController$1;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 174
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    # setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I
    invoke-static {v4, v5}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$002(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 178
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 181
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 182
    .local v3, "y":F
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v4, v4, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v5, v5, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "parentLastView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 185
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v6, v6, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v7, v7, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getBottom()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .local v1, "parentTransparentRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkAndCloseChildView()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    const/4 v4, 0x1

    .line 203
    .end local v0    # "parentLastView":Landroid/view/View;
    .end local v1    # "parentTransparentRect":Landroid/graphics/Rect;
    .end local v2    # "x":F
    .end local v3    # "y":F
    :goto_0
    return v4

    .line 198
    .restart local v0    # "parentLastView":Landroid/view/View;
    .restart local v1    # "parentTransparentRect":Landroid/graphics/Rect;
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingView()V

    .line 203
    .end local v0    # "parentLastView":Landroid/view/View;
    .end local v1    # "parentTransparentRect":Landroid/graphics/Rect;
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
