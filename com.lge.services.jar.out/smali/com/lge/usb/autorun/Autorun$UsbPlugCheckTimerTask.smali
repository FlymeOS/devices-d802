.class public Lcom/lge/usb/autorun/Autorun$UsbPlugCheckTimerTask;
.super Ljava/util/TimerTask;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/usb/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbPlugCheckTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/usb/autorun/Autorun;


# direct methods
.method public constructor <init>(Lcom/lge/usb/autorun/Autorun;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] set mUsbPlugged to true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/lge/usb/autorun/Autorun;

    const/4 v1, 0x1

    # setter for: Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z
    invoke-static {v0, v1}, Lcom/lge/usb/autorun/Autorun;->access$602(Lcom/lge/usb/autorun/Autorun;Z)Z

    .line 410
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/lge/usb/autorun/Autorun;

    # getter for: Lcom/lge/usb/autorun/Autorun;->mHandler:Lcom/lge/usb/autorun/Autorun$UsbHandler;
    invoke-static {v0}, Lcom/lge/usb/autorun/Autorun;->access$200(Lcom/lge/usb/autorun/Autorun;)Lcom/lge/usb/autorun/Autorun$UsbHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->sendMessage(I)V

    .line 411
    return-void
.end method
