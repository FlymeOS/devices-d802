.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutonomousGoState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1828
    const-string v0, "WfdsService"

    const-string v1, "STATE: AutonomousGoState, entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$13200(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v1, 0x90100d

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 1832
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1864
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 1836
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1859
    :goto_0
    return v0

    .line 1838
    :sswitch_0
    const-string v1, "WfdsService"

    const-string v2, "AutonomousGoState: WFDS_PEER_CONNECT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    # setter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I
    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$13502(Lcom/lge/wfds/WfdsService;I)I

    goto :goto_0

    .line 1844
    :sswitch_1
    const-string v1, "WfdsService"

    const-string v2, "AutonomousGoState: WFDS_SESSION_REQUEST_DISCONNECT or WFDS_REMOVE_AUTONOMOUS_GROUP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$13200(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$13500(Lcom/lge/wfds/WfdsService;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 1848
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$13500(Lcom/lge/wfds/WfdsService;)I

    move-result v2

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deletePersistentGroup(I)V
    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$13600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;I)V

    .line 1850
    :cond_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z
    invoke-static {v1, v0}, Lcom/lge/wfds/WfdsService;->access$13202(Lcom/lge/wfds/WfdsService;Z)Z

    .line 1851
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v1, v0}, Lcom/lge/wfds/WfdsService;->access$6002(Lcom/lge/wfds/WfdsService;Z)Z

    .line 1852
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I
    invoke-static {v0, v3}, Lcom/lge/wfds/WfdsService;->access$13502(Lcom/lge/wfds/WfdsService;I)I

    .line 1853
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1859
    const/4 v0, 0x1

    goto :goto_0

    .line 1836
    nop

    :sswitch_data_0
    .sparse-switch
        0x901006 -> :sswitch_0
        0x90100d -> :sswitch_1
        0x901016 -> :sswitch_1
    .end sparse-switch
.end method
