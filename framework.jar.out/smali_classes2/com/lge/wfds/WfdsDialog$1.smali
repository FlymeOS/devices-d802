.class Lcom/lge/wfds/WfdsDialog$1;
.super Ljava/lang/Object;
.source "WfdsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsDialog;->showProvDeferUserInputDialog(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsDialog;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lge/wfds/WfdsDialog$1;->this$0:Lcom/lge/wfds/WfdsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 82
    const-string v0, "WfdsDialog"

    const-string v1, "Provision Defer Dialog is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/lge/wfds/WfdsDialog$1;->this$0:Lcom/lge/wfds/WfdsDialog;

    # getter for: Lcom/lge/wfds/WfdsDialog;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsDialog;->access$000(Lcom/lge/wfds/WfdsDialog;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x90102a

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 84
    return-void
.end method
