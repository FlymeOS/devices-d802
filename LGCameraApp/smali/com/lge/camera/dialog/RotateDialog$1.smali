.class Lcom/lge/camera/dialog/RotateDialog$1;
.super Ljava/lang/Object;
.source "RotateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/RotateDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/RotateDialog;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/RotateDialog;->onPrepare()V

    .line 70
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/RotateDialog;->requestFocus()V

    .line 73
    :cond_0
    return-void
.end method
