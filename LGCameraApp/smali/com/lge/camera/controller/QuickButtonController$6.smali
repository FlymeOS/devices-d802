.class Lcom/lge/camera/controller/QuickButtonController$6;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$6;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1057
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$6;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v5, v5, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1058
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$6;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1075
    :cond_0
    return-void

    .line 1061
    :cond_1
    const/16 v4, 0x64

    .line 1062
    .local v4, "tag":I
    const/4 v0, 0x0

    .line 1063
    .local v0, "button":Lcom/lge/camera/components/RotateImageButton;
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$6;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1064
    .local v3, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v3}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_2

    .line 1066
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1067
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$6;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$1000(Lcom/lge/camera/controller/QuickButtonController;)[Z

    move-result-object v5

    aget-boolean v1, v5, v4

    .line 1068
    .local v1, "enable":Z
    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 1069
    invoke-virtual {v3, v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->setEnable(Z)V

    .line 1070
    if-nez v1, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v5}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->setNeedDefault(Z)V

    .line 1071
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$6;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V
    invoke-static {v5, v4}, Lcom/lge/camera/controller/QuickButtonController;->access$100(Lcom/lge/camera/controller/QuickButtonController;I)V

    .line 1072
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$6;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v5, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_0

    .line 1070
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
