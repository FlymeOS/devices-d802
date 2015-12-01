.class Lcom/lge/camera/controller/DialogController$7;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/DialogController;->showSavingProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/DialogController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/DialogController;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController$7;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController$7;->this$0:Lcom/lge/camera/controller/DialogController;

    # getter for: Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/DialogController;->access$000(Lcom/lge/camera/controller/DialogController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController$7;->this$0:Lcom/lge/camera/controller/DialogController;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    .line 482
    return-void
.end method
