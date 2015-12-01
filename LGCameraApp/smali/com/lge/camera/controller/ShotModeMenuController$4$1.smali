.class Lcom/lge/camera/controller/ShotModeMenuController$4$1;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ShotModeMenuController$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$selectedItem:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController$4;Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

    iput-object p2, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->val$selectedItem:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    iput-object p3, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 891
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 892
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->val$selectedItem:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getCommand()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 895
    return-void
.end method
