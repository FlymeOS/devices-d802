.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmConnectToWifiNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v2, "wifi_state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "wifiState":I
    iget-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # getter for: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$200(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # invokes: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getAndClearEnableWifiInProgress()Z
    invoke-static {v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$000(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    iget-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    # invokes: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V
    invoke-static {v3, v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$300(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V

    .line 144
    .end local v1    # "wifiState":I
    :cond_0
    return-void
.end method
