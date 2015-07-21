.class public Lcom/android/server/wifi/WifiStateMachineEx;
.super Lcom/android/server/wifi/WifiStateMachine;
.source "WifiStateMachineEx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;
    .param p3, "trafficPoller"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachineEx;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "ssid":Ljava/lang/String;
    return-object v0
.end method

.method public setWifiAutoConnectValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 13
    invoke-static {p1}, Lcom/lge/wifi/impl/WifiLgeExtNative;->setWifiAutoConnectValue(I)Z

    .line 14
    return-void
.end method
