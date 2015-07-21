.class Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiQsapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;-><init>(Landroid/os/Handler;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "WifiQsapMonitor"

    const-string v2, "[WIFI_AP_STATE_CHANGED_ACTION]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    const-string/jumbo v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->handleWifiApStateChanged(I)V
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$300(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;I)V

    .line 219
    :cond_0
    return-void
.end method
