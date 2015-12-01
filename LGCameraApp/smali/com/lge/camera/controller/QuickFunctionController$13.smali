.class Lcom/lge/camera/controller/QuickFunctionController$13;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$dimByEnable:Z

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;ZZ)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->val$enabled:Z

    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->val$dimByEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 987
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v5, v5, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 988
    const/4 v2, 0x1

    .line 989
    .local v2, "menuEnabled":Z
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$800(Lcom/lge/camera/controller/QuickFunctionController;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v6

    .line 990
    .local v3, "setEnable":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 991
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5, v3}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 993
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$800(Lcom/lge/camera/controller/QuickFunctionController;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 994
    const/4 v2, 0x0

    .line 1002
    :cond_0
    :goto_2
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->val$dimByEnable:Z

    if-nez v5, :cond_1

    if-nez v2, :cond_5

    .line 1003
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v5, v0, v3}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    .line 1007
    :goto_3
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 1008
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_2

    .line 1009
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 990
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 989
    .end local v0    # "i":I
    .end local v1    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v3    # "setEnable":Z
    .end local v4    # "size":I
    :cond_3
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->val$enabled:Z

    goto :goto_0

    .line 996
    .restart local v0    # "i":I
    .restart local v3    # "setEnable":Z
    .restart local v4    # "size":I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5}, Lcom/lge/camera/components/RotateImageButton;->isEnabled()Z

    move-result v2

    .line 997
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickFunctionController;->access$1000(Lcom/lge/camera/controller/QuickFunctionController;)[Z

    move-result-object v5

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_0

    .line 998
    const/4 v2, 0x1

    goto :goto_2

    .line 1005
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$13;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v7}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    goto :goto_3

    .line 1012
    :cond_6
    return-void
.end method
