.class Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "action":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 290
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] receive intent ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    const-string v2, "com.lge.android.intent.AUTORUN_ENABLE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "autorun_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 296
    .local v1, "autorun_trigger_value":I
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autorun_trigger_value is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v1, :cond_2

    .line 299
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$602(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 304
    .end local v1    # "autorun_trigger_value":I
    :cond_1
    :goto_0
    return-void

    .line 301
    .restart local v1    # "autorun_trigger_value":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$602(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    goto :goto_0
.end method
