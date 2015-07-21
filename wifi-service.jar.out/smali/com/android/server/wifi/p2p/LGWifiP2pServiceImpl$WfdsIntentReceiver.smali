.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)V
    .locals 0

    .prologue
    .line 3663
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$1;

    .prologue
    .line 3663
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;-><init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3666
    sget-boolean v0, Lcom/lge/wfds/WfdsLgeConfig;->CONFIG_LGE_WFDS_FEATURE:Z

    if-eqz v0, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$13500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/server/wfds/P2pWfdsExtIface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3668
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$13500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/server/wfds/P2pWfdsExtIface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->access$5400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/lge/server/wfds/P2pWfdsExtIface;->processWfdsIntents(Landroid/content/Intent;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 3671
    :cond_0
    return-void
.end method
