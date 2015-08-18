.class Lcom/lge/wfds/WfdsService$2;
.super Ljava/lang/Object;
.source "WfdsService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsService;-><init>(Landroid/content/Context;)V
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
    .line 216
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$2;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$2;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService;->access$202(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 219
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$2;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupInfoAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$2;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$2;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    const v1, 0x90104a

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$2;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(ILjava/lang/Object;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v0, "WfdsService"

    const-string v1, "GroupInfoAvailable: mGroupInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
