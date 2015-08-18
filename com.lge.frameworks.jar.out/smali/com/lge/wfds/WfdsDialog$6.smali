.class Lcom/lge/wfds/WfdsDialog$6;
.super Ljava/lang/Object;
.source "WfdsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsDialog;->showProvDiscEnterPinDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsDialog;

.field final synthetic val$pin:Landroid/widget/EditText;

.field final synthetic val$wpsInfoValue:Landroid/net/wifi/WpsInfo;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsDialog;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lge/wfds/WfdsDialog$6;->this$0:Lcom/lge/wfds/WfdsDialog;

    iput-object p2, p0, Lcom/lge/wfds/WfdsDialog$6;->val$wpsInfoValue:Landroid/net/wifi/WpsInfo;

    iput-object p3, p0, Lcom/lge/wfds/WfdsDialog$6;->val$pin:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "pinString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wfds/WfdsDialog$6;->val$wpsInfoValue:Landroid/net/wifi/WpsInfo;

    iget v1, v1, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/lge/wfds/WfdsDialog$6;->val$pin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "WfdsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept Invitation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsDialog$6;->this$0:Lcom/lge/wfds/WfdsDialog;

    # getter for: Lcom/lge/wfds/WfdsDialog;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsDialog;->access$000(Lcom/lge/wfds/WfdsDialog;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x901029

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 164
    return-void

    .line 160
    :cond_0
    const-string v1, "WfdsDialog"

    const-string v2, "Accept Invitation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
