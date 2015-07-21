.class public interface abstract Lcom/lge/server/wfds/P2pWfdsExtIface;
.super Ljava/lang/Object;
.source "P2pWfdsExtIface.java"


# virtual methods
.method public abstract addWfdsFilters(Landroid/content/IntentFilter;)V
.end method

.method public abstract connectForWfds(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroup;Z)I
.end method

.method public abstract initP2pWfdsExt(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end method

.method public abstract isWfdsDevice(Ljava/lang/String;)Z
.end method

.method public abstract processWfdsIntents(Landroid/content/Intent;Landroid/net/wifi/p2p/WifiP2pConfig;)V
.end method
