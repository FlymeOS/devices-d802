.class Lcom/lge/camera/controller/QuickButtonController$9;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setMenuEnable(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;

.field final synthetic val$buttonType:I

.field final synthetic val$dimByEnable:Z

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;IZZ)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iput p2, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$buttonType:I

    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$enable:Z

    iput-boolean p4, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$dimByEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v6, 0x0

    .line 1149
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v5, v5, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1150
    iget v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$buttonType:I

    if-eq v5, v9, :cond_0

    .line 1151
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget v7, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$buttonType:I

    iget-boolean v8, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$enable:Z

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V
    invoke-static {v5, v7, v8}, Lcom/lge/camera/controller/QuickButtonController;->access$1200(Lcom/lge/camera/controller/QuickButtonController;IZ)V

    .line 1153
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1181
    :cond_1
    return-void

    .line 1156
    :cond_2
    const/16 v4, 0x64

    .line 1157
    .local v4, "tag":I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$1300(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v6

    .line 1158
    .local v3, "setEnable":Z
    :goto_0
    const/4 v0, 0x0

    .line 1159
    .local v0, "button":Lcom/lge/camera/components/RotateImageButton;
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1160
    .local v2, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    if-eqz v2, :cond_3

    .line 1163
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1165
    iget v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$buttonType:I

    if-eq v5, v9, :cond_4

    iget v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$buttonType:I

    if-ne v5, v4, :cond_3

    .line 1166
    :cond_4
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$enable:Z

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1167
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 1168
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V
    invoke-static {v5, v4, v3}, Lcom/lge/camera/controller/QuickButtonController;->access$1200(Lcom/lge/camera/controller/QuickButtonController;IZ)V

    .line 1169
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$dimByEnable:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # getter for: Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$1300(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1170
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v5, v0, v3}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_1

    .line 1157
    .end local v0    # "button":Lcom/lge/camera/components/RotateImageButton;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    .end local v3    # "setEnable":Z
    :cond_6
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickButtonController$9;->val$enable:Z

    goto :goto_0

    .line 1172
    .restart local v0    # "button":Lcom/lge/camera/components/RotateImageButton;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    .restart local v3    # "setEnable":Z
    :cond_7
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v7, 0x1

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v5, v0, v7}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_1

    .line 1175
    :cond_8
    invoke-virtual {v0, v6}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 1176
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V
    invoke-static {v5, v4, v6}, Lcom/lge/camera/controller/QuickButtonController;->access$1200(Lcom/lge/camera/controller/QuickButtonController;IZ)V

    .line 1177
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$9;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    # invokes: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v5, v0, v6}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_1
.end method
