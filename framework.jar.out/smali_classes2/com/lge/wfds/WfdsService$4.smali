.class Lcom/lge/wfds/WfdsService$4;
.super Ljava/lang/Object;
.source "WfdsService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsService;->updateP2pPeersList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsService;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$4;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 1
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$4;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsPeerList;->updatePeerList(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 405
    return-void
.end method
