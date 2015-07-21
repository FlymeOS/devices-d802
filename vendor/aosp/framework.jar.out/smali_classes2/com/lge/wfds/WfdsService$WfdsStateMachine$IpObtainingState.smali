.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpObtainingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 1867
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private procDhcpFileModified()V
    .locals 8

    .prologue
    .line 1977
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1978
    const/4 v0, 0x0

    .line 1980
    .local v0, "ipAddr":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getIpAddrOfClient(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1982
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1983
    const/4 v1, 0x0

    .line 1984
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget v3, v3, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/SessionController;->getSession(Ljava/lang/Integer;Ljava/lang/String;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 1985
    if-eqz v1, :cond_0

    .line 1986
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 1990
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1991
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GO - Client IP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$13800(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1993
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$13800(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/DhcpFileObserver;->stopObserving()V

    .line 1996
    :cond_1
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1997
    :cond_2
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 2001
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x90100c

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2005
    .end local v0    # "ipAddr":Ljava/net/InetAddress;
    :cond_3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 1870
    const-string v1, "WfdsService"

    const-string v2, "STATE: IpObtainingState, entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 1874
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$3100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1875
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$3100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 1878
    :cond_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1879
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$13700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 1909
    :goto_0
    return-void

    .line 1883
    :cond_1
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1884
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$13800(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1885
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v2, Lcom/lge/wfds/DhcpFileObserver;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/misc/dhcp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dnsmasq.leases"

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/wfds/DhcpFileObserver;-><init>(Lcom/android/internal/util/StateMachine;Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$13802(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/DhcpFileObserver;)Lcom/lge/wfds/DhcpFileObserver;

    .line 1889
    :cond_2
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$13800(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1890
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$13800(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/DhcpFileObserver;->startObserving()V

    .line 1907
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$12500(Lcom/lge/wfds/WfdsService;)V

    .line 1908
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    const/4 v3, 0x6

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_0

    .line 1892
    :cond_4
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v2, 0x901016

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 1893
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    const/4 v3, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto/16 :goto_0

    .line 1897
    :cond_5
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1898
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 1899
    .local v0, "ipAddr":Ljava/net/InetAddress;
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client - GO IP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 1903
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v2, 0x90100c

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 2009
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    .line 1913
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1971
    const/4 v2, 0x0

    .line 1973
    :cond_0
    :goto_0
    return v2

    .line 1915
    :sswitch_0
    const-string v3, "WfdsService"

    const-string v4, "IpObtainingState: DHCP_FILE_MODIFIED Event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->procDhcpFileModified()V

    goto :goto_0

    .line 1920
    :sswitch_1
    const-string v3, "WfdsService"

    const-string v4, "IpObtainingState: WFDS_SESSION_REQUEST_DISCONNECT Event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1922
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$13900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1925
    :cond_1
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$6000(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1926
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1927
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1929
    :cond_2
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto :goto_0

    .line 1935
    :sswitch_2
    const-string v3, "WfdsService"

    const-string v4, "IpObtainingState: WFDS_SESSION_OPENING_START Event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 1937
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v3

    const v4, 0x901047

    invoke-virtual {v3, v4, v1}, Lcom/lge/wfds/SessionController;->sendMessage(ILjava/lang/Object;)V

    .line 1938
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$13900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1942
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_3
    const-string v3, "WfdsService"

    const-string v4, "IpObtainingState: WFDS_PEER_DEVICE_DISCONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1944
    .local v0, "deviceAddr":Ljava/lang/String;
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1946
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1947
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$13900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1949
    :cond_3
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$6000(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1950
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, v3, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z
    invoke-static {v3, v2}, Lcom/lge/wfds/WfdsService;->access$13202(Lcom/lge/wfds/WfdsService;Z)Z

    .line 1951
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1955
    :cond_4
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1961
    .end local v0    # "deviceAddr":Ljava/lang/String;
    :sswitch_4
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v4, 0x900021

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v4, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1966
    :sswitch_5
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v4, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v4, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1913
    :sswitch_data_0
    .sparse-switch
        0x900001 -> :sswitch_4
        0x900004 -> :sswitch_4
        0x900005 -> :sswitch_5
        0x90100c -> :sswitch_2
        0x90100e -> :sswitch_3
        0x901016 -> :sswitch_1
        0x901017 -> :sswitch_0
    .end sparse-switch
.end method
