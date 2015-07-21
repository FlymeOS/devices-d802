.class Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGMDMReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)V
    .locals 0

    .prologue
    .line 3631
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$1;

    .prologue
    .line 3631
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;-><init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3634
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3635
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3636
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/lge/cappuccino/IMdm;->recevieWifiP2pIntent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3637
    const-string v2, "force_wifip2p_disable"

    .line 3638
    .local v2, "mFORCE_WIFIP2P_DISABLE":Ljava/lang/String;
    const-string v3, "force_wifip2p_disable"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3639
    .local v1, "isDisable":Z
    if-eqz v1, :cond_1

    .line 3640
    const-string v3, "MDM"

    const-string v4, "LGMDM wifi direct policy: MDM_FORCE_DISABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20084

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3650
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "isDisable":Z
    .end local v2    # "mFORCE_WIFIP2P_DISABLE":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3644
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "isDisable":Z
    .restart local v2    # "mFORCE_WIFIP2P_DISABLE":Ljava/lang/String;
    :cond_1
    const-string v3, "MDM"

    const-string v4, "LGMDM wifi direct policy: MDM_FORCE_ENABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;->this$0:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20083

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
