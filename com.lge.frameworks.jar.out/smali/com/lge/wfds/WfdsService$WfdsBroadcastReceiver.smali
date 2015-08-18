.class Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsService;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/WfdsService;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    .line 264
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 265
    return-void
.end method

.method private processP2pConnectionChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 346
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 347
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v1, "wifiP2pInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    # setter for: Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v2, v1}, Lcom/lge/wfds/WfdsService;->access$002(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 349
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$1100(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$1100(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$1200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$1300(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 351
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$1100(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$1200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$1400(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 353
    :cond_0
    if-eqz v0, :cond_1

    .line 354
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 356
    const-string v1, "WfdsService"

    const-string v2, "Connection Failed from P2pService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v2

    const v3, 0x901007

    invoke-virtual {v2, v3, v4, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 360
    :cond_1
    return-void
.end method

.method private processP2pStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 329
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v2, "wifi_p2p_state"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    # setter for: Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z
    invoke-static {v1, v0}, Lcom/lge/wfds/WfdsService;->access$902(Lcom/lge/wfds/WfdsService;Z)Z

    .line 333
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiP2pState is changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$900(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$900(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsPeerList;->clearPeerDevice()V

    .line 338
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v0

    const v1, 0x901002

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 342
    :goto_1
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v0

    const v1, 0x901001

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v2, "connected"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/lge/wfds/WfdsService;->mSuppConnected:Z
    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$502(Lcom/lge/wfds/WfdsService;Z)Z

    .line 276
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant Connection state is changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSuppConnected:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$500(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSuppConnected:Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$500(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x901003

    :goto_0
    invoke-virtual {v2, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 326
    :goto_1
    return-void

    .line 277
    :cond_0
    const v1, 0x901004

    goto :goto_0

    .line 281
    :cond_1
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-direct {p0, p2}, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->processP2pStateChanged(Landroid/content/Intent;)V

    goto :goto_1

    .line 286
    :cond_2
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    const-string v1, "WfdsService"

    const-string v2, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, p2}, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->processP2pConnectionChanged(Landroid/content/Intent;)V

    goto :goto_1

    .line 292
    :cond_3
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    const-string v1, "WfdsService"

    const-string v2, "WIFI_P2P_THIS_DEVICE_CHANGED_ATCION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v1, "wifiP2pDevice"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2, v1}, Lcom/lge/wfds/WfdsService;->access$602(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 295
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->updateP2pInterfaceState()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$700(Lcom/lge/wfds/WfdsService;)V

    goto :goto_1

    .line 299
    :cond_4
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    const-string v1, "WfdsService"

    const-string v2, "WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->updateP2pPeersList()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$800(Lcom/lge/wfds/WfdsService;)V

    goto :goto_1

    .line 305
    :cond_5
    const-string v1, "com.lge.wfds.PD_DEFER_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 306
    const-string v1, "WfdsService"

    const-string v2, "WFDS_PD_DEFERRED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x901008

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 311
    :cond_6
    const-string v1, "com.lge.wfds.PD_RECEIVE_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 312
    const-string v1, "WfdsService"

    const-string v2, "WFDS_PD_RECEIVED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x901009

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 317
    :cond_7
    const-string v1, "com.lge.wfds.CONNECTION_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 318
    const-string v1, "WfdsService"

    const-string v2, "WFDS_CONNECTION_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x90100a

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 324
    :cond_8
    const-string v1, "WfdsService"

    const-string v2, "Invaild intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
