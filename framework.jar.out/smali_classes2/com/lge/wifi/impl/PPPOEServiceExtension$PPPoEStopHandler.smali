.class Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;
.super Landroid/os/Handler;
.source "PPPOEServiceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/PPPOEServiceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPPoEStopHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .line 209
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStopHandler;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # invokes: Lcom/lge/wifi/impl/PPPOEServiceExtension;->stopPPPOEHandle()V
    invoke-static {v0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$300(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
