.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$6;
.super Ljava/lang/Object;
.source "LGWifiP2pServiceImpl.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$6;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "ed"    # Landroid/text/Editable;

    .prologue
    .line 2751
    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine$6;->this$1:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDialogWps:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 2752
    .local v0, "positiveButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2753
    :cond_0
    return-void

    .line 2752
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2755
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2757
    return-void
.end method
