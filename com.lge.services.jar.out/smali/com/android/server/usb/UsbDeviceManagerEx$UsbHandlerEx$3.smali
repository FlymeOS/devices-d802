.class Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;
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
    .line 308
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 310
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mGuestMode:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$702(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 313
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "charge_only"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "charge_only"

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    const-string v3, "charge_only"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 329
    :cond_1
    :goto_1
    return-void

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mGuestMode:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$700(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mGuestMode:Z
    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$702(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 325
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v3, "charge_only"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_1
.end method
