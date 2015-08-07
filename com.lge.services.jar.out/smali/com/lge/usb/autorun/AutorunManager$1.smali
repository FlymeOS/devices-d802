.class Lcom/lge/usb/autorun/AutorunManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AutorunManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/usb/autorun/AutorunManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/usb/autorun/AutorunManager;


# direct methods
.method constructor <init>(Lcom/lge/usb/autorun/AutorunManager;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v5, "AutorunManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] receive intent ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v5, "com.lge.android.intent.AUTORUN_ENABLE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # getter for: Lcom/lge/usb/autorun/AutorunManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/lge/usb/autorun/AutorunManager;->access$000(Lcom/lge/usb/autorun/AutorunManager;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "autorun_switch"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, "autorun_trigger_value":I
    const-string v5, "AutorunManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autorun_trigger_value is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v1, :cond_1

    .line 97
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # invokes: Lcom/lge/usb/autorun/AutorunManager;->command(I)V
    invoke-static {v5, v9}, Lcom/lge/usb/autorun/AutorunManager;->access$100(Lcom/lge/usb/autorun/AutorunManager;I)V

    .line 98
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # setter for: Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z
    invoke-static {v5, v9}, Lcom/lge/usb/autorun/AutorunManager;->access$202(Lcom/lge/usb/autorun/AutorunManager;Z)Z

    .line 124
    .end local v1    # "autorun_trigger_value":I
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v1    # "autorun_trigger_value":I
    :cond_1
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    const/16 v6, 0x64

    # invokes: Lcom/lge/usb/autorun/AutorunManager;->command(I)V
    invoke-static {v5, v6}, Lcom/lge/usb/autorun/AutorunManager;->access$100(Lcom/lge/usb/autorun/AutorunManager;I)V

    .line 101
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # setter for: Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z
    invoke-static {v5, v8}, Lcom/lge/usb/autorun/AutorunManager;->access$202(Lcom/lge/usb/autorun/AutorunManager;Z)Z

    goto :goto_0

    .line 103
    .end local v1    # "autorun_trigger_value":I
    :cond_2
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const-string v5, "connected"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 106
    .local v3, "isConnected":Z
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # invokes: Lcom/lge/usb/autorun/AutorunManager;->getCurrentFunction()Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/usb/autorun/AutorunManager;->access$300(Lcom/lge/usb/autorun/AutorunManager;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "currentFunction":Ljava/lang/String;
    const-string v5, "factory"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 109
    .local v4, "isFactory":Z
    if-nez v3, :cond_3

    .line 110
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # getter for: Lcom/lge/usb/autorun/AutorunManager;->mAutorunEnabled:Z
    invoke-static {v5}, Lcom/lge/usb/autorun/AutorunManager;->access$200(Lcom/lge/usb/autorun/AutorunManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # getter for: Lcom/lge/usb/autorun/AutorunManager;->mAutorun:Lcom/lge/usb/autorun/Autorun;
    invoke-static {v5}, Lcom/lge/usb/autorun/AutorunManager;->access$400(Lcom/lge/usb/autorun/AutorunManager;)Lcom/lge/usb/autorun/Autorun;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/usb/autorun/Autorun;->getSetupWizardState()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 111
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # getter for: Lcom/lge/usb/autorun/AutorunManager;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v5}, Lcom/lge/usb/autorun/AutorunManager;->access$500(Lcom/lge/usb/autorun/AutorunManager;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v5

    const-string v6, "cdrom_storage"

    invoke-virtual {v5, v6, v8}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .line 114
    :cond_3
    const-string v5, "cdrom_storage"

    iget-object v6, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    # invokes: Lcom/lge/usb/autorun/AutorunManager;->getCurrentFunction()Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/usb/autorun/AutorunManager;->access$300(Lcom/lge/usb/autorun/AutorunManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/lge/usb/autorun/AutorunManager$1;->this$0:Lcom/lge/usb/autorun/AutorunManager;

    const/4 v6, 0x2

    # invokes: Lcom/lge/usb/autorun/AutorunManager;->command(I)V
    invoke-static {v5, v6}, Lcom/lge/usb/autorun/AutorunManager;->access$100(Lcom/lge/usb/autorun/AutorunManager;I)V

    .line 118
    const-string v5, "AutorunManager"

    const-string v6, "send autorun timer stop command here currently"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
