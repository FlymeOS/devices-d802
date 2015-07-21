.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiP2pConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private procWfdsSvcReq(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8800(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1099
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1100
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1073
    const-string v0, "WfdsService"

    const-string v1, "STATE : WifiP2pConnectedState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1104
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1078
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1092
    const/4 v0, 0x0

    .line 1094
    :goto_0
    return v0

    .line 1080
    :sswitch_0
    const-string v0, "WfdsService"

    const-string v1, "WifiP2pConnectedState : CMD_ADVERTISE_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->procWfdsSvcReq(Landroid/os/Message;)V

    .line 1094
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1084
    :sswitch_1
    const-string v0, "WfdsService"

    const-string v1, "WifiP2pConnectedState : CMD_SEEK_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->procWfdsSvcReq(Landroid/os/Message;)V

    goto :goto_1

    .line 1088
    :sswitch_2
    const-string v0, "WfdsService"

    const-string v1, "WifiP2pConnectedState : WIFI_P2P_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1078
    nop

    :sswitch_data_0
    .sparse-switch
        0x900001 -> :sswitch_0
        0x900004 -> :sswitch_1
        0x901005 -> :sswitch_2
    .end sparse-switch
.end method
