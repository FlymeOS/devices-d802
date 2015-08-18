.class public Lcom/lge/wfds/WfdsService;
.super Lcom/lge/wfds/IWfdsManager$Stub;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsService$Scanner;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine;,
        Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x901000

.field private static final LISTEN_TIMEOUT:I = 0x2ee0

.field private static final PREFERRED_SCAN_CHANNEL_149:I = 0x95

.field private static final PREFERRED_SCAN_CHANNEL_36:I = 0x24

.field private static final PREFERRED_SCAN_CHANNEL_36_149:I = 0xb9

.field public static final PREFERRED_SCAN_CHANNEL_6:I = 0x6

.field private static final SUPPLICANT_DISCONNECT_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WfdsService"

.field private static final WFDS_CONNECTION_FAILED:I = 0x901007

.field private static final WFDS_CONNECTION_TIME:I = 0x7530

.field private static final WFDS_CONNECTION_TIMEOUT:I = 0x90100a

.field private static final WFDS_CONNECTION_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.CONNECTION_TIMEOUT"

.field private static final WFDS_CONTINUALLY_SCAN_EVENT:I = 0x90100f

.field public static final WFDS_DHCP_FILE_MODIFIED:I = 0x901017

.field public static final WFDS_DIALOG_BASE:I = 0x901028

.field private static final WFDS_DISABLE:I = 0x901001

.field private static final WFDS_DISPLAY_METHOD:I = 0x1

.field private static final WFDS_ENABLE:I = 0x901002

.field private static final WFDS_KEYPAD_METHOD:I = 0x2

.field public static final WFDS_MONITOR_BASE:I = 0x902000

.field private static final WFDS_PD_DEFERRED_TIME:I = 0x1d4c0

.field private static final WFDS_PD_DEFERRED_TIMEOUT:I = 0x901008

.field private static final WFDS_PD_DEFERRED_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.PD_DEFER_TIMEOUT"

.field private static final WFDS_PD_RECEIVED_TIME:I = 0x2710

.field private static final WFDS_PD_RECEIVED_TIMEOUT:I = 0x901009

.field private static final WFDS_PD_RECEIVED_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.PD_RECEIVE_TIMEOUT"

.field private static final WFDS_PEER_CONNECT_COMPLETED:I = 0x901006

.field private static final WFDS_PEER_DEVICE_DISCONNECTED:I = 0x90100e

.field private static final WFDS_REMOVE_AUTONOMOUS_GROUP:I = 0x90100d

.field private static final WFDS_RESCAN_INTERVAL_MS:I = 0x1388

.field private static final WFDS_SCAN_ALWAYS_MODE_CHANGED:I = 0x90100b

.field public static final WFDS_SESSION_CONTROLLER_BASE:I = 0x901032

.field public static final WFDS_SESSION_OPENING_FAILED:I = 0x901015

.field private static final WFDS_SESSION_OPENING_START:I = 0x90100c

.field public static final WFDS_SESSION_REQUEST_DISCONNECT:I = 0x901016

.field private static final WFDS_START_LISTEN:I = 0x901010

.field private static final WIFI_P2P_DISCONNECTED:I = 0x901005

.field private static final WIFI_SUPPLICANT_CONNECTED:I = 0x901003

.field private static final WIFI_SUPPLICANT_DISCONNECTED:I = 0x901004


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mAutonomousGroupId:I

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mConnectionTimeoutIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

.field private mDisplayPin:I

.field private mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mGroupOwnerAddress:Ljava/lang/String;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsCertificationMode:Z

.field private mKeypadEventString:Ljava/lang/String;

.field private mLatestAspSession:Lcom/lge/wfds/session/AspSession;

.field private mListenChannelForTest:I

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mPdDeferred:Z

.field private mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

.field private mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

.field private mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;

.field private mPeerDevice:Lcom/lge/wfds/WfdsDevice;

.field private mPreferredScanOnlyOneChannel:I

.field private mRemoveAutonomousGroup:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mScanOnlyOneChannel:I

.field private mScanner:Lcom/lge/wfds/WfdsService$Scanner;

.field private mSessionController:Lcom/lge/wfds/SessionController;

.field private mSuppConnected:Z

.field private mSuppDisconnectCount:I

.field private mThisDeviceAddress:Ljava/lang/String;

.field private mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

.field private mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

.field private mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

.field private mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

.field private mWfdsMonitorConnected:Z

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;

.field private mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

.field private mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 170
    invoke-direct {p0}, Lcom/lge/wfds/IWfdsManager$Stub;-><init>()V

    .line 51
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 52
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 53
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 54
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 56
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    .line 60
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    .line 61
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 64
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    .line 68
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mSuppConnected:Z

    .line 70
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferred:Z

    .line 71
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z

    .line 72
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z

    .line 73
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    .line 74
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I

    .line 77
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mDisplayPin:I

    .line 78
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;

    .line 81
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    .line 84
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mGroupOwnerAddress:Ljava/lang/String;

    .line 87
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;

    .line 89
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    .line 90
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 91
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I

    .line 92
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z

    .line 171
    const-string v0, "WfdsService"

    const-string v1, "WfdsService is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "wfds_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    .line 175
    const-string v0, "p2p0"

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mInterfaceName:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/lge/wfds/WfdsNative;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/lge/wfds/WfdsNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 178
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 179
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 180
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 184
    :cond_0
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryStore;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-direct {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryStore;-><init>(Lcom/lge/wfds/WfdsNative;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    .line 186
    new-instance v0, Lcom/lge/wfds/WfdsEvent;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsEvent;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 188
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "WfdsAspSession"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 189
    .local v6, "wfdsThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v0, Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/SessionController;-><init>(Landroid/content/Context;Lcom/lge/wfds/WfdsNative;Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/WfdsDiscoveryStore;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    .line 192
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->start()V

    .line 194
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const-string v1, "WfdsService"

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;-><init>(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    .line 195
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->start()V

    .line 197
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-virtual {v0, v1}, Lcom/lge/wfds/SessionController;->setWfdsStateMachine(Lcom/android/internal/util/StateMachine;)V

    .line 199
    new-instance v0, Lcom/lge/wfds/WfdsPeerList;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsPeerList;-><init>(Landroid/content/Context;Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/WfdsNative;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    .line 200
    new-instance v0, Lcom/lge/wfds/WfdsDialog;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/WfdsPeerList;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    .line 202
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->registerWfdsBroadcastReceiver()V

    .line 203
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->registerScanModeChange()V

    .line 205
    new-instance v0, Lcom/lge/wfds/WfdsService$1;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$1;-><init>(Lcom/lge/wfds/WfdsService;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 216
    new-instance v0, Lcom/lge/wfds/WfdsService$2;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$2;-><init>(Lcom/lge/wfds/WfdsService;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 228
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 229
    new-instance v0, Lcom/lge/wfds/WfdsService$Scanner;

    invoke-direct {v0, p0, v7}, Lcom/lge/wfds/WfdsService$Scanner;-><init>(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsService$1;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V

    return-void
.end method

.method static synthetic access$10200(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->setProvisionDeferredTimeout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/lge/wfds/WfdsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$13202(Lcom/lge/wfds/WfdsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$13500(Lcom/lge/wfds/WfdsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I

    return v0
.end method

.method static synthetic access$13502(Lcom/lge/wfds/WfdsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I

    return p1
.end method

.method static synthetic access$13800(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    return-object v0
.end method

.method static synthetic access$13802(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/DhcpFileObserver;)Lcom/lge/wfds/DhcpFileObserver;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Lcom/lge/wfds/DhcpFileObserver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/lge/wfds/WfdsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I

    return v0
.end method

.method static synthetic access$15302(Lcom/lge/wfds/WfdsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I

    return p1
.end method

.method static synthetic access$15400(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPersistentUnknownGroupBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/lge/wfds/WfdsService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/wfds/WfdsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/lge/wfds/WfdsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/lge/wfds/WfdsService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->setWfdsMonitor(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/lge/wfds/WfdsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I

    return p1
.end method

.method static synthetic access$1808(Lcom/lge/wfds/WfdsService;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lge/wfds/WfdsService;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/wfds/WfdsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getPreferredScanChannel()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/lge/wfds/WfdsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lge/wfds/WfdsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/lge/wfds/WfdsService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->confirmScanOnlyChannel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/lge/wfds/WfdsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/lge/wfds/WfdsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)Lcom/lge/wfds/WfdsDevice;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)Landroid/net/wifi/p2p/WifiP2pConfigEx;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lge/wfds/WfdsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mPdDeferred:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/lge/wfds/WfdsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferred:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/lge/wfds/WfdsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mDisplayPin:I

    return v0
.end method

.method static synthetic access$3902(Lcom/lge/wfds/WfdsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mDisplayPin:I

    return p1
.end method

.method static synthetic access$4000(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->resetWfdsTimer()V

    return-void
.end method

.method static synthetic access$4100(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->selectPreferredScanChannel()V

    return-void
.end method

.method static synthetic access$4500(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPeersChangedBroadcast(Lcom/lge/wfds/WfdsDevice;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPeerLostBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPeerInfoLostBroadcast(Lcom/lge/wfds/WfdsDevice;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/wfds/WfdsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mSuppConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/lge/wfds/WfdsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mSuppConnected:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;)Lcom/lge/wfds/session/AspSession;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Lcom/lge/wfds/session/AspSession;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/lge/wfds/WfdsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/lge/wfds/WfdsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$602(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V

    return-void
.end method

.method static synthetic access$6600(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V

    return-void
.end method

.method static synthetic access$6900(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->updateP2pInterfaceState()V

    return-void
.end method

.method static synthetic access$7300(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->updateP2pPeersList()V

    return-void
.end method

.method static synthetic access$8500(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->sendWfdsCreatGroupBroadcast()V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/wfds/WfdsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lge/wfds/WfdsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/lge/wfds/WfdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->setProvisionReceivedTimeout()V

    return-void
.end method

.method static synthetic access$9400(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;

    return-object p1
.end method

.method private confirmScanOnlyChannel(I)I
    .locals 7
    .param p1, "iChannel"    # I

    .prologue
    const/16 v6, 0xb9

    const/16 v5, 0x95

    const/16 v4, 0x24

    .line 3182
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getPreferredScanChannel()I

    move-result v0

    .line 3184
    .local v0, "preferredChannel":I
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmScanOnlyChannel ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    if-eq v0, p1, :cond_5

    .line 3188
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    if-ne v0, v6, :cond_2

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_2

    .line 3192
    :cond_0
    move v0, p1

    .line 3203
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V

    .line 3205
    return v0

    .line 3193
    :cond_2
    if-ne p1, v4, :cond_3

    if-eq v0, v5, :cond_4

    :cond_3
    if-ne p1, v5, :cond_1

    if-ne v0, v4, :cond_1

    .line 3197
    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    .line 3199
    :cond_5
    if-ne v0, v6, :cond_1

    .line 3200
    const/16 v0, 0x95

    goto :goto_0
.end method

.method private enableWifi()V
    .locals 4

    .prologue
    .line 379
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 380
    .local v0, "apState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 385
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    return-void
.end method

.method private getDeviceAddress()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x0

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 3222
    const/4 v1, 0x0

    .line 3224
    .local v1, "deviceAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3225
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    .line 3248
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 3249
    const-string v1, "ff:ff:ff:ff:ff:ff"

    .line 3252
    :cond_1
    const-string v4, "WfdsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceAddress ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    return-object v1

    .line 3227
    :cond_2
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getInstance()Lcom/lge/wifi/impl/WifiExtManager;

    move-result-object v3

    .line 3230
    .local v3, "wifiExtMgr":Lcom/lge/wifi/impl/WifiExtManager;
    if-eqz v3, :cond_0

    .line 3231
    const/4 v2, 0x0

    .line 3234
    .local v2, "macAddress":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiExtManager;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 3236
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 3237
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 3238
    .local v0, "byteMacAdd":B
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    or-int/2addr v4, v0

    int-to-byte v0, v4

    .line 3240
    const-string v4, "%02x:%2s:%2s:%2s:%2s:%2s"

    new-array v5, v10, [Ljava/lang/Object;

    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    invoke-virtual {v2, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x5

    const/16 v7, 0xa

    const/16 v8, 0xc

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getPreferredScanChannel()I
    .locals 1

    .prologue
    .line 3144
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3147
    :cond_0
    const/4 v0, 0x6

    .line 3149
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    goto :goto_0
.end method

.method private getScanOnlyChannel()I
    .locals 1

    .prologue
    .line 3218
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    return v0
.end method

.method private registerScanModeChange()V
    .locals 4

    .prologue
    .line 364
    new-instance v0, Lcom/lge/wfds/WfdsService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/WfdsService$3;-><init>(Lcom/lge/wfds/WfdsService;Landroid/os/Handler;)V

    .line 373
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 376
    return-void
.end method

.method private registerWfdsBroadcastReceiver()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "com.lge.wfds.PD_DEFER_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "com.lge.wfds.PD_RECEIVE_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "com.lge.wfds.CONNECTION_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;-><init>(Lcom/lge/wfds/WfdsService;)V

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    .end local v0    # "mIntentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v1, "WfdsService"

    const-string v2, "registerWfdsBroadcastRecevier: already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeConnectionTimeout()V
    .locals 2

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3116
    const-string v0, "WfdsService"

    const-string v1, "removeConnectionTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    .line 3120
    return-void
.end method

.method private removeProvisionDeferredTimeout()V
    .locals 2

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3096
    const-string v0, "WfdsService"

    const-string v1, "removeProvisionDeferredTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3099
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    .line 3100
    return-void
.end method

.method private removeProvisionReceivedTimeout()V
    .locals 2

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3076
    const-string v0, "WfdsService"

    const-string v1, "removeProvisionReceivedTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3079
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    .line 3080
    return-void
.end method

.method private resetWfdsTimer()V
    .locals 0

    .prologue
    .line 3123
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V

    .line 3124
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V

    .line 3125
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V

    .line 3126
    return-void
.end method

.method private selectPreferredScanChannel()V
    .locals 5

    .prologue
    .line 3153
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    if-nez v2, :cond_2

    .line 3155
    new-instance v1, Lcom/lge/wfds/WfdsNative;

    const-string v2, "wlan0"

    invoke-direct {v1, v2}, Lcom/lge/wfds/WfdsNative;-><init>(Ljava/lang/String;)V

    .line 3162
    .local v1, "wfdsWifiNative":Lcom/lge/wfds/WfdsNative;
    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsNative;->getCapabilies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3164
    .local v0, "channelsCapa":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3165
    const-string v2, "149"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3166
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    add-int/lit16 v2, v2, 0x95

    iput v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 3169
    :cond_0
    const-string v2, "36"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3170
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    add-int/lit8 v2, v2, 0x24

    iput v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 3173
    :cond_1
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    if-nez v2, :cond_2

    .line 3174
    const/4 v2, 0x6

    iput v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 3178
    .end local v0    # "channelsCapa":Ljava/lang/String;
    .end local v1    # "wfdsWifiNative":Lcom/lge/wfds/WfdsNative;
    :cond_2
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectPreferredScanChannel ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    return-void
.end method

.method private sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    .locals 5
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;
    .param p2, "status"    # I

    .prologue
    .line 3048
    if-nez p1, :cond_0

    .line 3049
    const-string v1, "WfdsService"

    const-string v2, "Send ConnectStatus: session is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    :goto_0
    return-void

    .line 3053
    :cond_0
    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3054
    .local v0, "sessionId":Ljava/lang/String;
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send ConnectStatus: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SessionMAC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SessionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget v3, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/lge/wfds/WfdsEvent;->notifyConnectStatusToService(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private sendWfdsCreatGroupBroadcast()V
    .locals 3

    .prologue
    .line 3041
    const-string v1, "WfdsService"

    const-string v2, "sendWfdsCreatGroupBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.CREATE_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3044
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3045
    return-void
.end method

.method private sendWfdsPeerInfoLostBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 2993
    if-nez p1, :cond_0

    .line 3003
    :goto_0
    return-void

    .line 2997
    :cond_0
    const-string v1, "WfdsService"

    const-string v2, "WfdsPeerInfoLostBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_INFO_LOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3000
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3001
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3002
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendWfdsPeerLostBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceAddr"    # Ljava/lang/String;

    .prologue
    .line 2980
    if-nez p1, :cond_0

    .line 2990
    :goto_0
    return-void

    .line 2984
    :cond_0
    const-string v1, "WfdsService"

    const-string v2, "WfdsPeersLostBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_LOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2987
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2988
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2989
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendWfdsPeersChangedBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 2967
    if-nez p1, :cond_0

    .line 2977
    :goto_0
    return-void

    .line 2971
    :cond_0
    const-string v1, "WfdsService"

    const-string v2, "WfdsPeersChangedBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2974
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2975
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2976
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 3018
    if-nez p1, :cond_0

    .line 3027
    :goto_0
    return-void

    .line 3021
    :cond_0
    const-string v1, "WfdsService"

    const-string v2, "WfdsPersistentResultBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PERSISTENT_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3024
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3025
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3026
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendWfdsPersistentUnknownGroupBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 3030
    if-nez p1, :cond_0

    .line 3038
    :goto_0
    return-void

    .line 3034
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PERSISTENT_UNKNOWN_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3035
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3036
    const-string v1, "wfdsUnknownGroupId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3037
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 3006
    if-nez p1, :cond_0

    .line 3015
    :goto_0
    return-void

    .line 3009
    :cond_0
    const-string v1, "WfdsService"

    const-string v2, "WfdsProvisionDiscoveryBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PROVISION_DISCOVERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3012
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3013
    const-string v1, "wfdsPdEvent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3014
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setConnectionTimeout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.CONNECTION_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3104
    .local v0, "connectionTimeoutIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    .line 3107
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 3108
    const-string v1, "WfdsService"

    const-string v4, "setConnectionTimeout"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long v2, v4, v6

    .line 3110
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3112
    .end local v2    # "triggerTime":J
    :cond_0
    return-void
.end method

.method private setProvisionDeferredTimeout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PD_DEFER_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3084
    .local v0, "pdDeferredTimeoutIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    .line 3087
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 3088
    const-string v1, "WfdsService"

    const-string v4, "setProvisionDeferredTimeout"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    add-long v2, v4, v6

    .line 3090
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3092
    .end local v2    # "triggerTime":J
    :cond_0
    return-void
.end method

.method private setProvisionReceivedTimeout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3063
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PD_RECEIVE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3064
    .local v0, "pdReceivedTimeoutIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    .line 3067
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 3068
    const-string v1, "WfdsService"

    const-string v4, "setProvisionReceivedTimeout"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 3070
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3072
    .end local v2    # "triggerTime":J
    :cond_0
    return-void
.end method

.method private setScanOnlyChannel(I)V
    .locals 3
    .param p1, "iChannel"    # I

    .prologue
    .line 3209
    iget v1, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 3210
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 3211
    .local v0, "r":Ljava/util/Random;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsNative;->p2pSetChannel(I)Z

    .line 3214
    .end local v0    # "r":Ljava/util/Random;
    :cond_0
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    .line 3215
    return-void
.end method

.method private setWfdsMonitor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V

    .line 430
    return-void
.end method

.method private setWfdsMonitor(ZZ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "forced"    # Z

    .prologue
    .line 410
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set the WFDS Monitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz p1, :cond_2

    .line 412
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Lcom/lge/wfds/WfdsMonitor;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/WfdsNative;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->startMonitoring()V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    if-eqz v0, :cond_1

    .line 418
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->getScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    const-string v0, "WfdsService"

    const-string v1, "Do not stopped the monitor because of ScanAlwaysAvailable mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->stopMonitoring()V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    goto :goto_0
.end method

.method private unregisterWfdsBroadcastReceiver()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v0, "WfdsService"

    const-string v1, "unregisterWfdsBroadcastReceiver: already unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateP2pInterfaceState()V
    .locals 4

    .prologue
    .line 390
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 392
    .local v0, "p2pInterfaceState":I
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update P2p Interface State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0    # "p2pInterfaceState":I
    :cond_0
    return-void
.end method

.method private updateP2pPeersList()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/lge/wfds/WfdsService$4;

    invoke-direct {v2, p0}, Lcom/lge/wfds/WfdsService$4;-><init>(Lcom/lge/wfds/WfdsService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0
.end method


# virtual methods
.method public deinitEventListener(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsEvent;->deinitEventListener(I)V

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->enforceAccessPermission()V

    .line 453
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->enforceChangePermission()V

    .line 454
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getSessionMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 458
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    invoke-virtual {v1}, Lcom/lge/wfds/SessionController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I
    .locals 1
    .param p1, "listener"    # Lcom/lge/wfds/IWfdsEventListener;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    if-nez v0, :cond_0

    .line 463
    const/4 v0, -0x1

    .line 466
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsEvent;->initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I

    move-result v0

    goto :goto_0
.end method
