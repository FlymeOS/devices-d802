.class final Lcom/lge/usb/autorun/Autorun$UsbHandler;
.super Landroid/os/Handler;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/usb/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/usb/autorun/Autorun;


# direct methods
.method public constructor <init>(Lcom/lge/usb/autorun/Autorun;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/lge/usb/autorun/Autorun;

    .line 217
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    # getter for: Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z
    invoke-static {p1}, Lcom/lge/usb/autorun/Autorun;->access$400(Lcom/lge/usb/autorun/Autorun;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    # getter for: Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/lge/usb/autorun/Autorun;->access$500(Lcom/lge/usb/autorun/Autorun;)Landroid/os/UEventObserver;

    move-result-object v0

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    # setter for: Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z
    invoke-static {p1, v0}, Lcom/lge/usb/autorun/Autorun;->access$402(Lcom/lge/usb/autorun/Autorun;Z)Z

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 251
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] ERROR!! unknown msg is delivered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/usb/autorun/Autorun;->onUsbUnplugged()V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/usb/autorun/Autorun;->onUsbPlugged()V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun$UsbHandler;->this$0:Lcom/lge/usb/autorun/Autorun;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/lge/usb/autorun/Autorun;->onAutorunUpdateState(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->removeMessages(I)V

    .line 226
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->removeMessages(I)V

    .line 232
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    invoke-virtual {p0, v0}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    return-void
.end method
