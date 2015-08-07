.class public Lcom/lge/usb/autorun/Autorun$autorunTimerTask;
.super Ljava/util/TimerTask;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/usb/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "autorunTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/usb/autorun/Autorun;


# direct methods
.method public constructor <init>(Lcom/lge/usb/autorun/Autorun;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun$autorunTimerTask;->this$0:Lcom/lge/usb/autorun/Autorun;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 467
    const-string v0, "TIMEOUT"

    .line 468
    .local v0, "timout":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun$autorunTimerTask;->this$0:Lcom/lge/usb/autorun/Autorun;

    # getter for: Lcom/lge/usb/autorun/Autorun;->mHandler:Lcom/lge/usb/autorun/Autorun$UsbHandler;
    invoke-static {v1}, Lcom/lge/usb/autorun/Autorun;->access$200(Lcom/lge/usb/autorun/Autorun;)Lcom/lge/usb/autorun/Autorun$UsbHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 469
    return-void
.end method
