.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingWithinGroupState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private changeState()V
    .locals 2

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$13900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14800(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 2103
    :goto_0
    return-void

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$6000(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    const/4 v1, 0x1

    # setter for: Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$13202(Lcom/lge/wfds/WfdsService;Z)Z

    .line 2098
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2100
    :cond_1
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2015
    const-string v0, "WfdsService"

    const-string v1, "STATE: ConnectingWithinGroupState, entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$3800(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    const/4 v1, 0x0

    # setter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$3802(Lcom/lge/wfds/WfdsService;Z)Z

    .line 2090
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x5

    .line 2020
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2080
    const/4 v0, 0x0

    .line 2082
    :goto_0
    return v0

    .line 2022
    :sswitch_0
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PEEF_CONNECT_USER_ACCEPT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserAccept(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)Z

    .line 2082
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2027
    :sswitch_1
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PEEF_CONNECT_USER_REJECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserReject()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2029
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto :goto_1

    .line 2033
    :sswitch_2
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_ACCEPT_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10000(Lcom/lge/wfds/WfdsService;)V

    .line 2035
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    const/4 v2, 0x3

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService;->access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_1

    .line 2039
    :sswitch_3
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_DEF_PIN_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPinWithinGroup()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$12700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2042
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$6100(Lcom/lge/wfds/WfdsService;)V

    goto :goto_1

    .line 2046
    :sswitch_4
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_PERSISTENT_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$6100(Lcom/lge/wfds/WfdsService;)V

    goto :goto_1

    .line 2051
    :sswitch_5
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_FAIL_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 2053
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto :goto_1

    .line 2058
    :sswitch_6
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PD_DEFERRED(RECEIVED)_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2060
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto :goto_1

    .line 2064
    :sswitch_7
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_SESSION_REQUEST_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto :goto_1

    .line 2070
    :sswitch_8
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v1, 0x900021

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2075
    :sswitch_9
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v1, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2020
    nop

    :sswitch_data_0
    .sparse-switch
        0x900001 -> :sswitch_8
        0x900004 -> :sswitch_8
        0x900005 -> :sswitch_9
        0x901008 -> :sswitch_6
        0x901009 -> :sswitch_6
        0x901016 -> :sswitch_7
        0x901029 -> :sswitch_0
        0x90102a -> :sswitch_1
        0x902006 -> :sswitch_2
        0x902007 -> :sswitch_5
        0x90200a -> :sswitch_3
        0x90200d -> :sswitch_4
    .end sparse-switch
.end method
