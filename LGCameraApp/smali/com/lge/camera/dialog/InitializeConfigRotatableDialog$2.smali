.class Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;
.super Ljava/lang/Object;
.source "InitializeConfigRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    const-string v0, "CameraApp"

    const-string v1, "cancel button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionAllMenuSelected(Z)V

    .line 72
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->onDismiss()V

    .line 73
    return-void
.end method
