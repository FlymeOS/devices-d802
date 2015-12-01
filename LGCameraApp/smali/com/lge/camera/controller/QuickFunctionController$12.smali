.class Lcom/lge/camera/controller/QuickFunctionController$12;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$enabled:Z

.field final synthetic val$menuIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$enabled:Z

    iput p3, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$menuIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 957
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v2, v2, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 958
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$800(Lcom/lge/camera/controller/QuickFunctionController;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 959
    .local v1, "setEnable":Z
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$menuIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 960
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$menuIndex:I

    invoke-virtual {v2, v4, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    .line 962
    if-eqz v1, :cond_2

    .line 963
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$900(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$menuIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 970
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$menuIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/ListPreference;

    .line 972
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 973
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$menuIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 975
    :cond_0
    return-void

    .line 958
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v1    # "setEnable":Z
    :cond_1
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$enabled:Z

    goto :goto_0

    .line 966
    .restart local v1    # "setEnable":Z
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lge/camera/controller/QuickFunctionController;->access$900(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController$12;->val$menuIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
