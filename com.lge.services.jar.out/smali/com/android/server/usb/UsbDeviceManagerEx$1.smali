.class Lcom/android/server/usb/UsbDeviceManagerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManagerEx;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManagerEx;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$1;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/lge/cappuccino/IMdm;->recevieMDMUsbIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "usbState":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 128
    sget-boolean v1, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "MDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MDM force : commend = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$1;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 134
    .end local v0    # "usbState":Ljava/lang/String;
    :cond_1
    return-void
.end method
