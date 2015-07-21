.class Lcom/lge/wifi/impl/WifiServerServiceExt$13;
.super Ljava/lang/Object;
.source "WifiServerServiceExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->handleCMCCEvent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;)V
    .locals 0

    .prologue
    .line 8150
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$13;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 8153
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 8154
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$13;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$13;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8155
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$13;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$300(Lcom/lge/wifi/impl/WifiServerServiceExt;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiAutoConnectValue(I)V

    .line 8156
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$13;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9800(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8157
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$13;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    const/4 v1, 0x0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mConfirmAutoConnectDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9802(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 8159
    :cond_0
    const/4 v0, 0x1

    .line 8161
    :cond_1
    return v0
.end method
