.class Lcom/lge/camera/controller/QuickFunctionController$15;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1041
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v3, v3, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1043
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1044
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # invokes: Lcom/lge/camera/controller/QuickFunctionController;->setMenuIconSetTag(I)V
    invoke-static {v3, v0}, Lcom/lge/camera/controller/QuickFunctionController;->access$1200(Lcom/lge/camera/controller/QuickFunctionController;I)V

    .line 1045
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v4, v0}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 1046
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v5, v5, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v0}, Lcom/lge/camera/ControllerFunction;->getQFIndexListItem(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    const/4 v1, 0x0

    .line 1050
    .local v1, "rButton":Lcom/lge/camera/components/RotateImageButton;
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1051
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rButton":Lcom/lge/camera/components/RotateImageButton;
    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1052
    .restart local v1    # "rButton":Lcom/lge/camera/components/RotateImageButton;
    if-eqz v1, :cond_1

    .line 1053
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1054
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 1055
    invoke-virtual {v1, v6}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 1050
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1057
    :cond_2
    invoke-virtual {v1, v6}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 1058
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController$15;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # getter for: Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/controller/QuickFunctionController;->access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1059
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    goto :goto_2

    .line 1064
    :cond_3
    return-void
.end method
