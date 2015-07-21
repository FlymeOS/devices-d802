.class Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;
.super Landroid/os/Handler;
.source "LgWifiInternetCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/LgWifiInternetCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsCheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    .line 150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 157
    :sswitch_0
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->runDnsPingCheck(I)V
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$100(Lcom/lge/wifi/impl/LgWifiInternetCheck;I)V

    goto :goto_0

    .line 161
    :sswitch_1
    # operator++ for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$208()I

    .line 162
    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$200()I

    move-result v0

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsList:Ljava/util/List;
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_2

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$400()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->getDnsPingResult(II)Z
    invoke-static {v0, v1, v2}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$500(Lcom/lge/wifi/impl/LgWifiInternetCheck;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    # setter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z
    invoke-static {v3}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$402(Z)Z

    .line 165
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->cancelDnsCheck()V
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$600(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    .line 166
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->isNotSiteLocalAddress()Z
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$700(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$800(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->mHttpCheckHandler:Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$800(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;

    move-result-object v1

    const/4 v2, 0x3

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->checkGuard:I
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$900()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/LgWifiInternetCheck$HttpCheckHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->handleInternetCheckTimeout()V
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$1000(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    goto :goto_0

    .line 174
    :cond_2
    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultTimes:I
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$200()I

    move-result v0

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->mDnsList:Ljava/util/List;
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z
    invoke-static {}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string v0, "WifiInternetCheck"

    const-string v1, "DNS_PING_RESUTL : Timeout and Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    # setter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->dnsResultValue:Z
    invoke-static {v3}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$402(Z)Z

    .line 177
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$DnsCheckHandler;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # invokes: Lcom/lge/wifi/impl/LgWifiInternetCheck;->handleInternetCheckTimeout()V
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$1000(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V

    goto/16 :goto_0

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x50000 -> :sswitch_1
    .end sparse-switch
.end method
