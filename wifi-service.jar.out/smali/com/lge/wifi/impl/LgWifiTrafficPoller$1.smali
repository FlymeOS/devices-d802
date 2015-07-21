.class Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "LgWifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/LgWifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$102(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # invokes: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->evaluateTrafficStatsPolling()V
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$400(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)V

    .line 118
    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.wifi.sap.ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z
    invoke-static {v0, v3}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$202(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Z)Z

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.wifi.sap.DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # setter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mEnableSoftap:Z
    invoke-static {v0, v2}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$202(Lcom/lge/wifi/impl/LgWifiTrafficPoller;Z)Z

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$300(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lge/wifi/impl/LgWifiTrafficPoller$1;->this$0:Lcom/lge/wifi/impl/LgWifiTrafficPoller;

    # getter for: Lcom/lge/wifi/impl/LgWifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/wifi/impl/LgWifiTrafficPoller;->access$300(Lcom/lge/wifi/impl/LgWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
