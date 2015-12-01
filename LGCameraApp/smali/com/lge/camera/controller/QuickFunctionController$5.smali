.class Lcom/lge/camera/controller/QuickFunctionController$5;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionController;
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
    .line 402
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 405
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # invokes: Lcom/lge/camera/controller/QuickFunctionController;->checkOnClick()Z
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$200(Lcom/lge/camera/controller/QuickFunctionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    :goto_0
    return v4

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->initSettingMenu()V

    .line 416
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    # invokes: Lcom/lge/camera/controller/QuickFunctionController;->findTargetView(Landroid/view/View;)I
    invoke-static {v1, p1}, Lcom/lge/camera/controller/QuickFunctionController;->access$700(Lcom/lge/camera/controller/QuickFunctionController;Landroid/view/View;)I

    move-result v0

    .line 418
    .local v0, "tIndex":I
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$5;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowQuickFunctionDragDrop"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
