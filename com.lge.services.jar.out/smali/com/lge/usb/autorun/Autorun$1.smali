.class Lcom/lge/usb/autorun/Autorun$1;
.super Landroid/content/BroadcastReceiver;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/usb/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/usb/autorun/Autorun;


# direct methods
.method constructor <init>(Lcom/lge/usb/autorun/Autorun;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun$1;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AUTORUN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] Receive Intent ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v1, "com.lge.setup_wizard.AUTORUNON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun$1;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v1}, Lcom/lge/usb/autorun/Autorun;->onSetupWizardEnd()V

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun$1;->this$0:Lcom/lge/usb/autorun/Autorun;

    const/4 v2, 0x1

    # setter for: Lcom/lge/usb/autorun/Autorun;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/lge/usb/autorun/Autorun;->access$002(Lcom/lge/usb/autorun/Autorun;Z)Z

    .line 158
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun$1;->this$0:Lcom/lge/usb/autorun/Autorun;

    iget-object v2, p0, Lcom/lge/usb/autorun/Autorun$1;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v2}, Lcom/lge/usb/autorun/Autorun;->getIsSetupWizardRunning()Z

    move-result v2

    # setter for: Lcom/lge/usb/autorun/Autorun;->mSetupWizardRunning:Z
    invoke-static {v1, v2}, Lcom/lge/usb/autorun/Autorun;->access$102(Lcom/lge/usb/autorun/Autorun;Z)Z

    .line 159
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun$1;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v1}, Lcom/lge/usb/autorun/Autorun;->onBootComplete()V

    goto :goto_0

    .line 161
    :cond_1
    const-string v1, "AUTORUN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] intent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not treated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
