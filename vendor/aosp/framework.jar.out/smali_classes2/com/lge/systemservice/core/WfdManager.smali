.class public Lcom/lge/systemservice/core/WfdManager;
.super Ljava/lang/Object;
.source "WfdManager.java"


# static fields
.field public static final DIRECT_STATE_CONNECTED:I = 0x4

.field public static final DIRECT_STATE_CONNECTING:I = 0x3

.field public static final DIRECT_STATE_DISABLED:I = 0x0

.field public static final DIRECT_STATE_DISABLING:I = 0x6

.field public static final DIRECT_STATE_DISCONNECTING:I = 0x5

.field public static final DIRECT_STATE_ENABLING:I = 0x1

.field public static final DIRECT_STATE_NOT_CONNECTED:I = 0x2

.field public static final DIRECT_STATE_UNKNOWN:I = 0x7

.field public static final DRM_REQ_FORCED_PAUSE:I = 0x2

.field public static final DRM_REQ_NONE:I = 0x3

.field public static final DRM_REQ_PAUSE:I = 0x1

.field public static final DRM_REQ_RESUME:I = 0x0

.field public static final EXTRA_CONNECTED_UDN:Ljava/lang/String; = "connected_udn"

.field public static final EXTRA_DLNA_TRANSIT_ENABLE:Ljava/lang/String; = "wfd_switch"

.field public static final EXTRA_DLNA_UDN:Ljava/lang/String; = "dlna_udn"

.field public static final EXTRA_HDCP_ENABLED:Ljava/lang/String; = "hdcp_enabled"

.field public static final EXTRA_IGNORE_DIRECT_CONNECTION:Ljava/lang/String; = "ignore_direct_connection"

.field public static final EXTRA_LG_MIRACAST_VER:Ljava/lang/String; = "lg_wfd_version"

.field public static final EXTRA_PAUSE_REQ:Ljava/lang/String; = "drm_pause_req"

.field public static final EXTRA_PLAYER:Ljava/lang/String; = "drm_player"

.field public static final EXTRA_PREVIOUS_WFD_STATE:Ljava/lang/String; = "previous_wfd_state"

.field public static final EXTRA_RTSP_STATE:Ljava/lang/String; = "rtsp_state"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final EXTRA_WFD_CALLBACK:Ljava/lang/String; = "extra_wfd_callback"

.field public static final EXTRA_WFD_STATE:Ljava/lang/String; = "wfd_state"

.field public static final EXTRA_WFD_TRANSIT_FAIL_REASON:Ljava/lang/String; = "extra_fail_reason"

.field public static final EXTRA_WHRZ_PORTS:Ljava/lang/String; = "whrz_ports"

.field public static final EXTRA_WIFI_FEATURE:Ljava/lang/String; = "wifi_feature"

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.wfdService"

.field public static final RTSP_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.rtsp.STATE_CHANGE"

.field public static final RTSP_STATE_CREATING:I = 0x2

.field public static final RTSP_STATE_INIT:I = 0x4

.field public static final RTSP_STATE_LISTEN:I = 0x3

.field public static final RTSP_STATE_NEW:I = 0x0

.field public static final RTSP_STATE_NOT_RUNNING:I = 0x1

.field public static final RTSP_STATE_PLAYING:I = 0x6

.field public static final RTSP_STATE_READY:I = 0x5

.field public static final RTSP_STATE_UNKNOWN:I = 0x7

.field public static final SERVICE_NAME:Ljava/lang/String; = "wfdService"

.field public static final SESSION_CB_HDCP_CONNECT_FAIL:I = 0x2

.field public static final SESSION_CB_HDCP_CONNECT_SUCCESS:I = 0x1

.field public static final SESSION_CB_NONE:I = 0x0

.field public static final SESSION_CB_TEARDOWN_STARTED:I = 0x5

.field public static final SESSION_CB_UIBC_DISABLED:I = 0x7

.field public static final SESSION_CB_UIBC_ENABLED:I = 0x6

.field public static final SESSION_CB_UIBC_NOT_SUPPORTED:I = 0x4

.field public static final SESSION_CB_UIBC_SUPPORTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WfdManager"

.field public static final WFD_INFORM_DRM_STATUS:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_INFORM_DRM_STATUS"

.field public static final WFD_LG_PEER_EVENT_FAIL_REASON:I = 0x3

.field public static final WFD_LG_PEER_EVENT_NONE:I = 0x0

.field public static final WFD_LG_PEER_EVENT_PEER_INFO:I = 0x1

.field public static final WFD_LG_PEER_EVENT_SRC_IP:I = 0x2

.field public static final WFD_REQUEST_WIFI_ENABLED_ACTION:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_REQUEST_WIFI_ENABLED_ACTION"

.field public static final WFD_REQ_DISABLE:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_DISABLE"

.field public static final WFD_REQ_DLNA_TRANSIT:Ljava/lang/String; = "lge.wfd.switch.start"

.field public static final WFD_REQ_ENABLE:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_ENABLE"

.field public static final WFD_REQ_RESUME_FROM_DLNA:Ljava/lang/String; = "lge.wfd.switch.stop"

.field public static final WFD_REQ_RESUME_FROM_WHRZ:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_REQ_RESUME_FROM_WHRZ"

.field public static final WFD_REQ_WHRZ_TRANSIT:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_REQ_WHRZ_TRANSIT"

.field public static final WFD_SET_TO_ASK:I = 0x2

.field public static final WFD_SET_TO_SINK:I = 0x1

.field public static final WFD_SET_TO_SOURCE:I = 0x0

.field public static final WFD_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

.field public static final WFD_STATE_CONNECTING:I = 0x3

.field public static final WFD_STATE_DISABLED:I = 0x0

.field public static final WFD_STATE_DISABLING:I = 0x7

.field public static final WFD_STATE_DISCONNECTING:I = 0x6

.field public static final WFD_STATE_ENABLING:I = 0x1

.field public static final WFD_STATE_LINK_CONNECTED:I = 0x4

.field public static final WFD_STATE_NOT_CONNECTED:I = 0x2

.field public static final WFD_STATE_UNKNOWN:I = 0x8

.field public static final WFD_STATE_WFD_PAIRED:I = 0x5

.field public static final WFD_TRANSIT_CALLBACK:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_TRANSIT_CALLBACK"

.field public static final WFD_TRANSIT_DLNA_READY:I = 0x2

.field public static final WFD_TRANSIT_FAIL:I = 0x0

.field public static final WFD_TRANSIT_FAIL_ALREADY_DONE:I = 0x2

.field public static final WFD_TRANSIT_FAIL_NOT_SUPPORTED:I = 0x1

.field public static final WFD_TRANSIT_FAIL_NO_REASON:I = 0x0

.field public static final WFD_TRANSIT_FAIL_OTHER_PLAYER_IS_RUNNING:I = 0x3

.field public static final WFD_TRANSIT_FAIL_PEER_NOT_READY:I = 0x4

.field public static final WFD_TRANSIT_FAIL_PEER_RESPONSE_TIMEOUT:I = 0x5

.field public static final WFD_TRANSIT_WFD_READY:I = 0x1

.field public static final WFD_TRANSIT_WHRZ_READY:I = 0x3

.field public static final WIFI_FEATURE_AP:I = 0x2

.field public static final WIFI_FEATURE_UNKNOWN:I = 0x0

.field public static final WIFI_FEATURE_WIFI:I = 0x1

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_NOT_CONNECTED:I


# instance fields
.field private mService:Lcom/lge/systemservice/core/IWfdManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/WfdManager;Lcom/lge/systemservice/core/IWfdManager;)Lcom/lge/systemservice/core/IWfdManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/WfdManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/IWfdManager;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    return-object p1
.end method

.method private final getService()Lcom/lge/systemservice/core/IWfdManager;
    .locals 4

    .prologue
    .line 501
    iget-object v1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    if-nez v1, :cond_0

    .line 502
    const-string/jumbo v1, "wfdService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/IWfdManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    .line 503
    iget-object v1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    if-eqz v1, :cond_0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/WfdManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/WfdManager$1;-><init>(Lcom/lge/systemservice/core/WfdManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    return-object v1

    .line 509
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method


# virtual methods
.method public cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/lge/systemservice/core/IWfdServiceListener;

    .prologue
    const/4 v2, 0x0

    .line 718
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 719
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 720
    const-string v3, "WfdManager"

    const-string v4, "cancelP2pConnect: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    return v2

    .line 724
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    const/4 v2, 0x1

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 728
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public cancelP2pConnect(Lcom/lge/systemservice/core/WfdServiceListener;)Z
    .locals 6
    .param p1, "listener"    # Lcom/lge/systemservice/core/WfdServiceListener;

    .prologue
    const/4 v3, 0x0

    .line 744
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v2

    .line 745
    .local v2, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v2, :cond_0

    .line 746
    const-string v4, "WfdManager"

    const-string v5, "cancelP2pConnect: fail to get WfdService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    return v3

    .line 750
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/lge/systemservice/core/WfdServiceListener;->getWfdServiceListener()Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 751
    .local v0, "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-interface {v2, v0}, Lcom/lge/systemservice/core/IWfdManager;->cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    const/4 v3, 0x1

    goto :goto_0

    .line 753
    .end local v0    # "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 755
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public cancelWifiDisplayConnect()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 570
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 571
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 572
    const-string v3, "WfdManager"

    const-string v4, "cancelWifiDisplayConnect: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return v2

    .line 576
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->cancelWifiDisplayConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 579
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public clientConnect()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 965
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 966
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 967
    const-string v3, "WfdManager"

    const-string v4, "clientConnect: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :goto_0
    return v2

    .line 971
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->clientConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 974
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/lge/systemservice/core/IWfdServiceListener;

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 617
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 618
    const-string v3, "WfdManager"

    const-string v4, "discoverWfdPeers: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_0
    return v2

    .line 622
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    const/4 v2, 0x1

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 626
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public discoverWfdPeers(Lcom/lge/systemservice/core/WfdServiceListener;)Z
    .locals 6
    .param p1, "listener"    # Lcom/lge/systemservice/core/WfdServiceListener;

    .prologue
    const/4 v3, 0x0

    .line 641
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v2

    .line 642
    .local v2, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v2, :cond_0

    .line 643
    const-string v4, "WfdManager"

    const-string v5, "discoverWfdPeers: fail to get WfdService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return v3

    .line 647
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/lge/systemservice/core/WfdServiceListener;->getWfdServiceListener()Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 648
    .local v0, "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-interface {v2, v0}, Lcom/lge/systemservice/core/IWfdManager;->discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    const/4 v3, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 652
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public getRtspState()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1030
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 1031
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 1032
    const-string v3, "WfdManager"

    const-string v4, "getRtspState: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_0
    return v2

    .line 1036
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->getRtspState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1039
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 899
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 900
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 901
    const-string v3, "WfdManager"

    const-string v4, "getTargetUrl: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_0
    return-object v2

    .line 905
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->getTargetUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 908
    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public getWfdMode()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 856
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 857
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 858
    const-string v3, "WfdManager"

    const-string v4, "getWfdMode: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_0
    return v2

    .line 862
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->getWfdMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 865
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public getWfdState()I
    .locals 5

    .prologue
    const/16 v2, 0x8

    .line 998
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 999
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 1000
    const-string v3, "WfdManager"

    const-string v4, "getWfdState: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    return v2

    .line 1004
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->getWfdState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1007
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public informConnectionRequstedUdn(Ljava/lang/String;)V
    .locals 4
    .param p1, "req_udn"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 593
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 594
    const-string v2, "WfdManager"

    const-string v3, "informConnectionRequstedUdn: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    return-void

    .line 598
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->informConnectionRequstedUdn(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 601
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)Z
    .locals 5
    .param p1, "peer_addr"    # Ljava/lang/String;
    .param p2, "wps_method"    # I
    .param p3, "listener"    # Lcom/lge/systemservice/core/IWfdServiceListener;

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 667
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 668
    const-string v3, "WfdManager"

    const-string v4, "requestConnect: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_0
    return v2

    .line 672
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWfdManager;->requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    const/4 v2, 0x1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 676
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/WfdServiceListener;)Z
    .locals 6
    .param p1, "peer_addr"    # Ljava/lang/String;
    .param p2, "wps_method"    # I
    .param p3, "listener"    # Lcom/lge/systemservice/core/WfdServiceListener;

    .prologue
    const/4 v3, 0x0

    .line 690
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v2

    .line 691
    .local v2, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v2, :cond_0

    .line 692
    const-string v4, "WfdManager"

    const-string v5, "requestConnect: fail to get WfdService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return v3

    .line 696
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/lge/systemservice/core/WfdServiceListener;->getWfdServiceListener()Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 698
    .local v0, "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-interface {v2, p1, p2, v0}, Lcom/lge/systemservice/core/IWfdManager;->requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    const/4 v3, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 702
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setTargetIpAddress_Url(I)V
    .locals 4
    .param p1, "inet"    # I

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 945
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 946
    const-string v2, "WfdManager"

    const-string/jumbo v3, "setTargetIpAddress_Url: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_0
    return-void

    .line 950
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setTargetIpAddress_Url(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 953
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setTargetRtspPort(I)V
    .locals 4
    .param p1, "port"    # I

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 922
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 923
    const-string v2, "WfdManager"

    const-string/jumbo v3, "setTargetRtspPort: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :goto_0
    return-void

    .line 927
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setTargetRtspPort(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 930
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 880
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 881
    const-string v2, "WfdManager"

    const-string/jumbo v3, "setTargetUrl: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_0
    return-void

    .line 885
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setTargetUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 888
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setUiState(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 771
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    const-string v2, "WfdManager"

    const-string/jumbo v3, "setUiState"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-nez v1, :cond_0

    .line 773
    const-string v2, "WfdManager"

    const-string v3, "enterUi: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_0
    return-void

    .line 777
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setUiState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 780
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setUiStateOff(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 816
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    const-string v2, "WfdManager"

    const-string/jumbo v3, "setUiStateOff"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    if-nez v1, :cond_0

    .line 818
    const-string v2, "WfdManager"

    const-string/jumbo v3, "setUiStateOff: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :goto_0
    return-void

    .line 822
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setUiStateOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 825
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setUiStateOn()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 794
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 795
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    const-string v3, "WfdManager"

    const-string/jumbo v4, "setUiStateOn"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    if-nez v1, :cond_0

    .line 797
    const-string v3, "WfdManager"

    const-string/jumbo v4, "setUiStateOn: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_0
    return v2

    .line 801
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->setUiStateOn()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 804
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setWfdMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 837
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 838
    const-string v2, "WfdManager"

    const-string/jumbo v3, "setWfdMode: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_0
    return-void

    .line 842
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setWfdMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 845
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setWifiDisplayEnabled(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 524
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 525
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 526
    const-string v3, "WfdManager"

    const-string/jumbo v4, "setWifiDisplayEnabled: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return v2

    .line 530
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setWifiDisplayEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 533
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method

.method public setWifiDisplayEnabledWithPopUp(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 549
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_0

    .line 550
    const-string v3, "WfdManager"

    const-string/jumbo v4, "setWifiDisplayEnabledWithPopUp: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_0
    return v2

    .line 554
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setWifiDisplayEnabledWithPopUp(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 557
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0
.end method
