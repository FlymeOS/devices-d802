.class Lcom/lge/camera/dialog/RotateDialog$2;
.super Ljava/lang/Object;
.source "RotateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/RotateDialog;->requestFocus()V
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
    .line 91
    iput-object p1, p0, Lcom/lge/camera/dialog/RotateDialog$2;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog$2;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v1, v1, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog$2;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v1, v1, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog$2;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v1, v1, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v2, 0x7f0d0197

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    .local v0, "dialog":Landroid/view/ViewGroup;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog$2;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v1, v1, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->setContentDescriptionForAccessibility(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 102
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_0
.end method
