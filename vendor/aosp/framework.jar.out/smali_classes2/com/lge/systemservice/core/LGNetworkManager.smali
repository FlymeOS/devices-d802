.class public Lcom/lge/systemservice/core/LGNetworkManager;
.super Ljava/lang/Object;
.source "LGNetworkManager.java"


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILGNetworkManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/LGNetworkManager;Lcom/lge/systemservice/core/ILGNetworkManager;)Lcom/lge/systemservice/core/ILGNetworkManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/LGNetworkManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/ILGNetworkManager;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/systemservice/core/LGNetworkManager;->mService:Lcom/lge/systemservice/core/ILGNetworkManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGNetworkManager;
    .locals 4

    .prologue
    .line 23
    iget-object v1, p0, Lcom/lge/systemservice/core/LGNetworkManager;->mService:Lcom/lge/systemservice/core/ILGNetworkManager;

    if-nez v1, :cond_0

    .line 24
    const-string v1, "lgnetworkmanagementservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/LGNetworkManager;->mService:Lcom/lge/systemservice/core/ILGNetworkManager;

    .line 26
    iget-object v1, p0, Lcom/lge/systemservice/core/LGNetworkManager;->mService:Lcom/lge/systemservice/core/ILGNetworkManager;

    if-eqz v1, :cond_0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGNetworkManager;->mService:Lcom/lge/systemservice/core/ILGNetworkManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/ILGNetworkManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/LGNetworkManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/LGNetworkManager$1;-><init>(Lcom/lge/systemservice/core/LGNetworkManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGNetworkManager;->mService:Lcom/lge/systemservice/core/ILGNetworkManager;

    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/LGNetworkManager;->mService:Lcom/lge/systemservice/core/ILGNetworkManager;

    goto :goto_0
.end method


# virtual methods
.method public acceptPacket(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->acceptPacket(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/ILGNetworkManager;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v0

    return v0
.end method

.method public addUpstreamV6Interface(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->addUpstreamV6Interface(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public appendRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/ILGNetworkManager;->appendRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v0

    return v0
.end method

.method public blockIpv6Interface(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->blockIpv6Interface(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public delSrcRoute([BI)Z
    .locals 1
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/ILGNetworkManager;->delSrcRoute([BI)Z

    move-result v0

    return v0
.end method

.method public dropPacket(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->dropPacket(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .param p4, "ipAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ILGNetworkManager;->enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public getUsbClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->getUsbClient(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public packetList_Indrop()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGNetworkManager;->packetList_Indrop()Z

    move-result v0

    return v0
.end method

.method public packetList_Indrop_view()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGNetworkManager;->packetList_Indrop_view()V

    .line 167
    return-void
.end method

.method public removeImsRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/ILGNetworkManager;->removeImsRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 171
    return-void
.end method

.method public removeUpstreamV6Interface(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # [B
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ILGNetworkManager;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z

    move-result v0

    return v0
.end method

.method public resetPacketDrop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGNetworkManager;->resetPacketDrop()V

    .line 95
    return-void
.end method

.method public runClearNatRule()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGNetworkManager;->runClearNatRule()V

    .line 103
    return-void
.end method

.method public runClearPortFilterRule()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGNetworkManager;->runClearPortFilterRule()V

    .line 111
    return-void
.end method

.method public runClearPortForwardRule()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGNetworkManager;->runClearPortForwardRule()V

    .line 120
    return-void
.end method

.method public runSetNatForwardRule(Ljava/lang/String;)V
    .locals 1
    .param p1, "iptablescmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->runSetNatForwardRule(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public runSetPortFilterRule(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iptablescmd"    # Ljava/lang/String;
    .param p2, "addOrDel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/ILGNetworkManager;->runSetPortFilterRule(Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public runSetPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "addOrDel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/systemservice/core/ILGNetworkManager;->runSetPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method public runSetPortRedirectRule(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iptablescmd"    # Ljava/lang/String;
    .param p2, "addOrDel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/ILGNetworkManager;->runSetPortRedirectRule(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public runShellCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .line 43
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    throw v0
.end method

.method public setFirewallEgressProtoRule(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/ILGNetworkManager;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V

    .line 229
    return-void
.end method

.method public setInterfaceAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/ILGNetworkManager;->setInterfaceAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setIpFamilyTypeForInterface(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/ILGNetworkManager;->setIpFamilyTypeForInterface(Ljava/lang/String;ZZ)V

    .line 191
    return-void
.end method

.method public setMdmIptables(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setMdmIptablesFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->setMdmIptablesFile(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public unblockIpv6Interface(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ILGNetworkManager;->unblockIpv6Interface(Ljava/lang/String;)V

    .line 142
    return-void
.end method
