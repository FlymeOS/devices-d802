.class Lcom/lge/usb/autorun/Autorun$2;
.super Landroid/os/UEventObserver;
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
    .line 176
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun$2;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 180
    const-string v5, "AUTORUN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] USB UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v5, "AUTORUN"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "autorun":Ljava/lang/String;
    const-string v5, "USB_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "state":Ljava/lang/String;
    const-string v5, "USB_DRV"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "usb_drv":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 188
    iget-object v5, p0, Lcom/lge/usb/autorun/Autorun$2;->this$0:Lcom/lge/usb/autorun/Autorun;

    # getter for: Lcom/lge/usb/autorun/Autorun;->mHandler:Lcom/lge/usb/autorun/Autorun$UsbHandler;
    invoke-static {v5}, Lcom/lge/usb/autorun/Autorun;->access$200(Lcom/lge/usb/autorun/Autorun;)Lcom/lge/usb/autorun/Autorun$UsbHandler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v0}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    if-eqz v3, :cond_2

    .line 190
    iget-object v5, p0, Lcom/lge/usb/autorun/Autorun$2;->this$0:Lcom/lge/usb/autorun/Autorun;

    # invokes: Lcom/lge/usb/autorun/Autorun;->judgeUsbPlugState(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/lge/usb/autorun/Autorun;->access$300(Lcom/lge/usb/autorun/Autorun;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_2
    if-eqz v4, :cond_0

    .line 194
    const-string v5, "AUTORUN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB driver is not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, "installed":Z
    const-string v5, "uninstalled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    const/4 v1, 0x0

    .line 204
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.USB_DRIVER_INSTALLED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x60000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const-string v5, "installed"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    iget-object v5, p0, Lcom/lge/usb/autorun/Autorun$2;->this$0:Lcom/lge/usb/autorun/Autorun;

    iget-object v5, v5, Lcom/lge/usb/autorun/Autorun;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "installed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    const/4 v1, 0x1

    goto :goto_1
.end method
