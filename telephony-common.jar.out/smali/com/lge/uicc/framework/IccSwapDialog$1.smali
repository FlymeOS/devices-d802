.class Lcom/lge/uicc/framework/IccSwapDialog$1;
.super Ljava/lang/Object;
.source "IccSwapDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccSwapDialog;->showIccAddedDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccSwapDialog;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccSwapDialog;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog$1;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$1;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    # getter for: Lcom/lge/uicc/framework/IccSwapDialog;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/uicc/framework/IccSwapDialog;->access$000(Lcom/lge/uicc/framework/IccSwapDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$1;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    const-string v2, "SIM is added"

    # invokes: Lcom/lge/uicc/framework/IccSwapDialog;->reboot(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/lge/uicc/framework/IccSwapDialog;->access$100(Lcom/lge/uicc/framework/IccSwapDialog;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    monitor-exit v1

    .line 189
    return-void

    .line 181
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "VZW"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog$1;->this$0:Lcom/lge/uicc/framework/IccSwapDialog;

    # invokes: Lcom/lge/uicc/framework/IccSwapDialog;->requestUIMPowerdown()V
    invoke-static {v0}, Lcom/lge/uicc/framework/IccSwapDialog;->access$200(Lcom/lge/uicc/framework/IccSwapDialog;)V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
