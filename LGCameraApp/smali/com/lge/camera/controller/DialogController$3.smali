.class Lcom/lge/camera/controller/DialogController$3;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/DialogController;
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
    .line 290
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 293
    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    const/16 v1, 0x19

    if-eq p2, v1, :cond_0

    .line 297
    const/16 v1, 0x18

    if-eq p2, v1, :cond_0

    .line 299
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/DialogController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    # getter for: Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/DialogController;->access$000(Lcom/lge/camera/controller/DialogController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 305
    iget-object v1, p0, Lcom/lge/camera/controller/DialogController$3;->this$0:Lcom/lge/camera/controller/DialogController;

    # getter for: Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/DialogController;->access$000(Lcom/lge/camera/controller/DialogController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 311
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
