.class Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;
.super Landroid/os/Handler;
.source "LgWifiInternetCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/LgWifiInternetCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpCheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .line 194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->isHttpConnectionAvailable()Z
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$1100(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$900()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->handleInternetCheckTimeout()V
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$1000(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
