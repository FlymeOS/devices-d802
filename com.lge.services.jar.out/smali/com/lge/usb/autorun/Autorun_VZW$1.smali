.class Lcom/lge/usb/autorun/Autorun_VZW$1;
.super Landroid/content/BroadcastReceiver;
.source "Autorun_VZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/usb/autorun/Autorun_VZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/usb/autorun/Autorun_VZW;


# direct methods
.method constructor <init>(Lcom/lge/usb/autorun/Autorun_VZW;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # invokes: Lcom/lge/usb/autorun/Autorun_VZW;->setSecureLockState(Z)V
    invoke-static {v1, v3}, Lcom/lge/usb/autorun/Autorun_VZW;->access$000(Lcom/lge/usb/autorun/Autorun_VZW;Z)V

    .line 53
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    invoke-virtual {v1}, Lcom/lge/usb/autorun/Autorun_VZW;->getUsbUnplugState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # getter for: Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z
    invoke-static {v1}, Lcom/lge/usb/autorun/Autorun_VZW;->access$100(Lcom/lge/usb/autorun/Autorun_VZW;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # getter for: Lcom/lge/usb/autorun/Autorun_VZW;->mGuestMode:Z
    invoke-static {v1}, Lcom/lge/usb/autorun/Autorun_VZW;->access$200(Lcom/lge/usb/autorun/Autorun_VZW;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # setter for: Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z
    invoke-static {v1, v3}, Lcom/lge/usb/autorun/Autorun_VZW;->access$302(Lcom/lge/usb/autorun/Autorun_VZW;Z)Z

    .line 55
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] setCurrentFunction(charge_only,false)::onReceive when securelocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    const-string v2, "charge_only"

    invoke-virtual {v1, v2, v4}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 81
    :cond_2
    :goto_0
    return-void

    .line 63
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    const-string v2, "service.plushome.currenthome"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kids"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # setter for: Lcom/lge/usb/autorun/Autorun_VZW;->mGuestMode:Z
    invoke-static {v1, v2}, Lcom/lge/usb/autorun/Autorun_VZW;->access$202(Lcom/lge/usb/autorun/Autorun_VZW;Z)Z

    .line 65
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # getter for: Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z
    invoke-static {v1}, Lcom/lge/usb/autorun/Autorun_VZW;->access$100(Lcom/lge/usb/autorun/Autorun_VZW;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # setter for: Lcom/lge/usb/autorun/Autorun_VZW;->mSecureLocked:Z
    invoke-static {v1, v4}, Lcom/lge/usb/autorun/Autorun_VZW;->access$102(Lcom/lge/usb/autorun/Autorun_VZW;Z)Z

    .line 67
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # getter for: Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z
    invoke-static {v1}, Lcom/lge/usb/autorun/Autorun_VZW;->access$300(Lcom/lge/usb/autorun/Autorun_VZW;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    # setter for: Lcom/lge/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z
    invoke-static {v1, v4}, Lcom/lge/usb/autorun/Autorun_VZW;->access$302(Lcom/lge/usb/autorun/Autorun_VZW;Z)Z

    .line 70
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    const-string v2, "cdrom_storage"

    invoke-virtual {v1, v2, v4}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 71
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    invoke-virtual {v1}, Lcom/lge/usb/autorun/Autorun_VZW;->getUsbUnplugState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] setCurrentFunction(cdrom_storage,false)::onReceive when lock released"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    const-string v2, "cdrom_storage"

    invoke-virtual {v1, v2, v4}, Lcom/lge/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] autorunStartTimer is called::onReceive when lock released"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun_VZW$1;->this$0:Lcom/lge/usb/autorun/Autorun_VZW;

    invoke-virtual {v1}, Lcom/lge/usb/autorun/Autorun_VZW;->autorunStartTimer()V

    goto :goto_0
.end method
