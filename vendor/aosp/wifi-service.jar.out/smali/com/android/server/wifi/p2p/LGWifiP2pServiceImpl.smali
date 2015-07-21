.class public final Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "LGWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$1;,
        Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;,
        Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;,
        Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;,
        Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final DBG:Z = true

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final TAG:Ljava/lang/String; = "LGWifiP2pService"

.field private static mDisableP2pTimeoutIndex:I

.field private static mGroupCreatingTimeoutIndex:I


# instance fields
.field private mAutonomousGroup:Z

.field private mClientHandler:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientHandler;

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDialogWps:Landroid/app/AlertDialog;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mInterface:Ljava/lang/String;

.field private mIsUserAuthorizingJoinState:Z

.field private mJoinExistingGroup:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTemporarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->FORM_GROUP:Ljava/lang/Boolean;

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    .line 154
    sput v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    .line 157
    sput v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 328
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 143
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 216
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 242
    iput-boolean v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryPostponed:Z

    .line 246
    iput-boolean v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    .line 249
    iput-byte v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceTransactionId:B

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    .line 260
    iput-boolean v7, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z

    .line 261
    iput-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDialogWps:Landroid/app/AlertDialog;

    .line 329
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 332
    const-string v3, "p2p0"

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    .line 333
    new-instance v3, Landroid/net/NetworkInfo;

    const/16 v4, 0xd

    const-string v5, "WIFI_P2P"

    const-string v6, ""

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 335
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi.direct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pSupported:Z

    .line 338
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 341
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiP2pService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 342
    .local v2, "wifiP2pThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 343
    new-instance v3, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientHandler;

    .line 345
    new-instance v3, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const-string v4, "LGWifiP2pService"

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pSupported:Z

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    .line 346
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->start()V

    .line 349
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 350
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v1, "filterLGMDM":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/lge/cappuccino/IMdm;->addFilterWifiP2pServiceReceiver(Landroid/content/IntentFilter;)V

    .line 352
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$LGMDMReceiver;-><init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$1;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    .end local v1    # "filterLGMDM":Landroid/content/IntentFilter;
    :cond_0
    sget-boolean v3, Lcom/lge/wfds/WfdsLgeConfig;->CONFIG_LGE_WFDS_FEATURE:Z

    if-eqz v3, :cond_2

    .line 358
    invoke-static {}, Lcom/lge/server/wfds/WfdsIfaceManager;->getP2pWfdsExtIface()Lcom/lge/server/wfds/P2pWfdsExtIface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

    .line 359
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

    if-nez v3, :cond_1

    .line 360
    const-string v3, "LGWifiP2pService"

    const-string v4, "WFDS: cannot create the P2pWfdsExt interface"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    sget-boolean v3, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v3, :cond_3

    .line 375
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiServerManager;->getWifiServerServiceExtIface()Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    .line 380
    :goto_1
    return-void

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/lge/server/wfds/P2pWfdsExtIface;->initP2pWfdsExt(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

    invoke-interface {v3, v0}, Lcom/lge/server/wfds/P2pWfdsExtIface;->addWfdsFilters(Landroid/content/IntentFilter;)V

    .line 366
    iget-object v3, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$WfdsIntentReceiver;-><init>(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 369
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "LGWifiP2pService"

    const-string v4, "WFDS: do not support the WFDS"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_3
    iput-object v8, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$10500()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$12402(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z

    return v0
.end method

.method static synthetic access$12602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mIsUserAuthorizingJoinState:Z

    return p1
.end method

.method static synthetic access$13500(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/server/wfds/P2pWfdsExtIface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

    return-object v0
.end method

.method static synthetic access$14100()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$14302(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;B)B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # B

    .prologue
    .line 130
    iput-byte p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$14304(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$14400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$1604()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDialogWps:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDialogWps:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->isWfdsDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$8100()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$8104()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$8108()I
    .locals 2

    .prologue
    .line 130
    sget v0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Lcom/lge/wifi/extension/IWifiServerServiceExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return p1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private isWfdsDevice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3656
    sget-boolean v0, Lcom/lge/wfds/WfdsLgeConfig;->CONFIG_LGE_WFDS_FEATURE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

    if-eqz v0, :cond_0

    .line 3658
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pWfdsExt:Lcom/lge/server/wfds/P2pWfdsExtIface;

    invoke-interface {v0, p1}, Lcom/lge/server/wfds/P2pWfdsExtIface;->isWfdsDevice(Ljava/lang/String;)Z

    move-result v0

    .line 3660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 383
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 384
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 385
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTemporarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 409
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->enforceChangePermission()V

    .line 410
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 420
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->enforceAccessPermission()V

    .line 421
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->enforceChangePermission()V

    .line 422
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 436
    iget-object v0, p0, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/LGWifiP2pServiceImpl$P2pStateMachine;->sendMessage(II)V

    .line 437
    return-void
.end method
