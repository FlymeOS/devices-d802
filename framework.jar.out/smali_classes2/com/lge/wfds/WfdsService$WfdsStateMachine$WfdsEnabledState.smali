.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdsEnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V
    .locals 2
    .param p1, "lostDevice"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsPeerList;->removePeerDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 1058
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 1060
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$4600(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/lge/wfds/WfdsEvent;->notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V

    .line 1063
    :cond_0
    return-void
.end method

.method private processProvDiscReq(Lcom/lge/wfds/WfdsDevice;)V
    .locals 7
    .param p1, "dev"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 1019
    if-eqz p1, :cond_3

    .line 1020
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v0, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$3100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$3100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v6, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v0, Lcom/lge/wfds/session/AspSession;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v2, v2, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v3, v3, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    iget-object v4, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v4, v4, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    iget-object v5, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v5, v5, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    # setter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v6, v0}, Lcom/lge/wfds/WfdsService;->access$5702(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;)Lcom/lge/wfds/session/AspSession;

    .line 1037
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService;->access$2902(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)Lcom/lge/wfds/WfdsDevice;

    .line 1038
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    # setter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$3002(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 1043
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$4600(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsEvent;->notifyConnectSessionRequestToService(Lcom/lge/wfds/WfdsDevice;)V

    .line 1051
    :goto_0
    return-void

    .line 1045
    :cond_2
    const-string v0, "WfdsService"

    const-string v1, "processProvDiscReq : wfdsInfo is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :cond_3
    const-string v0, "WfdsService"

    const-string v1, "processProvDiscReq : dev is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 703
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$3802(Lcom/lge/wfds/WfdsService;Z)Z

    .line 704
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # setter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$3902(Lcom/lge/wfds/WfdsService;I)I

    .line 705
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->resetWfdsTimer()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$4000(Lcom/lge/wfds/WfdsService;)V

    .line 706
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$4100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, v1, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$4102(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->selectPreferredScanChannel()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$4200(Lcom/lge/wfds/WfdsService;)V

    .line 710
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE : WfdsEnabledState - enter: this device mac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$4100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 715
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 1013
    const/16 v22, 0x0

    .line 1015
    :goto_0
    return v22

    .line 717
    :sswitch_0
    const-string v22, "WfdsService"

    const-string v23, "Received the Event that WfdsMonitor is connected to supplicant"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->setWfdsEnabled(Z)Z

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$1602(Lcom/lge/wfds/WfdsService;Z)Z

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$4100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_0

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lge/wfds/WfdsNative;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v23

    # setter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$4102(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)Ljava/lang/String;

    .line 722
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "this device mac "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$4100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    :goto_1
    :sswitch_1
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 727
    :sswitch_2
    const-string v22, "WfdsService"

    const-string v23, "Do not process WFDS_SCAN_ALWAYS_MODE_CHANGES event in WfdsEnabledState"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 731
    :sswitch_3
    const-string v22, "WfdsService"

    const-string v23, "WfdsEnabledState: Receive the WFDS_DISABLE message"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(Z)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$1700(Lcom/lge/wfds/WfdsService;Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsDisabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 738
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 739
    .local v9, "eventStr":Ljava/lang/String;
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 741
    .local v21, "token":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 742
    const/16 v22, 0x2

    const/16 v23, 0x2

    aget-object v23, v21, v23

    const-string v24, "p2p_dev_addr="

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v23, v21, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    new-instance v23, Lcom/lge/wfds/WfdsInfo;

    invoke-direct/range {v23 .. v23}, Lcom/lge/wfds/WfdsInfo;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    .line 749
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v23, v21, v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 757
    .end local v9    # "eventStr":Ljava/lang/String;
    .end local v21    # "token":[Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lge/wfds/WfdsDevice;

    .line 758
    .local v7, "device":Lcom/lge/wfds/WfdsDevice;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 759
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WFDS device is found ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v7, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/lge/wfds/WfdsPeerList;->addPeerDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPeersChangedBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v0, v7}, Lcom/lge/wfds/WfdsService;->access$4500(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$4600(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/lge/wfds/WfdsEvent;->notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_1

    .line 771
    .end local v7    # "device":Lcom/lge/wfds/WfdsDevice;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    if-eqz v22, :cond_0

    .line 772
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 774
    .local v17, "peerAddr":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WFDS device is lost ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v13

    .line 777
    .local v13, "lostDevice":Lcom/lge/wfds/WfdsDevice;
    if-eqz v13, :cond_0

    .line 778
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPeerLostBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$4700(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 785
    .end local v13    # "lostDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v17    # "peerAddr":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    if-eqz v22, :cond_0

    .line 786
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 788
    .restart local v17    # "peerAddr":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WFDS device INFO is lost ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v11

    .line 791
    .local v11, "infoLostDevice":Lcom/lge/wfds/WfdsDevice;
    if-eqz v11, :cond_0

    .line 792
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 794
    new-instance v15, Lcom/lge/wfds/WfdsDevice;

    invoke-virtual {v11}, Lcom/lge/wfds/WfdsDevice;->getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lcom/lge/wfds/WfdsDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 795
    .local v15, "p2pDevice":Lcom/lge/wfds/WfdsDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/lge/wfds/WfdsPeerList;->addPeerDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPeerInfoLostBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v0, v15}, Lcom/lge/wfds/WfdsService;->access$4800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_1

    .line 803
    .end local v11    # "infoLostDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v15    # "p2pDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v17    # "peerAddr":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    if-eqz v22, :cond_0

    .line 804
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 806
    .restart local v17    # "peerAddr":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "P2P device is lost ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v13

    .line 809
    .restart local v13    # "lostDevice":Lcom/lge/wfds/WfdsDevice;
    if-eqz v13, :cond_0

    .line 810
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_1

    .line 816
    .end local v13    # "lostDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v17    # "peerAddr":Ljava/lang/String;
    :sswitch_9
    const-string v22, "WfdsService"

    const-string v23, "Receive the ADVERTISE_SERVICE Method"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 818
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 820
    .local v4, "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableAdvertiseService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    invoke-static {v0, v1, v4, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    goto/16 :goto_1

    .line 824
    .end local v4    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelAdvertiseService(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 829
    :sswitch_b
    const-string v22, "WfdsService"

    const-string v23, "Receive the SERVICE_STATUS_CHANGE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 831
    .local v10, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 832
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 834
    .local v14, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$2500(Lcom/lge/wfds/WfdsService;)I

    move-result v23

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->changeServiceStatus(Landroid/os/Message;ILcom/lge/wfds/WfdsDiscoveryMethod;I)V
    invoke-static {v0, v1, v10, v14, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;ILcom/lge/wfds/WfdsDiscoveryMethod;I)V

    goto/16 :goto_1

    .line 839
    .end local v10    # "id":I
    .end local v14    # "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :sswitch_c
    const-string v22, "WfdsService"

    const-string v23, "WfdsEnabledState - Receive the SEEK_SERVICE Method"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 841
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 843
    .local v19, "seekMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableSeekService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    goto/16 :goto_1

    .line 847
    .end local v19    # "seekMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :sswitch_d
    const-string v22, "WfdsService"

    const-string v23, "Receive the CANCEL_SEEK_SERVICE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelSeekService(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 852
    :sswitch_e
    const-string v22, "WfdsService"

    const-string v23, "Received the CONNECT_SESSION cmd"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsPdMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 854
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/lge/wfds/WfdsPdMethod;

    .line 855
    .local v16, "pdMethod":Lcom/lge/wfds/WfdsPdMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->connectSession(Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900025

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 860
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 864
    .end local v16    # "pdMethod":Lcom/lge/wfds/WfdsPdMethod;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v23

    const/16 v24, 0x1

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static/range {v22 .. v24}, Lcom/lge/wfds/WfdsService;->access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto/16 :goto_1

    .line 868
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/lge/wfds/WfdsDevice;

    .line 869
    .local v6, "dev":Lcom/lge/wfds/WfdsDevice;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->processProvDiscReq(Lcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_1

    .line 873
    .end local v6    # "dev":Lcom/lge/wfds/WfdsDevice;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$6000(Lcom/lge/wfds/WfdsService;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$6100(Lcom/lge/wfds/WfdsService;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 878
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 883
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$6600(Lcom/lge/wfds/WfdsService;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDisplay(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6800(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 891
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    # setter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$3002(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .line 892
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Advertiser: DEFER_EVENT: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/p2p/WifiP2pConfigEx;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v23

    # setter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$2902(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)Lcom/lge/wfds/WfdsDevice;

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    if-nez v22, :cond_4

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/lge/wfds/WfdsPeerList;->getP2pPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v23

    # setter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$2902(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)Lcom/lge/wfds/WfdsDevice;

    .line 898
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$6900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsDialog;->showProvDeferUserInputDialog(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 902
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$6900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/lge/wfds/WfdsDialog;->showProvDiscEnterPinDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 911
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$7300(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 916
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7500(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 920
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processPersistentUnknown(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 924
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processP2pGroupFormationFailure()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7700(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto/16 :goto_1

    .line 933
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 934
    .local v18, "reason":I
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Connection Failed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    move-result-object v17

    .line 936
    .restart local v17    # "peerAddr":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 937
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Connection failed with "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7800(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 946
    .end local v17    # "peerAddr":Ljava/lang/String;
    .end local v18    # "reason":I
    :sswitch_19
    const-string v22, "WfdsService"

    const-string v23, "It is not a connection between Wfds devices"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWifiP2pConnectedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7900(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 952
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setConnectCapa(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8100(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 956
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getConnectCapa(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 960
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setConfigMethod(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8300(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 964
    :sswitch_1d
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "GET_DISPLAY_PIN: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$3900(Lcom/lge/wfds/WfdsService;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3900(Lcom/lge/wfds/WfdsService;)I

    move-result v22

    if-nez v22, :cond_7

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900022

    const v24, 0xbc6146    # 1.7299968E-38f

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    .line 970
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$6900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wfds/WfdsDialog;->dismissShowPinDialog()V

    goto/16 :goto_1

    .line 968
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900022

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$3900(Lcom/lge/wfds/WfdsService;)I

    move-result v24

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto :goto_2

    .line 974
    :sswitch_1e
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WfdsEnabledState: CMD_TEST_SET_LISTEN_CHANNEL to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setListenChannelForTest(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8400(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 979
    :sswitch_1f
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 980
    .local v5, "channel":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v23, "ssid"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 981
    .local v20, "ssid":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CREATE_GROUP: Operating channel "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", ssid "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsCreatGroupBroadcast()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$8500(Lcom/lge/wfds/WfdsService;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/lge/wfds/WfdsNative;->wfdsGroupAdd(ILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 986
    const-string v22, "WfdsService"

    const-string v23, "Autonomous Group is created"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900020

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6200(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8600(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 990
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x90001f

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2000(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 996
    .end local v5    # "channel":I
    .end local v20    # "ssid":Ljava/lang/String;
    :sswitch_20
    const-wide/16 v22, 0x1388

    :try_start_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pSetChannel(I)Z

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x901010

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 997
    :catch_0
    move-exception v8

    .line 998
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Interrupted Exception : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1006
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :sswitch_21
    const/16 v12, 0x1388

    .line 1007
    .local v12, "listenTimeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/lge/wfds/WfdsNative;->p2pListen(I)Z

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    const v24, 0x901010

    invoke-virtual/range {v23 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    int-to-long v0, v12

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 715
    :sswitch_data_0
    .sparse-switch
        0x900001 -> :sswitch_9
        0x900002 -> :sswitch_b
        0x900003 -> :sswitch_a
        0x900004 -> :sswitch_c
        0x900005 -> :sswitch_e
        0x90000a -> :sswitch_d
        0x900033 -> :sswitch_1a
        0x900034 -> :sswitch_1b
        0x900035 -> :sswitch_1c
        0x900036 -> :sswitch_1d
        0x900037 -> :sswitch_1f
        0x900038 -> :sswitch_1e
        0x901001 -> :sswitch_3
        0x901006 -> :sswitch_19
        0x901007 -> :sswitch_18
        0x90100b -> :sswitch_2
        0x90100f -> :sswitch_20
        0x901010 -> :sswitch_21
        0x902001 -> :sswitch_0
        0x902003 -> :sswitch_5
        0x902004 -> :sswitch_10
        0x902005 -> :sswitch_f
        0x902007 -> :sswitch_15
        0x90200a -> :sswitch_11
        0x90200b -> :sswitch_12
        0x90200d -> :sswitch_14
        0x90200e -> :sswitch_16
        0x90200f -> :sswitch_1
        0x902011 -> :sswitch_13
        0x902013 -> :sswitch_17
        0x902014 -> :sswitch_4
        0x902016 -> :sswitch_6
        0x902017 -> :sswitch_7
        0x902018 -> :sswitch_8
    .end sparse-switch
.end method
