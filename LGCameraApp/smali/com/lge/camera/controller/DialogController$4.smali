.class Lcom/lge/camera/controller/DialogController$4;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/DialogController;->showHelpGuidePopup(Ljava/lang/String;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/DialogController;

.field final synthetic val$dialogId:I

.field final synthetic val$useCheckBox:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/DialogController;IZ)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController$4;->this$0:Lcom/lge/camera/controller/DialogController;

    iput p2, p0, Lcom/lge/camera/controller/DialogController$4;->val$dialogId:I

    iput-boolean p3, p0, Lcom/lge/camera/controller/DialogController$4;->val$useCheckBox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController$4;->this$0:Lcom/lge/camera/controller/DialogController;

    # getter for: Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/DialogController;->access$000(Lcom/lge/camera/controller/DialogController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController$4;->this$0:Lcom/lge/camera/controller/DialogController;

    iget v1, p0, Lcom/lge/camera/controller/DialogController$4;->val$dialogId:I

    iget-boolean v2, p0, Lcom/lge/camera/controller/DialogController$4;->val$useCheckBox:Z

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(IZ)V

    .line 428
    return-void
.end method
