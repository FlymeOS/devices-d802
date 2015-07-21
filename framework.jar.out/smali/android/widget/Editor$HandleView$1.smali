.class Landroid/widget/Editor$HandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->showActionPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0

    .prologue
    .line 4022
    iput-object p1, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4024
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4026
    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 4027
    .local v0, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_1

    .line 4028
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandle()Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v2

    .line 4029
    .local v2, "start":Landroid/widget/Editor$HandleView;
    if-eqz v2, :cond_0

    .line 4030
    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    # setter for: Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z
    invoke-static {v3, v5}, Landroid/widget/Editor$HandleView;->access$3502(Landroid/widget/Editor$HandleView;Z)Z

    .line 4031
    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;
    invoke-static {v3}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v4, v4, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;
    invoke-static {v4}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 4033
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getEndHandle()Landroid/widget/Editor$SelectionEndHandleView;

    move-result-object v1

    .line 4034
    .local v1, "end":Landroid/widget/Editor$HandleView;
    if-eqz v1, :cond_1

    .line 4035
    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    # setter for: Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z
    invoke-static {v3, v5}, Landroid/widget/Editor$HandleView;->access$3502(Landroid/widget/Editor$HandleView;Z)Z

    .line 4036
    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;
    invoke-static {v3}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v4, v4, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;
    invoke-static {v4}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v4

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 4040
    .end local v0    # "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    .end local v1    # "end":Landroid/widget/Editor$HandleView;
    .end local v2    # "start":Landroid/widget/Editor$HandleView;
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, v3, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v3}, Landroid/widget/Editor$ActionPopupWindow;->show()V

    .line 4041
    return-void
.end method
