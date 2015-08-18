.class public Lcom/lge/wfds/WfdsManager;
.super Ljava/lang/Object;
.source "WfdsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsManager$Channel;,
        Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;,
        Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;,
        Lcom/lge/wfds/WfdsManager$WfdsIntListener;,
        Lcom/lge/wfds/WfdsManager$WfdsStrListener;,
        Lcom/lge/wfds/WfdsManager$WfdsActionListener;,
        Lcom/lge/wfds/WfdsManager$WfdsChannelListener;
    }
.end annotation


# static fields
.field public static final APP_PKG_BUNDLE_KEY:Ljava/lang/String; = "appPkgName"

.field private static final BASE_WFDS_MANAGER:I = 0x900000

.field public static final CMD_ACTION_LISTENER_FAILED:I = 0x90001f

.field public static final CMD_ACTION_LISTENER_SUCCEEDED:I = 0x900020

.field public static final CMD_ADVERTISE_SERVICE:I = 0x900001

.field public static final CMD_ASPSESSION_LISTENER_FAILED:I = 0x900027

.field public static final CMD_ASPSESSION_LISTENER_SUCCEEDED:I = 0x900028

.field public static final CMD_BOUND_PORT:I = 0x900008

.field public static final CMD_CANCEL_ADVERTISE:I = 0x900003

.field public static final CMD_CANCEL_CONNECT_SESSION:I = 0x90000f

.field public static final CMD_CANCEL_SEEK_SERVICE:I = 0x90000a

.field public static final CMD_CLOSE_SESSION:I = 0x900007

.field public static final CMD_CONFIRM_LISTEN_CHANNEL:I = 0x90005e

.field public static final CMD_CONFIRM_SESSION:I = 0x90000d

.field public static final CMD_CONNECT_SESSION:I = 0x900005

.field public static final CMD_DISCONNECT_SESSION:I = 0x90000e

.field public static final CMD_GET_DEVICE_ADDRESS:I = 0x90005b

.field public static final CMD_GET_LISTEN_CHANNEL:I = 0x90005c

.field public static final CMD_GET_SESSION:I = 0x90000c

.field public static final CMD_INT_LISTENER_FAILED:I = 0x900021

.field public static final CMD_INT_LISTENER_SUCCEEDED:I = 0x900022

.field public static final CMD_INT_STR_LISTENER_FAILED:I = 0x900025

.field public static final CMD_INT_STR_LISTENER_SUCCEEDED:I = 0x900026

.field public static final CMD_REJECT_SESSION:I = 0x90000b

.field public static final CMD_RELEASE_PORT:I = 0x900009

.field public static final CMD_SEEK_SERVICE:I = 0x900004

.field public static final CMD_SERVICE_STATUS_CHANGE:I = 0x900002

.field public static final CMD_SESSION_READY:I = 0x900006

.field public static final CMD_SET_LISTEN_CHANNEL:I = 0x90005d

.field public static final CMD_STR_LISTENER_FAILED:I = 0x900023

.field public static final CMD_STR_LISTENER_SUCCEEDED:I = 0x900024

.field public static final CMD_TEST_CREATE_GROUP:I = 0x900037

.field public static final CMD_TEST_GET_CONNECT_CAPA:I = 0x900034

.field public static final CMD_TEST_GET_DISPLAY_PIN:I = 0x900036

.field public static final CMD_TEST_SET_CERTIFICATION_MODE:I = 0x900039

.field public static final CMD_TEST_SET_CONNECT_CAPA:I = 0x900033

.field public static final CMD_TEST_SET_LISTEN_CHANNEL:I = 0x900038

.field public static final CMD_TEST_SET_WSC_CONFIG_METHOD:I = 0x900035

.field public static final CMD_WFDS_SERVICE_BASE:I = 0x901000

.field public static final EXTRA_WFDS_PERSISTENT_UNKNOWN_GROUP:Ljava/lang/String; = "wfdsUnknownGroupId"

.field public static final EXTRA_WFDS_PROV_EVENT:Ljava/lang/String; = "wfdsPdEvent"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.wfds.asp"

.field public static final REASON_BUSY:I = 0x5

.field public static final REASON_DUPLICATED:I = 0x1

.field public static final REASON_FAILURE:I = 0x2

.field public static final REASON_ROLE_CONFLICT:I = 0x6

.field public static final REASON_TIMEOUT:I = 0x3

.field public static final REASON_USER_REQUEST:I = 0x4

.field public static final RESET_DIALOG_LISTENER_BUNDLE_KEY:Ljava/lang/String; = "dialogResetFlag"

.field public static final SERVICE_NAME:Ljava/lang/String; = "WfdsService"

.field public static final SERVICE_REQUEST_ACCEPT:I = 0x3

.field public static final SERVICE_REQUEST_CANCELED:I = 0x9

.field public static final SERVICE_REQUEST_CONNECTED:I = 0x6

.field public static final SERVICE_REQUEST_DEFERRED:I = 0x2

.field public static final SERVICE_REQUEST_DISCONNECTED:I = 0x8

.field public static final SERVICE_REQUEST_FAILED:I = 0x7

.field public static final SERVICE_REQUEST_REJECT:I = 0x4

.field public static final SERVICE_REQUEST_SENT:I = 0x1

.field public static final SERVICE_REQUEST_TIMEOUT:I = 0x5

.field public static final TAG:Ljava/lang/String; = "WfdsManager"

.field public static final WFDS_CONNECTION_CAPABILITY_CLI:I = 0x2

.field public static final WFDS_CONNECTION_CAPABILITY_CLI_GO:I = 0x6

.field public static final WFDS_CONNECTION_CAPABILITY_GO:I = 0x4

.field public static final WFDS_CONNECTION_CAPABILITY_NEW:I = 0x1

.field public static final WFDS_CONNECTION_CAPABILITY_NEW_GO:I = 0x5

.field public static final WFDS_CREATE_GROUP_ACTION:Ljava/lang/String; = "com.lge.wfds.CREATE_GROUP"

.field public static final WFDS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wfds.DEVICE_CHANGED"

.field public static final WFDS_DEVICE_INFO_LOST_ACTION:Ljava/lang/String; = "com.lge.wfds.DEVICE_INFO_LOST"

.field public static final WFDS_DEVICE_LOST_ACTION:Ljava/lang/String; = "com.lge.wfds.DEVICE_LOST"

.field public static final WFDS_PD_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wfds.PROVISION_DISCOVERY_CHANGED"

.field public static final WFDS_PERSISTENT_RESULT_ACTION:Ljava/lang/String; = "com.lge.wfds.PERSISTENT_RESULT"

.field public static final WFDS_PERSISTENT_UNKNOWN_GROUP_ACTION:Ljava/lang/String; = "com.lge.wfds.PERSISTENT_UNKNOWN_GROUP"

.field public static final WFDS_PORT_STATUS_FAILURE:I = 0x2

.field public static final WFDS_PORT_STATUS_LOCAL_PORT_ALLOWED:I = 0x0

.field public static final WFDS_PORT_STATUS_LOCAL_PORT_BLOCKED:I = 0x1

.field public static final WFDS_PORT_STATUS_REMOTE_PORT_ALLOWED:I = 0x3

.field public static final WFDS_SESSION_STATE_CLOSED:I = 0x3

.field public static final WFDS_SESSION_STATE_INITIATED:I = 0x1

.field public static final WFDS_SESSION_STATE_OPEN:I = 0x0

.field public static final WFDS_SESSION_STATE_REQUESTED:I = 0x2

.field public static final WFDS_SESSION_STATUS_DISASSOCIATED:I = 0x1

.field public static final WFDS_SESSION_STATUS_LOCAL_CLOSED:I = 0x2

.field public static final WFDS_SESSION_STATUS_NO_RESPONSE_FROM_REMOTE:I = 0x5

.field public static final WFDS_SESSION_STATUS_OK:I = 0x0

.field public static final WFDS_SESSION_STATUS_REMOTE_CLOSED:I = 0x3

.field public static final WFDS_SESSION_STATUS_SYSTEM_FAILURE:I = 0x4

.field private static mWfdsManager:Lcom/lge/wfds/WfdsManager;

.field private static mWfdsService:Lcom/lge/wfds/IWfdsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    .line 36
    sput-object v0, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    return-void
.end method

.method private constructor <init>(Lcom/lge/wfds/IWfdsManager;)V
    .locals 0
    .param p1, "service"    # Lcom/lge/wfds/IWfdsManager;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sput-object p1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    .line 189
    return-void
.end method

.method static synthetic access$002(Lcom/lge/wfds/IWfdsManager;)Lcom/lge/wfds/IWfdsManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/IWfdsManager;

    .prologue
    .line 27
    sput-object p0, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/lge/wfds/WfdsManager;)Lcom/lge/wfds/WfdsManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wfds/WfdsManager;

    .prologue
    .line 27
    sput-object p0, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    return-object p0
.end method

.method private static checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V
    .locals 2
    .param p0, "c"    # Lcom/lge/wfds/WfdsManager$Channel;

    .prologue
    .line 467
    if-nez p0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[WFDS] Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    return-void
.end method

.method private static checkMethod(Lcom/lge/wfds/WfdsDiscoveryMethod;)V
    .locals 2
    .param p0, "method"    # Lcom/lge/wfds/WfdsDiscoveryMethod;

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[WFDS] method info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/lge/wfds/WfdsManager;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 192
    sget-object v3, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    if-nez v3, :cond_0

    .line 193
    const-string v3, "WfdsService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 194
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wfds/IWfdsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wfds/IWfdsManager;

    move-result-object v2

    .line 195
    .local v2, "service":Lcom/lge/wfds/IWfdsManager;
    new-instance v3, Lcom/lge/wfds/WfdsManager;

    invoke-direct {v3, v2}, Lcom/lge/wfds/WfdsManager;-><init>(Lcom/lge/wfds/IWfdsManager;)V

    sput-object v3, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    .line 196
    sget-object v3, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v3, :cond_0

    .line 198
    :try_start_0
    sget-object v3, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v3}, Lcom/lge/wfds/IWfdsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/lge/wfds/WfdsManager$1;

    invoke-direct {v4}, Lcom/lge/wfds/WfdsManager$1;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    sget-object v3, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    return-object v3

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Landroid/os/RemoteException;
    sput-object v6, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    .line 208
    sput-object v6, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    goto :goto_0
.end method

.method private getMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1179
    :try_start_0
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v2, :cond_0

    .line 1180
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v2}, Lcom/lge/wfds/IWfdsManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1185
    :cond_0
    :goto_0
    return-object v1

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getSessionMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1197
    :try_start_0
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v2, :cond_0

    .line 1198
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v2}, Lcom/lge/wfds/IWfdsManager;->getSessionMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1203
    :cond_0
    :goto_0
    return-object v1

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public advertiseService(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .locals 4
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "accept"    # I
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "role"    # I
    .param p7, "config"    # I
    .param p8, "deferred_session_response"    # Ljava/lang/String;
    .param p9, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 631
    const-string v2, "WfdsManager"

    const-string v3, "AdvertiseService method called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-nez p2, :cond_0

    .line 658
    :goto_0
    return-void

    .line 637
    :cond_0
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(Ljava/lang/String;I)V

    .line 640
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-nez v2, :cond_2

    .line 641
    :cond_1
    const-string v2, "WfdsManager"

    const-string v3, "AdvertiseService is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :cond_2
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setAcceptMethod(I)V

    .line 645
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p5}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceStatus(I)V

    .line 646
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p4}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceInfo(Ljava/lang/String;)V

    .line 647
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p6}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setNetworkRole(I)V

    .line 648
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p7}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setNetworkConfig(I)V

    .line 650
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 651
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x900001

    iput v2, v1, Landroid/os/Message;->what:I

    .line 652
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 653
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p9}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 654
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 656
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 657
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public boundPort(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 5
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "proto"    # I
    .param p7, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1009
    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoundPort method called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 1014
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {v1, p5, p6}, Lcom/lge/wfds/session/AspSession;->addPort(II)V

    .line 1015
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1016
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900008

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1017
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1018
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p7}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1019
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1020
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1021
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public cancelAdvertiseService(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "id"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 672
    const-string v0, "WfdsManager"

    const-string v1, "cancelAdvertiseService method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 674
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900003

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 675
    return-void
.end method

.method public cancelConnectSessions(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 5
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "sessionMac"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 825
    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelConnectSessions method called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 830
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 831
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x90000f

    iput v2, v0, Landroid/os/Message;->what:I

    .line 832
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 833
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 834
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 835
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 836
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public cancelSeekService(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "id"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 769
    const-string v0, "WfdsManager"

    const-string v1, "cancelSeekService method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 771
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x90000a

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 772
    return-void
.end method

.method public closeSession(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 5
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 980
    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeSession method called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 985
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 986
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900007

    iput v2, v0, Landroid/os/Message;->what:I

    .line 987
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 988
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 989
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 990
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 991
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public confirmListenChannel(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "iChannel"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 1130
    const-string v0, "WfdsManager"

    const-string v1, "confirmListenChannel method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1132
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x90005e

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1133
    return-void
.end method

.method public confirmSessions(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;IZLjava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 8
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "confirmed"    # Z
    .param p5, "pinNumber"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    const v7, 0x90000d

    const/4 v6, 0x1

    .line 857
    if-eqz p2, :cond_0

    const/4 v3, -0x1

    if-ne p3, v3, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    const-string v3, "WfdsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConfirmSessions method called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 864
    .local v1, "msg":Landroid/os/Message;
    if-nez p3, :cond_4

    .line 865
    iput v7, v1, Landroid/os/Message;->what:I

    .line 866
    if-ne p4, v6, :cond_3

    .line 867
    if-eqz p5, :cond_2

    .line 868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "true "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "confirmMsg":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "confirmMsg"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 887
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p6}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 889
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 890
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_6

    .line 891
    iget-object v3, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 870
    :cond_2
    const-string v0, "true"

    .restart local v0    # "confirmMsg":Ljava/lang/String;
    goto :goto_1

    .line 873
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :cond_3
    const-string v0, "false"

    .restart local v0    # "confirmMsg":Ljava/lang/String;
    goto :goto_1

    .line 877
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v2, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 878
    .local v2, "session":Lcom/lge/wfds/session/AspSession;
    if-ne p4, v6, :cond_5

    .line 879
    const v3, 0x900006

    iput v3, v1, Landroid/os/Message;->what:I

    .line 883
    :goto_3
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 881
    :cond_5
    const v3, 0x90000b

    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_3

    .line 893
    .end local v2    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_6
    iget-object v3, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public connectSessions(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IILcom/lge/wfds/WfdsManager$WfdsIntStrListener;)V
    .locals 8
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "role"    # I
    .param p6, "config"    # I
    .param p7, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;

    .prologue
    .line 798
    if-nez p2, :cond_0

    .line 816
    :goto_0
    return-void

    .line 802
    :cond_0
    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 804
    .local v7, "strId":Ljava/lang/String;
    const-string v1, "WfdsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectSessions method called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v0, Lcom/lge/wfds/WfdsPdMethod;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/WfdsPdMethod;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 808
    .local v0, "method":Lcom/lge/wfds/WfdsPdMethod;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 809
    .local v6, "msg":Landroid/os/Message;
    const v1, 0x900005

    iput v1, v6, Landroid/os/Message;->what:I

    .line 810
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v6, Landroid/os/Message;->arg1:I

    .line 811
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p7}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v6, Landroid/os/Message;->arg2:I

    .line 812
    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 814
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 815
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public createGroup(Lcom/lge/wfds/WfdsManager$Channel;ILjava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "channel"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 904
    const-string v1, "WfdsManager"

    const-string v2, "createGroup method is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 906
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900037

    iput v1, v0, Landroid/os/Message;->what:I

    .line 907
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 908
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 909
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 912
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 913
    return-void
.end method

.method public deinitEventListener(I)V
    .locals 2
    .param p1, "listenerId"    # I

    .prologue
    .line 537
    :try_start_0
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v1, :cond_0

    .line 538
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v1, p1}, Lcom/lge/wfds/IWfdsManager;->deinitEventListener(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disconnectSession(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1060
    const-string v1, "WfdsManager"

    const-string v2, "disconnectSession method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1062
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x90000e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1063
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1064
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1065
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1066
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1067
    return-void
.end method

.method public getConnectCapability(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 573
    const-string v1, "WfdsManager"

    const-string v2, "getConnectCapability method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900034

    iput v1, v0, Landroid/os/Message;->what:I

    .line 576
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 577
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 578
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 579
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 580
    return-void
.end method

.method public getDeviceAddress(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsStrListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsStrListener;

    .prologue
    .line 1080
    const-string v1, "WfdsManager"

    const-string v2, "getDeviceAddress method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1082
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x90005b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1083
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1084
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1085
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1086
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1087
    return-void
.end method

.method public getDisplayPin(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 597
    const-string v1, "WfdsManager"

    const-string v2, "get Display PIN: method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900036

    iput v1, v0, Landroid/os/Message;->what:I

    .line 600
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 601
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 602
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 603
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 604
    return-void
.end method

.method public getListenChannel(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 1098
    const-string v1, "WfdsManager"

    const-string v2, "getListenChannel method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1100
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x90005c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1101
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1102
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1103
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1104
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1105
    return-void
.end method

.method public getSession(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsAspSessionListener;)V
    .locals 5
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "sessionMac"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;

    .prologue
    .line 927
    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSession method called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 933
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 934
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x90000c

    iput v2, v0, Landroid/os/Message;->what:I

    .line 935
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 936
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 937
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 938
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 939
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/lge/wfds/IWfdsEventListener;

    .prologue
    const/4 v1, -0x1

    .line 518
    if-eqz p1, :cond_0

    .line 520
    :try_start_0
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v2, :cond_0

    .line 521
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v2, p1}, Lcom/lge/wfds/IWfdsManager;->initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    :cond_0
    :goto_0
    return v1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/lge/wfds/WfdsManager$WfdsChannelListener;)Lcom/lge/wfds/WfdsManager$Channel;
    .locals 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsChannelListener;

    .prologue
    const/4 v3, 0x0

    .line 490
    invoke-direct {p0}, Lcom/lge/wfds/WfdsManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 491
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v3

    .line 507
    :cond_0
    :goto_0
    return-object v0

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/lge/wfds/WfdsManager;->getSessionMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 496
    .local v2, "sessionMessenger":Landroid/os/Messenger;
    if-nez v2, :cond_2

    move-object v0, v3

    .line 497
    goto :goto_0

    .line 500
    :cond_2
    new-instance v0, Lcom/lge/wfds/WfdsManager$Channel;

    invoke-direct {v0, p1, p2, p3}, Lcom/lge/wfds/WfdsManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/lge/wfds/WfdsManager$WfdsChannelListener;)V

    .line 501
    .local v0, "c":Lcom/lge/wfds/WfdsManager$Channel;
    iget-object v4, v0, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mHandler:Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;
    invoke-static {v0}, Lcom/lge/wfds/WfdsManager$Channel;->access$400(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mHandler:Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;
    invoke-static {v0}, Lcom/lge/wfds/WfdsManager$Channel;->access$400(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move-object v0, v3

    .line 507
    goto :goto_0
.end method

.method public releasePort(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 5
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "proto"    # I
    .param p7, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1040
    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReleasePort method called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3, p4}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1045
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {v1, p5, p6}, Lcom/lge/wfds/session/AspSession;->addPort(II)V

    .line 1046
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1047
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900009

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1048
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1049
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p7}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1050
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1051
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1052
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public seekService(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .locals 4
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "search"    # I
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "req"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 730
    const-string v2, "WfdsManager"

    const-string v3, "SeekService method called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-nez p2, :cond_0

    .line 755
    :goto_0
    return-void

    .line 736
    :cond_0
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    const/4 v2, 0x2

    invoke-direct {v0, p2, v2}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(Ljava/lang/String;I)V

    .line 739
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    if-nez v2, :cond_2

    .line 740
    :cond_1
    const-string v2, "WfdsManager"

    const-string v3, "SeekService is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_2
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v2, p3}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setSearchMethod(I)V

    .line 744
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v2, p4}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setP2pAddress(Ljava/lang/String;)V

    .line 745
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v2, p5}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setServiceInfoRequest(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 748
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x900004

    iput v2, v1, Landroid/os/Message;->what:I

    .line 749
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 750
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p6}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 751
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 753
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 754
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public serviceStatusChange(Lcom/lge/wfds/WfdsManager$Channel;IILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 4
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "id"    # I
    .param p3, "status"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 691
    const-string v2, "WfdsManager"

    const-string v3, "ServiceStatusChange method called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(II)V

    .line 696
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-nez v2, :cond_1

    .line 697
    :cond_0
    const-string v2, "WfdsManager"

    const-string v3, "ServiceStatusChange is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceStatus(I)V

    .line 702
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 703
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x900002

    iput v2, v1, Landroid/os/Message;->what:I

    .line 704
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 705
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 706
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 708
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 709
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setConfigMethod(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "method"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 587
    const-string v0, "WfdsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfigMethod is called: method ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 589
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900035

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 590
    return-void
.end method

.method public setConnectCapability(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "val"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 558
    const-string v0, "WfdsManager"

    const-string v1, "setConnectCapability method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 560
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900033

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 561
    return-void
.end method

.method public setListenChannel(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "iChannel"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1116
    const-string v0, "WfdsManager"

    const-string v1, "setListenChannel method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1118
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x90005d

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1119
    return-void
.end method

.method public setSesstionReady(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 5
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 954
    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetSesstionReady method called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 959
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 960
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900006

    iput v2, v0, Landroid/os/Message;->what:I

    .line 961
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 962
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 963
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 964
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 965
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setWfdsCertificationMode(Lcom/lge/wfds/WfdsManager$Channel;ZLcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 4
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "isCertiMode"    # Z
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1160
    const-string v1, "WfdsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfdsCertificationMode method called ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1162
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900039

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1163
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1164
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1165
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1166
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1167
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1168
    return-void
.end method

.method public setWfdsListenChannel(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .locals 3
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listenChn"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1145
    const-string v0, "WfdsManager"

    const-string v1, "setWfdsListenChannel method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1147
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900038

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$500(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1148
    return-void
.end method
