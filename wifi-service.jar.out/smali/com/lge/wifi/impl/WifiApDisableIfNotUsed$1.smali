.class Lcom/lge/wifi/impl/WifiApDisableIfNotUsed$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApDisableIfNotUsed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    const-string v3, "WifiApDisableIfNotUsed"

    const-string v4, "ACTION_TETHER_STATE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v3, "activeArray"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 95
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;

    # invokes: Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->updateTetherState(Ljava/util/ArrayList;)V
    invoke-static {v3, v1}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->access$000(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;Ljava/util/ArrayList;)V

    .line 108
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v3, "com.lge.wifi.impl.WifiApDisableIfNotUsed.action.STAT_AP_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    const-string v3, "WifiApDisableIfNotUsed"

    const-string v4, "ACTION_STAT_AP_TIMEOUT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;

    # getter for: Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mWifiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->access$100(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 102
    :cond_2
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v3, "plugged"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "pluggedType":I
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed$1;->this$0:Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;

    # setter for: Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->mPluggedType:I
    invoke-static {v3, v2}, Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;->access$202(Lcom/lge/wifi/impl/WifiApDisableIfNotUsed;I)I

    .line 105
    const-string v3, "WifiApDisableIfNotUsed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_BATTERY_CHANGED : pluggedType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
