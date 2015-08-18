.class public Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.super Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpDisableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotEnableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;
    }
.end annotation


# static fields
.field public static final ALLOWED_ALL_DEVCIE:Ljava/lang/String; = "mhp_allowed_all_device"

.field public static final SETTINGS_MHP_COUNTRY:Ljava/lang/String; = "mhp_country"

.field public static final VZW_MOBILEHOTSPOT_ON:Ljava/lang/String; = "wifi_vzw_mobile_hotspot_on"


# instance fields
.field private final MHP_LOG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private allowedlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dnsServers:[Ljava/lang/String;

.field private isAirplaneModeOn:Z

.field private isChangedConfigure:Z

.field private isECM:Z

.field private isRecoverAfterECM:Z

.field private mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

.field private mBatteryUsageEnabler:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

.field private mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

.field private mContext:Landroid/content/Context;

.field private mDeniedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceProperies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDhcpDisableThread:Ljava/lang/Thread;

.field private mDhcpEnableThread:Ljava/lang/Thread;

.field private mDhcpRestartThread:Ljava/lang/Thread;

.field private mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

.field private mIFace:Ljava/lang/String;

.field private mIsLoging:Z

.field private mIsMobileHotspotOn:Z

.field private mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

.field private mMhpDisableThread:Ljava/lang/Thread;

.field private mMhpEnableThread:Ljava/lang/Thread;

.field private mMobileHotspotState:I

.field private mOffByAirplaneMode:Z

.field private mOnOffWlP2pService:Z

.field private mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private phone:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;-><init>()V

    .line 50
    const-string v1, "MobileHotspotService"

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->TAG:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 53
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 54
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .line 55
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    .line 56
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 61
    const-string v1, "persist.service.mhp.log"

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->MHP_LOG:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .line 66
    const/16 v1, 0xa

    iput v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    .line 77
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z

    .line 118
    new-instance v1, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;

    invoke-direct {v1, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.mobilehotspot.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_NATIVE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_LOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "com.lge.mobilehotspot.action.AP_POWER_ONOFF_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_EMC_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const-string v1, "persist.service.mhp.log"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static synthetic access$002(Lcom/lge/wifi/impl/mobilehotspot/MHPService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isECM:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncAllConectedDevices()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsLoging:Z

    return v0
.end method

.method static synthetic access$502(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsLoging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isAirPlaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOffByAirplaneMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOffByAirplaneMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    return-object p1
.end method

.method private addConnectedNotification()V
    .locals 3

    .prologue
    .line 1462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.mobilehotspot.extra.MOBILEHOTSPOT_CONNECTION_COUNT_NOTIFICATION"

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocListCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1465
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1466
    return-void
.end method

.method private addNetworkDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "properties"    # [Ljava/lang/String;

    .prologue
    .line 593
    return-void
.end method

.method private addOnOffNotification()V
    .locals 3

    .prologue
    .line 1470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_ONOFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.mobilehotspot.extra.MOBILEHOTSPOT"

    iget-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1472
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1473
    return-void
.end method

.method private getConnectedDeviceKeyList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v0, "connectedDeviceKeylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;>;"
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getAllowedAllDevcie()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1068
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    sget v6, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    invoke-virtual {v5, v7, v7, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1073
    :goto_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncAllConectedDevices()V

    .line 1075
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getList()Ljava/util/HashMap;
    invoke-static {v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1800(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1077
    .local v4, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1079
    .local v1, "device":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1081
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1070
    .end local v1    # "device":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;>;"
    :cond_2
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    sget v6, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_ALLOW:I

    invoke-virtual {v5, v7, v7, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1085
    :cond_3
    return-object v0
.end method

.method private getNetworkDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeviceProperies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 569
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 577
    :goto_0
    return-object v1

    .line 573
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->updateNetworkDeviceProperty(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNetworkIface()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1716
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MHS_NEZZIMOM] Available network interface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    return-object v0
.end method

.method private final isAirPlaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isNetworkDeviceCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeviceProperies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNetworkIFace()V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->start()V

    .line 416
    return-void
.end method

.method private syncAllConectedDevices()V
    .locals 7

    .prologue
    .line 949
    const-string v3, "MobileHotspotService"

    const-string v4, "syncAllConectedDevices "

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->clear()V
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1500(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)V

    .line 951
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocMac()[Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "items_mac":[Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocDevicename()[Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "items_dname":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 969
    :cond_0
    return-void

    .line 957
    :cond_1
    if-eqz v1, :cond_0

    .line 960
    const-string v3, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MHS_NEZZIMOM] Assoc list[mac] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v3, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MHS_NEZZIMOM] Assoc list[dname] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocListCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 965
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    aget-object v4, v2, v0

    aget-object v5, v1, v0

    const/4 v6, 0x3

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1600(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private syncMacFilter([Ljava/lang/String;I)Z
    .locals 10
    .param p1, "macList"    # [Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 973
    array-length v1, p1

    .line 975
    .local v1, "filterCnt":I
    const/4 v5, 0x0

    .line 978
    .local v5, "ret":Z
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMacFilterCount(I)Z

    move-result v5

    .line 979
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MHS_NEZZIMOM] setMacFilterCount Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :goto_0
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MHS_NEZZIMOM] Mac Filtered Device Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    if-eqz v5, :cond_0

    .line 989
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 992
    :try_start_1
    aget-object v7, p1, v2

    invoke-virtual {p0, v2, v7}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v5

    .line 993
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MHS_NEZZIMOM] setMacFilterByIndex Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : Index ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Mac addr ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 989
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 980
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 995
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "i":I
    :catch_1
    move-exception v0

    .line 996
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1001
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :cond_0
    if-eqz v5, :cond_1

    .line 1004
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMacFilterMode(I)Z

    move-result v5

    .line 1005
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MHS_NEZZIMOM] setMacFilterMode Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1011
    :cond_1
    :goto_3
    const/4 v6, 0x0

    .line 1013
    .local v6, "temp":I
    :try_start_3
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getMacFilterCount()I

    move-result v6

    .line 1014
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MHS_NEZZIMOM] MAC count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1019
    :goto_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    if-ge v3, v6, :cond_2

    .line 1022
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, "macAddr":Ljava/lang/String;
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MHS_NEZZIMOM] MAC List : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1019
    .end local v4    # "macAddr":Ljava/lang/String;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1006
    .end local v3    # "j":I
    .end local v6    # "temp":I
    :catch_2
    move-exception v0

    .line 1007
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1015
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v6    # "temp":I
    :catch_3
    move-exception v0

    .line 1016
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 1024
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "j":I
    :catch_4
    move-exception v0

    .line 1025
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 1030
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v5
.end method

.method private updateNetworkDeviceProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "properties":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0, p1, v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->addNetworkDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V

    .line 588
    :cond_0
    return-void
.end method


# virtual methods
.method public addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1146
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Add Mac Filter Info >> Mac Addr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1900(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_OFF:I

    if-ne p3, v0, :cond_0

    .line 1151
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Add New MAC filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1600(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1153
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Off, Add New Mac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1183
    :goto_0
    return v0

    .line 1157
    :cond_0
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    if-ne p3, v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncMacFilter([Ljava/lang/String;I)Z

    .line 1160
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Deny, Filter List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1161
    goto :goto_0

    .line 1164
    :cond_1
    if-nez p1, :cond_2

    .line 1167
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncMacFilter([Ljava/lang/String;I)Z

    .line 1168
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Allow, Filter List is existed list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1170
    goto :goto_0

    .line 1173
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1900(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1176
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Add New MAC filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1600(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1178
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Allow, Add New Mac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncMacFilter([Ljava/lang/String;I)Z

    move v0, v1

    .line 1181
    goto/16 :goto_0

    .line 1183
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public addMacFilterAllowList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pAddMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public addMacFilterDenyList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pAddMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearNATRule()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pNatRuleClear()V

    .line 622
    return-void
.end method

.method public clearPortFilterRule()V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->clearPortFilterRule()V

    .line 1631
    return-void
.end method

.method public clearPortForwardingrRule()V
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->clearPortForwardRule()V

    .line 1656
    return-void
.end method

.method public connectFromRemoteDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1450
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1452
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MHS_NEZZIMOM] Add connected device >> item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1600(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1455
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->addConnectedNotification()V

    .line 1457
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createSoftAPService()I
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->createSoftAP()I

    move-result v0

    return v0
.end method

.method public deAuthMac(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDeAuthMac(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroySoftAPService()I
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->destroySoftAP()I

    move-result v0

    return v0
.end method

.method public dhcpDisable(Z)Z
    .locals 1
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 890
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpDisableThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpDisableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpEnableThread:Ljava/lang/Thread;

    .line 891
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpEnableThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public dhcpEnable(Z)Z
    .locals 1
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpDisableThread:Ljava/lang/Thread;

    .line 898
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpDisableThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public dhcpRestart()Z
    .locals 1

    .prologue
    .line 823
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpRestartThread:Ljava/lang/Thread;

    .line 824
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpRestartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 825
    const/4 v0, 0x1

    return v0
.end method

.method public disable(Z)Z
    .locals 3
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 881
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpDisableThread:Ljava/lang/Thread;

    .line 882
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpDisableThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 883
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_vzw_mobile_hotspot_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 885
    return v2
.end method

.method public disableNatMasquerade()Z
    .locals 2

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1673
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const/4 v0, 0x0

    .line 1677
    :goto_0
    return v0

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDisableNatMasquerade(Ljava/lang/String;)V

    .line 1677
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disconnectDevice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "macAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1225
    if-eqz p1, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->removeAtList(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$2100(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    .line 1233
    const/4 v0, 0x1

    .line 1236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enable(Z)Z
    .locals 3
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 747
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isAirplaneModeOn:Z

    if-eqz v1, :cond_0

    .line 748
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Airplane mode is on, so return enabling"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x0

    .line 777
    :goto_0
    return v0

    .line 761
    :cond_0
    const-string v1, "MobileHotspotService"

    const-string v2, "[MHS_NEZZIMOM] Mobile Hotspot enable"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->openSoftAP()I

    .line 765
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onMobileHotspotStateChanged(I)V

    .line 767
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    if-nez v1, :cond_1

    .line 769
    iput-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    .line 772
    :cond_1
    new-instance v1, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotEnableThread;

    invoke-direct {v1, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotEnableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpEnableThread:Ljava/lang/Thread;

    .line 773
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpEnableThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 775
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_vzw_mobile_hotspot_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1611
    invoke-super {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->finalize()V

    .line 1613
    return-void
.end method

.method public get802Mode()I
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllow11B()I

    move-result v0

    return v0
.end method

.method public getAllAssocDevicename()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocDevicename()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllAssocMac()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocMac()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedAllDevcie()I
    .locals 3

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhp_allowed_all_device"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssocListCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocListCount()I

    move-result v0

    return v0
.end method

.method public getAuthentication()I
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAuthentication()I

    move-result v0

    return v0
.end method

.method public getBroadcastChannel()I
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSocialChannel()I

    move-result v0

    return v0
.end method

.method public getBroadcastSSID()I
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetHideSSID()I

    move-result v0

    return v0
.end method

.method public getDNS1Sample()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetDNS1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDNS2Sample()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetDNS2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUsageTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultCountryCode()I
    .locals 3

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhp_country"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDhcpDNS1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPDNS1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpDNS2()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPDNS2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpEndIp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPEndAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpGateway()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPGateway()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpMask()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPMask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpStartIp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPStartAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryption()I
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetEncryption()I

    move-result v0

    return v0
.end method

.method public getEndIPSample()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetEndIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetFrequency()I

    move-result v0

    return v0
.end method

.method public getGatewaySample()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetGateway()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 914
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacFilterByIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacFilterCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMacFilterCount()I

    move-result v0

    return v0
.end method

.method public getMacFilterMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMacFilterMode()I

    move-result v0

    return v0
.end method

.method public getMaxClients()I
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMaxClients()I

    move-result v0

    return v0
.end method

.method public getMobileHotspotState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 940
    iget v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 925
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetNetInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortFilteringList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1621
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortforwardingList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1625
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSIDService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoftapIsolation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSoftapIsolation()Z

    move-result v0

    return v0
.end method

.method public getStartIPSample()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetStartIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticIp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetStaticIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticSubnet()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetStaticSubnet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubnetMaskSample()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetSubnetMask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey2()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey3()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey4()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKeyIndex()I
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPIndex()I

    move-result v0

    return v0
.end method

.method public getWPAKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWPAKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()Z
    .locals 3

    .prologue
    .line 597
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Mobile Hotspot Service Init!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    .line 601
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 602
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeviceProperies:Ljava/util/HashMap;

    .line 605
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 607
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->getInstance(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .line 608
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mBatteryUsageEnabler:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method public initHSLService()I
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->openSoftAP()I

    move-result v0

    return v0
.end method

.method public initIpTable()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->initIptables()V

    .line 1618
    return-void
.end method

.method public insertDeniedList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MHS_NEZZIMOM] Current denied list(inserted) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const/4 v0, 0x1

    return v0
.end method

.method public isDhcpEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 935
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NEZZIMOM] isEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    return v0
.end method

.method public isMhsDataAvailable()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 672
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 673
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v5, :cond_0

    .line 681
    :goto_0
    return v4

    .line 676
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 677
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v1

    .line 678
    .local v1, "state":I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 679
    .local v0, "isRoaming":Z
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[antonoi]phone.getDataState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[antonoi]phone.isNetworkRoaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v3, :cond_1

    if-eq v0, v3, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    return v0
.end method

.method public listAllowedDevices()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1035
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    .line 1036
    const-string v4, "MobileHotspotService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MHS_NEZZIMOM] listAllowedDevices.getSize(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getSize()I
    invoke-static {v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1700(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getList()Ljava/util/HashMap;
    invoke-static {v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1800(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1042
    .local v3, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1044
    .local v0, "device":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1046
    const-string v5, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MHS_NEZZIMOM] listAllowedDevices: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1053
    .end local v0    # "device":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;>;"
    :cond_2
    const-string v4, "MobileHotspotService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MHS_NEZZIMOM] Allowed list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public listConnectedDevices()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v0, "connectedDeviceMaclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getConnectedDeviceKeyList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1095
    .local v1, "connectedDevicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    .line 1096
    .local v2, "device":Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1098
    .end local v2    # "device":Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public listConnectedDevicesname()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v0, "connectedDeviceNamelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getConnectedDeviceKeyList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1108
    .local v1, "connectedDevicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    .line 1109
    .local v2, "device":Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1111
    .end local v2    # "device":Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public loadDriverService()I
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getDefaultCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->loadP2PDriver(I)I

    move-result v0

    return v0
.end method

.method public mhsCdmaDataConnect()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 716
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 718
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v5, :cond_1

    .line 719
    const/4 v4, 0x0

    .line 741
    :cond_0
    :goto_0
    return v4

    .line 721
    :cond_1
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v3

    .line 722
    .local v3, "state":I
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[antonoi]phone.getDataState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v1, 0x1

    .line 726
    .local v1, "result":Z
    const/4 v2, 0x3

    .line 727
    .local v2, "retry_count":I
    :goto_1
    if-lez v2, :cond_0

    .line 728
    :try_start_0
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v1

    .line 729
    if-ne v1, v4, :cond_2

    .line 730
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Enabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MobileHotspotService"

    const-string v6, "Exception - Data Call Not Enabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Not Enabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 735
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public mhsCdmaDataDisconnect()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 686
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 688
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v5, :cond_1

    .line 689
    const/4 v4, 0x0

    .line 711
    :cond_0
    :goto_0
    return v4

    .line 691
    :cond_1
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v3

    .line 692
    .local v3, "state":I
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[antonoi]phone.getDataState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v1, 0x1

    .line 695
    .local v1, "result":Z
    const/4 v2, 0x3

    .line 696
    .local v2, "retry_count":I
    :goto_1
    if-lez v2, :cond_0

    .line 697
    :try_start_0
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v1

    .line 698
    if-ne v1, v4, :cond_2

    .line 699
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Disabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MobileHotspotService"

    const-string v6, "Exception - Data Call Not Disabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Not Disabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 704
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public mhsCdmaDataRestart()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 626
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 627
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v5, :cond_1

    .line 628
    const/4 v4, 0x0

    .line 667
    :cond_0
    :goto_0
    return v4

    .line 630
    :cond_1
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v3

    .line 631
    .local v3, "state":I
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[antonoi]phone.getDataState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v1, 0x1

    .line 634
    .local v1, "result":Z
    const/4 v2, 0x3

    .line 635
    .local v2, "retry_count":I
    :goto_1
    if-lez v2, :cond_2

    .line 636
    :try_start_0
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v1

    .line 637
    if-ne v1, v4, :cond_3

    .line 638
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Disabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 651
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 652
    const/4 v2, 0x3

    .line 653
    :goto_3
    if-lez v2, :cond_0

    .line 654
    :try_start_1
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v1

    .line 655
    if-ne v1, v4, :cond_4

    .line 656
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Enabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MobileHotspotService"

    const-string v6, "Exception - Data Call Not Enabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Not Disabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 643
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 646
    :catch_1
    move-exception v0

    .line 647
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v5, "MobileHotspotService"

    const-string v6, "Exception - Data Call Not Disabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 660
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_3
    const-string v5, "MobileHotspotService"

    const-string v6, "[antonoi]Data Call Not Enabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 661
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method public removeAllAllowedDevices()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->clear()V
    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1500(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)V

    .line 1116
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllConnectedDevices()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->clear()V
    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1500(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)V

    .line 1121
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllowedDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1210
    if-eqz p1, :cond_0

    .line 1212
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MHS_NEZZIMOM] Remove allowed device >> item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->removeAtList(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$2100(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    .line 1218
    const/4 v0, 0x1

    .line 1220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAlltheList()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2premoveAlltheList()I

    .line 1139
    const/4 v0, 0x1

    return v0
.end method

.method public removeDeniedList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1132
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MHS_NEZZIMOM] Current denied list(removed) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveDeniedList(Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x1

    return v0
.end method

.method public set802Mode(I)Z
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1242
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPKIM] set802Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetAllow11B(I)I

    .line 1244
    const/4 v0, 0x1

    return v0
.end method

.method public setAllowAll(Z)Z
    .locals 1
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method public setAuthentication(I)Z
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetAuthentication(I)I

    .line 1350
    const/4 v0, 0x1

    return v0
.end method

.method public setBatteryUsageTime(I)Z
    .locals 1
    .param p1, "time"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mBatteryUsageEnabler:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;->setUsageTime(I)V

    .line 1255
    const/4 v0, 0x1

    return v0
.end method

.method public setBroadcastChannel(I)Z
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSocialChannel(I)I

    .line 1261
    const/4 v0, 0x1

    return v0
.end method

.method public setBroadcastSSID(I)I
    .locals 1
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetHideSSID(I)I

    move-result v0

    return v0
.end method

.method public setCountryCode(I)I
    .locals 1
    .param p1, "countrycode"    # I

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setCountryCode(I)I

    move-result v0

    return v0
.end method

.method public setDNS1Sample(Ljava/lang/String;)I
    .locals 1
    .param p1, "dns1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetDNS1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDNS2Sample(Ljava/lang/String;)I
    .locals 1
    .param p1, "dns2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetDNS2(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDefaultCountryCode(I)V
    .locals 2
    .param p1, "wlan_country"    # I

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhp_country"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1817
    return-void
.end method

.method public setDhcpDNS1(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dns1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1506
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPDNS1(Ljava/lang/String;)I

    move-result v0

    .line 1507
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDhcpDNS2(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dns2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1513
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPDNS2(Ljava/lang/String;)I

    move-result v0

    .line 1514
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDhcpEndIp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ipaddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1485
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPEndAddress(Ljava/lang/String;)I

    move-result v0

    .line 1486
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDhcpGateway(Ljava/lang/String;)Z
    .locals 3
    .param p1, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1492
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPGateway(Ljava/lang/String;)I

    move-result v0

    .line 1493
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDhcpMask(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1499
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPMask(Ljava/lang/String;)I

    move-result v0

    .line 1500
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDhcpStartIp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ipaddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1478
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPStartAddress(Ljava/lang/String;)I

    move-result v0

    .line 1479
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmergencyCall(Z)V
    .locals 4
    .param p1, "_isECM"    # Z

    .prologue
    const/4 v3, 0x1

    .line 475
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isECM:Z

    .line 477
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isECM:Z

    if-eqz v1, :cond_0

    .line 479
    const-string v1, "MobileHotspotService"

    const-string v2, "[MHS_NEZZIMOM] Exit Emergency call mode)"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    if-eqz v1, :cond_1

    .line 483
    iput-boolean v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    .line 486
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    goto :goto_0
.end method

.method public setEncryption(I)Z
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetEncryption(I)I

    .line 1356
    const/4 v0, 0x1

    return v0
.end method

.method public setEndIPSample(Ljava/lang/String;)I
    .locals 1
    .param p1, "endip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetEndIP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForward()Z
    .locals 2

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1684
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const/4 v0, 0x0

    .line 1688
    :goto_0
    return v0

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setNatForward(Ljava/lang/String;)V

    .line 1688
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFrequency(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetFrequency(I)V

    .line 1828
    return-void
.end method

.method public setGatewaySample(Ljava/lang/String;)I
    .locals 1
    .param p1, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetGateway(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setIsolationEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setIsolationEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setMacFilterByIndex(ILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMacFilterByIndex(ILjava/lang/String;)I

    .line 1413
    const/4 v0, 0x1

    return v0
.end method

.method public setMacFilterCount(I)Z
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMacFilterCount(I)I

    .line 1419
    const/4 v0, 0x1

    return v0
.end method

.method public setMacFilterMode(I)Z
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMacFilterMode(I)I

    .line 1435
    const/4 v0, 0x1

    return v0
.end method

.method public setMacaddracl(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacaddracl(I)Z

    .line 1373
    const/4 v0, 0x1

    return v0
.end method

.method public setMasquerade()Z
    .locals 2

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1662
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const/4 v0, 0x0

    .line 1666
    :goto_0
    return v0

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pNatMasqurade(Ljava/lang/String;)V

    .line 1666
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMaxAssoc(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMaxAssoc(I)I

    .line 1385
    const/4 v0, 0x1

    return v0
.end method

.method public setMaxClients(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMaxClients(I)Z

    .line 1379
    const/4 v0, 0x1

    return v0
.end method

.method public setMobileHotspotState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 944
    iput p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    .line 945
    return-void
.end method

.method public setMssChange()Z
    .locals 2

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1694
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const/4 v0, 0x0

    .line 1698
    :goto_0
    return v0

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setMssSize(Ljava/lang/String;)V

    .line 1698
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSSID(Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x1

    return v0
.end method

.method public setNetInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifs"    # Ljava/lang/String;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetNetInterface(Ljava/lang/String;)V

    .line 1550
    return-void
.end method

.method public setPortFiltering(IIII)Z
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "portType"    # I
    .param p4, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1636
    const/4 v0, 0x0

    .line 1637
    .local v0, "protocol":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1638
    .local v1, "rule":Ljava/lang/String;
    if-ne v5, p3, :cond_0

    .line 1639
    const-string v0, "udp"

    .line 1645
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1646
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, v1, p4}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setPortFilterRule(Ljava/lang/String;I)V

    .line 1647
    const-string v2, "MobileHotspotService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[antonio] Port Filter Rule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    return v5

    .line 1642
    :cond_0
    const-string v0, "tcp"

    goto :goto_0
.end method

.method public setPortforwarding(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "port"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1704
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1705
    .local v0, "intport":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1707
    .local v1, "strport":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1709
    const-string v2, "MobileHotspotService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[antonio] Port Filter Rule >>  %d %s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const/4 v2, 0x1

    return v2
.end method

.method public setSSIDService(Ljava/lang/String;)I
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSSID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSoftapIsolation(Z)Z
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSoftapIsolation(Z)Z

    move-result v0

    return v0
.end method

.method public setStartIPSample(Ljava/lang/String;)I
    .locals 1
    .param p1, "startip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetStartIP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setStaticIp(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetStaticIP(Ljava/lang/String;)V

    .line 1560
    return-void
.end method

.method public setStaticSubnet(Ljava/lang/String;)V
    .locals 1
    .param p1, "netmask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetStaticSubnet(Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method public setSubnetMaskSample(Ljava/lang/String;)I
    .locals 1
    .param p1, "mask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetSubnetMask(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTxPower(I)I
    .locals 1
    .param p1, "txPower"    # I

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetTxPower(I)I

    move-result v0

    return v0
.end method

.method public setWEPKey1(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey1(Ljava/lang/String;)I

    .line 1325
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKey2(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey2(Ljava/lang/String;)I

    .line 1331
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKey3(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey3(Ljava/lang/String;)I

    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKey4(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey4(Ljava/lang/String;)I

    .line 1343
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKeyIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPIndex(I)I

    .line 1300
    const/4 v0, 0x1

    return v0
.end method

.method public setWPAKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWPAKey(Ljava/lang/String;)I

    .line 1284
    const/4 v0, 0x1

    return v0
.end method

.method public unloadDriverService()I
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->unloadP2PDriver()I

    move-result v0

    return v0
.end method

.method public updateAllowedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldMacAddr"    # Ljava/lang/String;
    .param p2, "newMacAddr"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1190
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Check exist device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1900(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1900(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1196
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MHS_NEZZIMOM] Update >> from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    const/4 v2, 0x2

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->updateList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, p1, p2, p3, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$2000(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1200
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    .line 1201
    invoke-virtual {p0, p2, v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->addMacFilterAllowList(Ljava/lang/String;I)Z

    .line 1203
    const/4 v0, 0x1

    .line 1205
    :cond_0
    return v0
.end method
